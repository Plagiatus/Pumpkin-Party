#version 150

#moj_import <light.glsl>
#moj_import <fog.glsl>

in vec3 Position;
in vec4 Color;
in vec2 UV0;
in ivec2 UV2;
in vec3 Normal;

uniform sampler2D Sampler0;
uniform sampler2D Sampler2;

uniform mat4 ModelViewMat;
uniform mat4 ProjMat;
uniform vec3 ChunkOffset;
uniform int FogShape;
uniform float GameTime;

out float vertexDistance;
out vec4 vertexColor;
out vec4 lightColor;
out vec2 texCoord;
out vec2 texCoord2;
out vec3 Pos;
out float transition;

flat out int isCustom;
flat out int noshadow;

//objmc
//https://github.com/Godlander/objmc

#define PI 3.1415926535897932

ivec4 getmeta(ivec2 topleft, int offset) {
    return ivec4(texelFetch(Sampler0, topleft + ivec2(offset,0), 0) * 255);
}
vec3 getpos(ivec2 topleft, int w, int h, int index) {
    int i = index*3;
    vec4 x = texelFetch(Sampler0, topleft + ivec2((i  )%w,h+((i  )/w)), 0);
    vec4 y = texelFetch(Sampler0, topleft + ivec2((i+1)%w,h+((i+1)/w)), 0);
    vec4 z = texelFetch(Sampler0, topleft + ivec2((i+2)%w,h+((i+2)/w)), 0);
    return vec3(
        (x.r*256)+(x.g)+(x.b/256),
        (y.r*256)+(y.g)+(y.b/256),
        (z.r*256)+(z.g)+(z.b/256)
    )*(255./256.) - vec3(128);
}
vec2 getuv(ivec2 topleft, int w, int h, int index) {
    int i = index*2;
    vec4 x = texelFetch(Sampler0, topleft + ivec2((i  )%w,h+((i  )/w)), 0);
    vec4 y = texelFetch(Sampler0, topleft + ivec2((i+1)%w,h+((i+1)/w)), 0);
    return vec2(
        ((x.g*65280)+(x.b*255))/65535,
        ((y.g*65280)+(y.b*255))/65535
    );
}
ivec2 getvert(ivec2 topleft, int w, int h, int index) {
    int i = index*2;
    ivec4 a = ivec4(texelFetch(Sampler0, topleft + ivec2((i  )%w,h+((i  )/w)), 0)*255);
    ivec4 b = ivec4(texelFetch(Sampler0, topleft + ivec2((i+1)%w,h+((i+1)/w)), 0)*255);
    return ivec2(
        ((a.r*65536)+(a.g*256)+a.b),
        ((b.r*65536)+(b.g*256)+b.b)
    );
}

int getb(int i, int b) {
    return (i>>b)&1;
}
int geta(int i, int b) {
    return getb(i,b)<<7;
}

//3d rotation matrix from Barf Creations
mat3 rotate(vec3 angles) {
    float sx = sin(angles.x);
    float cx = cos(angles.x);
    float sy = sin(-angles.y);
    float cy = cos(-angles.y);
    float sz = sin(-angles.z);
    float cz = cos(-angles.z);
    return mat3(cy*cz,            cy*sz,           -sy,
                sx*sy*cz - cx*sz, sx*sy*sz + cx*cz, sx*cy,
                cx*sy*cz + sx*sz, cx*sy*sz - sx*cz, cx*cy);
}

//gui item model detection from Onnowhere
bool isgui(mat4 ProjMat) {
    return ProjMat[3][2] == -2.0;
}
//first person hand item model detection from esben
bool ishand(float FogStart) {
    return FogStart*0.000001 > 1;
}

//hue to rgb
vec3 hrgb(float h) {
    vec3 K = vec3(1.0, 2.0 / 3.0, 1.0 / 3.0);
    vec3 p = abs(fract(K.xyz + h) * 6.0 - 3.0);
    return clamp(p - K.xxx, 0.0, 1.0);
}

//4 point bezier formula from Dominexis
vec3 bezb(vec3 a, vec3 b, vec3 c, vec3 d, float t) {
    float t2 = t * t;
    float t3 = t2 * t;
    return (d-3*c+3*b-a)*t3 + (3*c-6*b+3*a)*t2 + (3*b-3*a)*t + a;
}
vec3 bezier(vec3 a, vec3 b, vec3 c, vec3 d, float t) {
    return bezb(b,b+(c-a)/6,c-(d-b)/6,c,t);
}

void main() {
    //default
    Pos = Position + ChunkOffset;
    texCoord = UV0;
    vertexColor = Color;
    lightColor = minecraft_sample_lightmap(Sampler2, UV2);
    vec3 normal = (ProjMat * ModelViewMat * vec4(Normal, 0.0)).rgb;

    //objmc
    #define BLOCK
//objmc
//https://github.com/Godlander/objmc

isCustom = 0;
int corner = gl_VertexID % 4;
ivec2 atlasSize = textureSize(Sampler0, 0);
vec2 onepixel = 1./atlasSize;
ivec2 uv = ivec2((UV0 * atlasSize));
vec3 posoffset = vec3(0);
vec3 rotation = vec3(0);
//read uv offset
ivec4 metauvoffset = ivec4(texelFetch(Sampler0, uv, 0) * 255);
ivec2 uvoffset = ivec2(metauvoffset.r*256 + metauvoffset.g,
                       metauvoffset.b+1); //no alpha due to optifine, max number of faces greatly limited (probably still a couple million more than needed)
//find and read topleft pixel
ivec2 topleft = uv - uvoffset;
//if topleft marker is correct
if (ivec4(texelFetch(Sampler0, topleft, 0)*255) == ivec4(12,34,56,78)) {
    isCustom = 1;
    //grab meta
    ivec4 meta = getmeta(topleft, 1);
    vec2 autorotate = vec2(getb(meta.r, 6), getb(meta.r, 5));
    noshadow = getb(meta.r, 7);
    //size
    ivec4 metasize = getmeta(topleft, 2);
    ivec2 size = ivec2(metasize.r*256 + metasize.g,
                       metasize.b*256 + metasize.a-128+geta(meta.a,6));
    //nvertices
    ivec4 metanvertices = getmeta(topleft, 3);
    int nvertices = metanvertices.r*16777216 + metanvertices.g*65536 + metanvertices.b*256 + metanvertices.a-128+geta(meta.a,5);
    //frames
    ivec4 metaanim = getmeta(topleft, 4);
    int nframes = clamp(metaanim.r, 1,255);
    int ntextures = clamp(metaanim.g, 1,255);
    float duration = float(metaanim.b + 1);
    bool autoplay = bool(getb(metaanim.a, 6));
    int easing = metaanim.a & 7;
    //data heights
    ivec4 metaheight = getmeta(topleft, 5);
    int vph = metaheight.r*256 + metaheight.g;
    int vth = metaheight.b*256 + metaheight.a-128+geta(meta.a,4);
    //time in ticks
    float time = GameTime * 24000;
    int tcolor = 0;
//colorbehavior
#ifdef ENTITY
    overlayColor = vec4(1);
    int colorbehavior = meta.b;
    if (colorbehavior == 243) { //animation frames 0-8388607
        tcolor = (int(Color.r*255)*65536)%32768 + int(Color.g*255)*256 + int(Color.b*255);
        //interpolation disabled past 8388608, suso's idea to define starting tick with color
        autoplay = (Color.r <= 0.5);
    } else {
        //bits from colorbehavior
        vec3 accuracy = vec3(255./256.);
        switch ((colorbehavior/64)%4) { //first byte of color
            case 0: rotation.x += Color.r*255; accuracy.r *= 256; break;
            case 1: rotation.y += Color.r*255; accuracy.g *= 256; break;
            case 2: rotation.z += Color.r*255; accuracy.b *= 256; break;
            case 3: tcolor = tcolor * 256 + int(Color.r*255); break;
        }
        switch ((colorbehavior/16)%4) { //second byte of color
            case 0: rotation.x += Color.g*255; accuracy.r *= 256; break;
            case 1: rotation.y += Color.g*255; accuracy.g *= 256; break;
            case 2: rotation.z += Color.g*255; accuracy.b *= 256; break;
            case 3: tcolor = tcolor * 256 + int(Color.g*255); break;
        }
        switch (colorbehavior%16) { //third byte of color
            case 0: rotation.x += Color.b*255; accuracy.r *= 256; break;
            case 1: rotation.y += Color.b*255; accuracy.g *= 256; break;
            case 2: rotation.z += Color.b*255; accuracy.b *= 256; break;
            case 3: tcolor = tcolor * 256 + int(Color.b*255); break;
            case 4: if (Color.b > 0) overlayColor = vec4(hrgb(Color.b),1); break;
        }
        rotation = rotation/accuracy * 2*PI;
    }
#endif
    time = autoplay ? time + (nframes*duration) - mod(tcolor, nframes*duration) : tcolor;
    int frame = int(time/duration) % nframes;
    //relative vertex id from unique face uv
    int id = (((uvoffset.y-1) * size.x) + uvoffset.x) * 4 + corner;
    id += frame * nvertices;
    //calculate height offsets
    int headerheight = 1 + int(ceil(nvertices*0.25/size.x));
    int height = headerheight + (size.y);
    //read data
    ivec2 index = getvert(topleft, size.x, height+vph+vth, id);
    posoffset = getpos(topleft, size.x, height, index.x);
    texCoord = getuv(topleft, size.x, height+vph, index.y) * size;
    if (nframes > 1 && easing > 0) {
        int nids = (nframes * nvertices);
        //next frame
        id = (id+nvertices) % nids;
        index = getvert(topleft, size.x, height+vph+vth, id);
        vec3 posoffset2 = getpos(topleft, size.x, height, index.x);
        //interpolate
        transition = fract(time/duration);
        switch (easing) { //easing
            case 1: //linear
                posoffset = mix(posoffset, posoffset2, transition);
                break;
            case 2: //in-out cubic
                transition = transition < 0.5 ? 4 * transition * transition * transition : 1 - pow(-2 * transition + 2, 3) * 0.5;
                posoffset = mix(posoffset, posoffset2, transition);
                break;
            case 3: //4-point bezier
                //third point
                id = (id+nvertices) % nids;
                index = getvert(topleft, size.x, height+vph+vth, id);
                vec3 posoffset3 = getpos(topleft, size.x, height, index.x);
                //fourth point
                id = (id+nvertices) % nids;
                index = getvert(topleft, size.x, height+vph+vth, id);
                vec3 posoffset4 = getpos(topleft, size.x, height, index.x);
                //bezier
                posoffset = bezier(posoffset, posoffset2, posoffset3, posoffset4, transition);
                break;
        }
    }
//custom entity rotation
#ifdef ENTITY
    isGUI = int(isgui(ProjMat));
    isHand = int(ishand(FogStart));
    if (any(greaterThan(autorotate,vec2(0))) && isGUI == 0) {
        //normal estimated rotation calculation from The Der Discohund
        vec3 local = IViewRotMat * Normal;
        float yaw = -atan(local.x, local.z);
        float pitch = -atan(local.y, length(local.xz));
        posoffset = rotate(vec3(vec2(pitch,yaw)*autorotate,0) + rotation) * posoffset * IViewRotMat;
    }
    //pure color rotation
    else if (isHand == 0) {
        posoffset = rotate(rotation) * posoffset * IViewRotMat;
    }
#endif
    //final pos and uv
    Pos += posoffset;
    texCoord = (vec2(topleft.x, topleft.y+headerheight) + texCoord)/atlasSize
                //make sure that faces with same uv beginning/ending renders
                + vec2(onepixel.x * 0.0001 * corner, onepixel.y * 0.0001 * ((corner + 1) % 4));
}
//debug
//else {
//    posoffset = vec3(gl_VertexID % 4 - 2, gl_VertexID % 4 / 2 * 2, -(gl_VertexID % 4) + 2 * 2);
//    Pos += posoffset;
//    vertexColor = vec4(1.0,0.0,0.0,1.0);
//}

    gl_Position = ProjMat * ModelViewMat * vec4(Pos, 1.0);
    vertexDistance = fog_distance(ModelViewMat, Pos, FogShape);
}