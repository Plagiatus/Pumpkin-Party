#version 150

#moj_import <light.glsl>
#moj_import <fog.glsl>

uniform sampler2D Sampler0;

uniform vec4 ColorModulator;
uniform float FogStart;
uniform float FogEnd;
uniform vec4 FogColor;

uniform vec3 Light0_Direction;
uniform vec3 Light1_Direction;

in float vertexDistance;
in vec4 vertexColor;
in vec4 lightColor;
in vec4 overlayColor;
in vec2 texCoord;
in vec2 texCoord2;
in vec3 Pos;
in float transition;

flat in int isCustom;
flat in int isGUI;
flat in int isHand;
flat in int noshadow;

out vec4 fragColor;

void main() {
    vec4 color = texture(Sampler0, texCoord);

    //custom lighting
    #define ENTITY
//objmc
//https://github.com/Godlander/objmc

//default lighting
if (isCustom == 0) {color *= vertexColor;}
//custom lighting
else if (noshadow == 0) {
    //normal from position derivatives
    vec3 normal = normalize(cross(dFdx(Pos), dFdy(Pos)));

    //block lighting
    #ifdef BLOCK
    color *= vec4(vec3(clamp(dot(normal, vec3(0.2,1,0)) * 0.5 + 0.6, 0.1,1)), 1.0);
    #endif

    //entity lighting
    #ifdef ENTITY
    //flip normal for gui
    if (isGUI == 1) normal.xz = -normal.xz;
    color *= minecraft_mix_light(Light0_Direction, Light1_Direction, normal, overlayColor);
    #endif
}
color *= lightColor * ColorModulator;

    if (color.a < 0.01) discard;
    fragColor = linear_fog(color, vertexDistance, FogStart, FogEnd, FogColor);
}