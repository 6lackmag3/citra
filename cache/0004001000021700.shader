// shader: 8B31, 4940142D60DA9543

struct pica_uniforms {
    bool b[16];
    uvec4 i[4];
    vec4 f[96];
};

bool exec_shader();

#define uniforms vs_uniforms
layout (std140) uniform vs_config {
    pica_uniforms uniforms;
};

layout(location = 0) in vec4 vs_in_reg0;

 out vec4 vs_out_attr0;
 out vec4 vs_out_attr1;
 out vec4 vs_out_attr2;
 out vec4 vs_out_attr3;
 out vec4 vs_out_attr4;

void main() {
    vs_out_attr0 = vec4(0.0, 0.0, 0.0, 1.0);
    vs_out_attr1 = vec4(0.0, 0.0, 0.0, 1.0);
    vs_out_attr2 = vec4(0.0, 0.0, 0.0, 1.0);
    vs_out_attr3 = vec4(0.0, 0.0, 0.0, 1.0);
    vs_out_attr4 = vec4(0.0, 0.0, 0.0, 1.0);

    exec_shader();
}


#define mul_s(x, y) (x * y)
#define fma_s(x, y, z) fma(x, y, z)
#define rcp_s(x) (1.0 / x)
#define rsq_s(x) inversesqrt(x)
#define dot_s(x, y) dot(x, y)
#define dot_3(x, y) dot(x, y)

bvec2 conditional_code = bvec2(false);
ivec3 address_registers = ivec3(0);
vec4 reg_tmp0 = vec4(0.0, 0.0, 0.0, 1.0);
vec4 reg_tmp1 = vec4(0.0, 0.0, 0.0, 1.0);
vec4 reg_tmp2 = vec4(0.0, 0.0, 0.0, 1.0);
vec4 reg_tmp3 = vec4(0.0, 0.0, 0.0, 1.0);
vec4 reg_tmp4 = vec4(0.0, 0.0, 0.0, 1.0);
vec4 reg_tmp5 = vec4(0.0, 0.0, 0.0, 1.0);
vec4 reg_tmp6 = vec4(0.0, 0.0, 0.0, 1.0);
vec4 reg_tmp7 = vec4(0.0, 0.0, 0.0, 1.0);
vec4 reg_tmp8 = vec4(0.0, 0.0, 0.0, 1.0);
vec4 reg_tmp9 = vec4(0.0, 0.0, 0.0, 1.0);
vec4 reg_tmp10 = vec4(0.0, 0.0, 0.0, 1.0);
vec4 reg_tmp11 = vec4(0.0, 0.0, 0.0, 1.0);
vec4 reg_tmp12 = vec4(0.0, 0.0, 0.0, 1.0);
vec4 reg_tmp13 = vec4(0.0, 0.0, 0.0, 1.0);
vec4 reg_tmp14 = vec4(0.0, 0.0, 0.0, 1.0);
vec4 reg_tmp15 = vec4(0.0, 0.0, 0.0, 1.0);

bool sub_0_4096();
bool sub_22_27();
bool sub_33_35();
bool sub_35_46();
bool sub_38_39();
bool sub_40_41();
bool sub_42_43();
bool sub_44_45();
bool sub_48_51();
bool sub_52_55();
bool sub_56_59();
bool sub_60_63();
bool sub_65_99();
bool sub_67_86();
bool sub_70_73();
bool sub_74_77();
bool sub_78_81();
bool sub_82_85();
bool sub_88_98();
bool sub_90_93();
bool sub_94_97();

bool exec_shader() {
    sub_0_4096();
    return true;
}

bool sub_0_4096() {
    // 0: mova
    address_registers.x = (ivec2(vs_in_reg0.xy)).x;
    // 1: mov
    reg_tmp0 = uniforms.f[6 + address_registers.x].wzyx;
    // 2: mov
    reg_tmp1.xy = (vs_in_reg0.zwzw).xy;
    // 3: mov
    reg_tmp1.zw = (uniforms.f[5].xyxy).zw;
    // 4: mova
    address_registers.xy = ivec2(reg_tmp0.xy);
    // 5: mov
    reg_tmp2.xw = (uniforms.f[64 + address_registers.y].wwyy).xw;
    // 6: mov
    reg_tmp2.yz = (uniforms.f[5].xxxx).yz;
    // 7: dp4
    reg_tmp4.x = dot_s(reg_tmp1, reg_tmp2);
    // 8: mov
    reg_tmp2.yw = (uniforms.f[64 + address_registers.y].zzxx).yw;
    // 9: mov
    reg_tmp2.xz = (uniforms.f[5].xxxx).xz;
    // 10: dp4
    reg_tmp4.y = dot_s(reg_tmp1, reg_tmp2);
    // 11: mov
    reg_tmp4.zw = (reg_tmp1.zwzw).zw;
    // 12: dp4
    reg_tmp3.x = dot_s(uniforms.f[32 + address_registers.x].wzyx, reg_tmp4);
    // 13: dp4
    reg_tmp3.y = dot_s(uniforms.f[33 + address_registers.x].wzyx, reg_tmp4);
    // 14: dp4
    reg_tmp3.z = dot_s(uniforms.f[34 + address_registers.x].wzyx, reg_tmp4);
    // 15: mov
    reg_tmp3.w = (reg_tmp1.wwww).w;
    // 16: mov
    reg_tmp4.z = (uniforms.f[34 + address_registers.x].xxxx).z;
    // 17: max
    reg_tmp4.z = (abs(reg_tmp4.zzzz)).z;
    // 18: add
    reg_tmp4.z = (uniforms.f[4].yyyy + reg_tmp4.zzzz).z;
    // 19: mov
    reg_tmp4.x = (uniforms.f[4].wwww).x;
    // 20: cmp
    conditional_code = notEqual(uniforms.f[5].xx, reg_tmp4.xz);
    // 21: ifc
    if (all(conditional_code)) {
        sub_22_27();
    }
    // 27: dp4
    vs_out_attr0.x = dot_s(uniforms.f[0].wzyx, reg_tmp3);
    // 28: dp4
    vs_out_attr0.y = dot_s(uniforms.f[1].wzyx, reg_tmp3);
    // 29: dp4
    vs_out_attr0.z = dot_s(uniforms.f[2].wzyx, reg_tmp3);
    // 30: dp4
    vs_out_attr0.w = dot_s(uniforms.f[3].wzyx, reg_tmp3);
    // 31: cmp
    conditional_code = greaterThanEqual(uniforms.f[5].yy, reg_tmp0.ww);
    // 32: ifc
    if (all(conditional_code)) {
        sub_33_35();
    } else {
        sub_35_46();
    }
    // 46: cmp
    conditional_code = notEqual(uniforms.f[5].xx, reg_tmp1.xy);
    // 47: ifc
    if (all(not(conditional_code))) {
        sub_48_51();
    }
    // 51: ifc
    if (all(bvec2(conditional_code.x, !conditional_code.y))) {
        sub_52_55();
    }
    // 55: ifc
    if (all(bvec2(!conditional_code.x, conditional_code.y))) {
        sub_56_59();
    }
    // 59: ifc
    if (all(conditional_code)) {
        sub_60_63();
    }
    // 63: mov
    reg_tmp8 = uniforms.f[5].xxxx;
    // 64: loop
    address_registers.z = int(uniforms.i[0].y);
    for (uint loop64 = 0u; loop64 <= uniforms.i[0].x; address_registers.z += int(uniforms.i[0].z), ++loop64) {
        sub_65_99();
    }
    // 99: mov
    vs_out_attr2 = reg_tmp5;
    // 100: mov
    vs_out_attr3 = reg_tmp6;
    // 101: mov
    vs_out_attr4 = reg_tmp7;
    // 102: end
    return true;
}
bool sub_22_27() {
    // 22: mov
    reg_tmp4.x = (uniforms.f[4].wwww).x;
    // 23: add
    reg_tmp4.y = (-uniforms.f[4].zzzz + reg_tmp4.zzzz).y;
    // 24: rcp
    reg_tmp4.z = rcp_s(reg_tmp4.z);
    // 25: mul
    reg_tmp4.z = (mul_s(reg_tmp4.yyyy, reg_tmp4.zzzz)).z;
    // 26: mad
    reg_tmp3.x = (fma_s(reg_tmp4.xxxx, reg_tmp4.zzzz, reg_tmp3.xxxx)).x;
    return false;
}
bool sub_33_35() {
    // 33: mov
    vs_out_attr1.xyz = (uniforms.f[5].yyyy).xyz;
    // 34: mov
    vs_out_attr1.w = (reg_tmp0.wwww).w;
    return false;
}
bool sub_35_46() {
    // 35: mova
    address_registers.y = (ivec2(reg_tmp0.ww)).y;
    // 36: cmp
    conditional_code = notEqual(uniforms.f[5].xx, reg_tmp1.xy);
    // 37: ifc
    if (all(not(conditional_code))) {
        sub_38_39();
    }
    // 39: ifc
    if (all(bvec2(conditional_code.x, !conditional_code.y))) {
        sub_40_41();
    }
    // 41: ifc
    if (all(bvec2(!conditional_code.x, conditional_code.y))) {
        sub_42_43();
    }
    // 43: ifc
    if (all(conditional_code)) {
        sub_44_45();
    }
    // 45: nop
    return false;
}
bool sub_38_39() {
    // 38: mov
    vs_out_attr1 = uniforms.f[32 + address_registers.y].wzyx;
    return false;
}
bool sub_40_41() {
    // 40: mov
    vs_out_attr1 = uniforms.f[33 + address_registers.y].wzyx;
    return false;
}
bool sub_42_43() {
    // 42: mov
    vs_out_attr1 = uniforms.f[34 + address_registers.y].wzyx;
    return false;
}
bool sub_44_45() {
    // 44: mov
    vs_out_attr1 = uniforms.f[35 + address_registers.y].wzyx;
    return false;
}
bool sub_48_51() {
    // 48: mov
    reg_tmp5 = uniforms.f[5].xyyy;
    // 49: mov
    reg_tmp6 = uniforms.f[5].xyyy;
    // 50: mov
    reg_tmp7 = uniforms.f[5].xyyy;
    return false;
}
bool sub_52_55() {
    // 52: mov
    reg_tmp5 = uniforms.f[5].yyyy;
    // 53: mov
    reg_tmp6 = uniforms.f[5].yyyy;
    // 54: mov
    reg_tmp7 = uniforms.f[5].yyyy;
    return false;
}
bool sub_56_59() {
    // 56: mov
    reg_tmp5 = uniforms.f[5].xxyy;
    // 57: mov
    reg_tmp6 = uniforms.f[5].xxyy;
    // 58: mov
    reg_tmp7 = uniforms.f[5].xxyy;
    return false;
}
bool sub_60_63() {
    // 60: mov
    reg_tmp5 = uniforms.f[5].yxyy;
    // 61: mov
    reg_tmp6 = uniforms.f[5].yxyy;
    // 62: mov
    reg_tmp7 = uniforms.f[5].yxyy;
    return false;
}
bool sub_65_99() {
    // 65: cmp
    conditional_code = equal(uniforms.f[5].yy, reg_tmp8.xy);
    // 66: ifc
    if (all(conditional_code)) {
        sub_67_86();
    }
    // 86: cmp
    conditional_code = lessThan(uniforms.f[5].ww, reg_tmp8.xy);
    // 87: ifc
    if (all(conditional_code)) {
        sub_88_98();
    }
    // 98: add
    reg_tmp8 = uniforms.f[5].yyyy + reg_tmp8;
    return false;
}
bool sub_67_86() {
    // 67: mova
    address_registers.y = (ivec2(reg_tmp0.zz)).y;
    // 68: cmp
    conditional_code = notEqual(uniforms.f[5].xx, reg_tmp1.xy);
    // 69: ifc
    if (all(not(conditional_code))) {
        sub_70_73();
    }
    // 73: ifc
    if (all(bvec2(conditional_code.x, !conditional_code.y))) {
        sub_74_77();
    }
    // 77: ifc
    if (all(bvec2(!conditional_code.x, conditional_code.y))) {
        sub_78_81();
    }
    // 81: ifc
    if (all(conditional_code)) {
        sub_82_85();
    }
    // 85: nop
    return false;
}
bool sub_70_73() {
    // 70: mov
    reg_tmp5.xy = (uniforms.f[64 + address_registers.y].wzzz).xy;
    // 71: mov
    reg_tmp6.xy = (uniforms.f[65 + address_registers.y].wzzz).xy;
    // 72: mov
    reg_tmp7.xy = (uniforms.f[66 + address_registers.y].wzzz).xy;
    return false;
}
bool sub_74_77() {
    // 74: mov
    reg_tmp5.xy = (uniforms.f[64 + address_registers.y].yzzz).xy;
    // 75: mov
    reg_tmp6.xy = (uniforms.f[65 + address_registers.y].yzzz).xy;
    // 76: mov
    reg_tmp7.xy = (uniforms.f[66 + address_registers.y].yzzz).xy;
    return false;
}
bool sub_78_81() {
    // 78: mov
    reg_tmp5.xy = (uniforms.f[64 + address_registers.y].wxxx).xy;
    // 79: mov
    reg_tmp6.xy = (uniforms.f[65 + address_registers.y].wxxx).xy;
    // 80: mov
    reg_tmp7.xy = (uniforms.f[66 + address_registers.y].wxxx).xy;
    return false;
}
bool sub_82_85() {
    // 82: mov
    reg_tmp5.xy = (uniforms.f[64 + address_registers.y].yxxx).xy;
    // 83: mov
    reg_tmp6.xy = (uniforms.f[65 + address_registers.y].yxxx).xy;
    // 84: mov
    reg_tmp7.xy = (uniforms.f[66 + address_registers.y].yxxx).xy;
    return false;
}
bool sub_88_98() {
    // 88: cmp
    conditional_code = notEqual(uniforms.f[5].xx, reg_tmp1.xy);
    // 89: ifc
    if (all(bvec2(conditional_code.x, !conditional_code.y))) {
        sub_90_93();
    }
    // 93: ifc
    if (all(bvec2(!conditional_code.x, conditional_code.y))) {
        sub_94_97();
    }
    // 97: nop
    return false;
}
bool sub_90_93() {
    // 90: mov
    reg_tmp5.xy = (uniforms.f[67 + address_registers.y].yxxx).xy;
    // 91: mov
    reg_tmp6.xy = (uniforms.f[68 + address_registers.y].yxxx).xy;
    // 92: mov
    reg_tmp7.xy = (uniforms.f[69 + address_registers.y].yxxx).xy;
    return false;
}
bool sub_94_97() {
    // 94: mov
    reg_tmp5.xy = (uniforms.f[67 + address_registers.y].wzzz).xy;
    // 95: mov
    reg_tmp6.xy = (uniforms.f[68 + address_registers.y].wzzz).xy;
    // 96: mov
    reg_tmp7.xy = (uniforms.f[69 + address_registers.y].wzzz).xy;
    return false;
}
// reference: F2DBBDF0B2B33B49, 4940142D60DA9543
// shader: 8DD9, 5D764F9A6220D694

layout(triangles) in;
layout(triangle_strip, max_vertices = 3) out;

out vec4 primary_color;
out vec2 texcoord0;
out vec2 texcoord1;
out vec2 texcoord2;
out float texcoord0_w;
out vec4 normquat;
out vec3 view;

#define NUM_TEV_STAGES 6
#define NUM_LIGHTS 8
#define NUM_LIGHTING_SAMPLERS 24

struct LightSrc {
    vec3 specular_0;
    vec3 specular_1;
    vec3 diffuse;
    vec3 ambient;
    vec3 position;
    vec3 spot_direction;
    float dist_atten_bias;
    float dist_atten_scale;
};

layout (std140) uniform shader_data {
    int alphatest_ref;
    float depth_scale;
    float depth_offset;
    float shadow_bias_constant;
    float shadow_bias_linear;
    int scissor_x1;
    int scissor_y1;
    int scissor_x2;
    int scissor_y2;
    int fog_lut_offset;
    int proctex_noise_lut_offset;
    int proctex_color_map_offset;
    int proctex_alpha_map_offset;
    int proctex_lut_offset;
    int proctex_diff_lut_offset;
    float proctex_bias;
    vec3 fog_color;
    vec2 proctex_noise_f;
    vec2 proctex_noise_a;
    vec2 proctex_noise_p;
    vec4 const_color[NUM_TEV_STAGES];
    vec4 tev_combiner_buffer_color;
    vec4 clip_coef;
};

layout (std140) uniform shader_light_data {
    ivec4 lighting_lut_offset[NUM_LIGHTING_SAMPLERS / 4];
    vec3 lighting_global_ambient;
    LightSrc light_src[NUM_LIGHTS];
    float lut_scale_d0;
    float lut_scale_d1;
    float lut_scale_sp;
    float lut_scale_fr;
    float lut_scale_rb;
    float lut_scale_rg;
    float lut_scale_rr;
    int shadow_texture_bias;
};

 in vec4 vs_out_attr0[];
 in vec4 vs_out_attr1[];
 in vec4 vs_out_attr2[];
 in vec4 vs_out_attr3[];
 in vec4 vs_out_attr4[];

struct Vertex {
    vec4 attributes[5];
};

vec4 GetVertexQuaternion(Vertex vtx) {
    return vec4(0.0, 0.0, 0.0, 0.0);
}

void EmitVtx(Vertex vtx, bool quats_opposite) {
    vec4 vtx_pos = vec4(vtx.attributes[0].x, vtx.attributes[0].y, vtx.attributes[0].z, vtx.attributes[0].w);
    gl_Position = vtx_pos;
#if !defined(CITRA_GLES) || defined(GL_EXT_clip_cull_distance)
    gl_ClipDistance[0] = -vtx_pos.z;
    gl_ClipDistance[1] = dot(clip_coef, vtx_pos);
#endif // !defined(CITRA_GLES) || defined(GL_EXT_clip_cull_distance)

    vec4 vtx_quat = GetVertexQuaternion(vtx);
    normquat = mix(vtx_quat, -vtx_quat, bvec4(quats_opposite));

    vec4 vtx_color = vec4(vtx.attributes[1].x, vtx.attributes[1].y, vtx.attributes[1].z, vtx.attributes[1].w);
    primary_color = min(abs(vtx_color), vec4(1.0));

    texcoord0 = vec2(vtx.attributes[2].x, vtx.attributes[2].y);
    texcoord1 = vec2(vtx.attributes[3].x, vtx.attributes[3].y);

    texcoord0_w = 0.0;
    view = vec3(0.0, 0.0, 0.0);

    texcoord2 = vec2(vtx.attributes[4].x, vtx.attributes[4].y);

    EmitVertex();
}

bool AreQuaternionsOpposite(vec4 qa, vec4 qb) {
    return (dot(qa, qb) < 0.0);
}

void EmitPrim(Vertex vtx0, Vertex vtx1, Vertex vtx2) {
    EmitVtx(vtx0, false);
    EmitVtx(vtx1, AreQuaternionsOpposite(GetVertexQuaternion(vtx0), GetVertexQuaternion(vtx1)));
    EmitVtx(vtx2, AreQuaternionsOpposite(GetVertexQuaternion(vtx0), GetVertexQuaternion(vtx2)));
    EndPrimitive();
}

void main() {
    Vertex prim_buffer[3];
    prim_buffer[0].attributes = vec4[5](vs_out_attr0[0], vs_out_attr1[0], vs_out_attr2[0], vs_out_attr3[0], vs_out_attr4[0]);
    prim_buffer[1].attributes = vec4[5](vs_out_attr0[1], vs_out_attr1[1], vs_out_attr2[1], vs_out_attr3[1], vs_out_attr4[1]);
    prim_buffer[2].attributes = vec4[5](vs_out_attr0[2], vs_out_attr1[2], vs_out_attr2[2], vs_out_attr3[2], vs_out_attr4[2]);
    EmitPrim(prim_buffer[0], prim_buffer[1], prim_buffer[2]);
}
// reference: 5DAD5699F59B3586, 5D764F9A6220D694
// shader: 8B30, AB7B4CE05CF997D8

precision highp int;
precision highp float;
precision highp samplerBuffer;
precision highp usampler2D;
precision highp uimage2D;
in vec4 primary_color;
in vec2 texcoord0;
in vec2 texcoord1;
in vec2 texcoord2;
in float texcoord0_w;
in vec4 normquat;
in vec3 view;

#ifndef CITRA_GLES
in vec4 gl_FragCoord;
#endif // CITRA_GLES
out vec4 color;

uniform sampler2D tex0;
uniform sampler2D tex1;
uniform sampler2D tex2;
uniform samplerCube tex_cube;
uniform samplerBuffer texture_buffer_lut_lf;
uniform samplerBuffer texture_buffer_lut_rg;
uniform samplerBuffer texture_buffer_lut_rgba;

#define NUM_TEV_STAGES 6
#define NUM_LIGHTS 8
#define NUM_LIGHTING_SAMPLERS 24

struct LightSrc {
    vec3 specular_0;
    vec3 specular_1;
    vec3 diffuse;
    vec3 ambient;
    vec3 position;
    vec3 spot_direction;
    float dist_atten_bias;
    float dist_atten_scale;
};

layout (std140) uniform shader_data {
    int alphatest_ref;
    float depth_scale;
    float depth_offset;
    float shadow_bias_constant;
    float shadow_bias_linear;
    int scissor_x1;
    int scissor_y1;
    int scissor_x2;
    int scissor_y2;
    int fog_lut_offset;
    int proctex_noise_lut_offset;
    int proctex_color_map_offset;
    int proctex_alpha_map_offset;
    int proctex_lut_offset;
    int proctex_diff_lut_offset;
    float proctex_bias;
    vec3 fog_color;
    vec2 proctex_noise_f;
    vec2 proctex_noise_a;
    vec2 proctex_noise_p;
    vec4 const_color[NUM_TEV_STAGES];
    vec4 tev_combiner_buffer_color;
    vec4 clip_coef;
};

layout (std140) uniform shader_light_data {
    ivec4 lighting_lut_offset[NUM_LIGHTING_SAMPLERS / 4];
    vec3 lighting_global_ambient;
    LightSrc light_src[NUM_LIGHTS];
    float lut_scale_d0;
    float lut_scale_d1;
    float lut_scale_sp;
    float lut_scale_fr;
    float lut_scale_rb;
    float lut_scale_rg;
    float lut_scale_rr;
    int shadow_texture_bias;
};

// Rotate the vector v by the quaternion q
vec3 quaternion_rotate(vec4 q, vec3 v) {
    return v + 2.0 * cross(q.xyz, cross(q.xyz, v) + q.w * v);
}

float LookupLightingLUT(int lut_index, int index, float delta) {
    vec2 entry = texelFetch(texture_buffer_lut_lf, lighting_lut_offset[lut_index >> 2][lut_index & 3] + index).rg;
    return entry.r + entry.g * delta;
}

float LookupLightingLUTUnsigned(int lut_index, float pos) {
    int index = clamp(int(pos * 256.0), 0, 255);
    float delta = pos * 256.0 - float(index);
    return LookupLightingLUT(lut_index, index, delta);
}

float LookupLightingLUTSigned(int lut_index, float pos) {
    int index = clamp(int(pos * 128.0), -128, 127);
    float delta = pos * 128.0 - float(index);
    if (index < 0) index += 256;
    return LookupLightingLUT(lut_index, index, delta);
}

float byteround(float x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec2 byteround(vec2 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec3 byteround(vec3 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec4 byteround(vec4 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

// PICA's LOD formula for 2D textures.
// This LOD formula is the same as the LOD lower limit defined in OpenGL.
// f(x, y) >= max{m_u, m_v, m_w}
// (See OpenGL 4.6 spec, 8.14.1 - Scale Factor and Level-of-Detail)
float getLod(vec2 coord) {
    vec2 d = max(abs(dFdx(coord)), abs(dFdy(coord)));
    return log2(max(d.x, d.y));
}

vec4 shadowTexture(vec2 uv, float w) {
    return vec4(1.0);
}

vec4 shadowTextureCube(vec2 uv, float w) {
    return vec4(1.0);
}

void main() {
vec4 rounded_primary_color = byteround(primary_color);
vec4 primary_fragment_color = vec4(0.0);
vec4 secondary_fragment_color = vec4(0.0);
if (!(gl_FragCoord.x >= float(scissor_x1) && gl_FragCoord.y >= float(scissor_y1) && gl_FragCoord.x < float(scissor_x2) && gl_FragCoord.y < float(scissor_y2))) discard;
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((const_color[0].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((const_color[0].a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.a = last_tex_env_out.a;

combiner_buffer = next_combiner_buffer;

vec3 color_output_2 = byteround(clamp((texcolor0.rgb) + (rounded_primary_color.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_2 = byteround(clamp((texcolor0.a) * (rounded_primary_color.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_2, alpha_output_2), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;

vec3 color_output_3 = byteround(clamp((const_color[3].aaa) * (last_tex_env_out.rgb) + (const_color[3].rgb) * (vec3(1.0) - (last_tex_env_out.rgb)), vec3(0.0), vec3(1.0)));
float alpha_output_3 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_3, alpha_output_3), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;

vec3 color_output_4 = byteround(clamp((const_color[4].aaa) * (rounded_primary_color.rgb) + (const_color[4].rgb) * (vec3(1.0) - (rounded_primary_color.rgb)), vec3(0.0), vec3(1.0)));
float alpha_output_4 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_4, alpha_output_4), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_5 = byteround(clamp((last_tex_env_out.rgb) * (combiner_buffer.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_5 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_5, alpha_output_5), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: E6D9F391DC93F028, AB7B4CE05CF997D8
// program: 4940142D60DA9543, 5D764F9A6220D694, AB7B4CE05CF997D8
// reference: 21587A09B2B33B49, 4940142D60DA9543
// shader: 8B30, 21CC92238CF1D017

precision highp int;
precision highp float;
precision highp samplerBuffer;
precision highp usampler2D;
precision highp uimage2D;
in vec4 primary_color;
in vec2 texcoord0;
in vec2 texcoord1;
in vec2 texcoord2;
in float texcoord0_w;
in vec4 normquat;
in vec3 view;

#ifndef CITRA_GLES
in vec4 gl_FragCoord;
#endif // CITRA_GLES
out vec4 color;

uniform sampler2D tex0;
uniform sampler2D tex1;
uniform sampler2D tex2;
uniform samplerCube tex_cube;
uniform samplerBuffer texture_buffer_lut_lf;
uniform samplerBuffer texture_buffer_lut_rg;
uniform samplerBuffer texture_buffer_lut_rgba;

#define NUM_TEV_STAGES 6
#define NUM_LIGHTS 8
#define NUM_LIGHTING_SAMPLERS 24

struct LightSrc {
    vec3 specular_0;
    vec3 specular_1;
    vec3 diffuse;
    vec3 ambient;
    vec3 position;
    vec3 spot_direction;
    float dist_atten_bias;
    float dist_atten_scale;
};

layout (std140) uniform shader_data {
    int alphatest_ref;
    float depth_scale;
    float depth_offset;
    float shadow_bias_constant;
    float shadow_bias_linear;
    int scissor_x1;
    int scissor_y1;
    int scissor_x2;
    int scissor_y2;
    int fog_lut_offset;
    int proctex_noise_lut_offset;
    int proctex_color_map_offset;
    int proctex_alpha_map_offset;
    int proctex_lut_offset;
    int proctex_diff_lut_offset;
    float proctex_bias;
    vec3 fog_color;
    vec2 proctex_noise_f;
    vec2 proctex_noise_a;
    vec2 proctex_noise_p;
    vec4 const_color[NUM_TEV_STAGES];
    vec4 tev_combiner_buffer_color;
    vec4 clip_coef;
};

layout (std140) uniform shader_light_data {
    ivec4 lighting_lut_offset[NUM_LIGHTING_SAMPLERS / 4];
    vec3 lighting_global_ambient;
    LightSrc light_src[NUM_LIGHTS];
    float lut_scale_d0;
    float lut_scale_d1;
    float lut_scale_sp;
    float lut_scale_fr;
    float lut_scale_rb;
    float lut_scale_rg;
    float lut_scale_rr;
    int shadow_texture_bias;
};

// Rotate the vector v by the quaternion q
vec3 quaternion_rotate(vec4 q, vec3 v) {
    return v + 2.0 * cross(q.xyz, cross(q.xyz, v) + q.w * v);
}

float LookupLightingLUT(int lut_index, int index, float delta) {
    vec2 entry = texelFetch(texture_buffer_lut_lf, lighting_lut_offset[lut_index >> 2][lut_index & 3] + index).rg;
    return entry.r + entry.g * delta;
}

float LookupLightingLUTUnsigned(int lut_index, float pos) {
    int index = clamp(int(pos * 256.0), 0, 255);
    float delta = pos * 256.0 - float(index);
    return LookupLightingLUT(lut_index, index, delta);
}

float LookupLightingLUTSigned(int lut_index, float pos) {
    int index = clamp(int(pos * 128.0), -128, 127);
    float delta = pos * 128.0 - float(index);
    if (index < 0) index += 256;
    return LookupLightingLUT(lut_index, index, delta);
}

float byteround(float x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec2 byteround(vec2 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec3 byteround(vec3 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec4 byteround(vec4 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

// PICA's LOD formula for 2D textures.
// This LOD formula is the same as the LOD lower limit defined in OpenGL.
// f(x, y) >= max{m_u, m_v, m_w}
// (See OpenGL 4.6 spec, 8.14.1 - Scale Factor and Level-of-Detail)
float getLod(vec2 coord) {
    vec2 d = max(abs(dFdx(coord)), abs(dFdy(coord)));
    return log2(max(d.x, d.y));
}

vec4 shadowTexture(vec2 uv, float w) {
    return vec4(1.0);
}

vec4 shadowTextureCube(vec2 uv, float w) {
    return vec4(1.0);
}

void main() {
vec4 rounded_primary_color = byteround(primary_color);
vec4 primary_fragment_color = vec4(0.0);
vec4 secondary_fragment_color = vec4(0.0);
if (!(gl_FragCoord.x >= float(scissor_x1) && gl_FragCoord.y >= float(scissor_y1) && gl_FragCoord.x < float(scissor_x2) && gl_FragCoord.y < float(scissor_y2))) discard;
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((const_color[0].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((const_color[0].a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.a = last_tex_env_out.a;

combiner_buffer = next_combiner_buffer;

vec3 color_output_2 = byteround(clamp((texcolor0.rgb) + (rounded_primary_color.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_2 = byteround(clamp((texcolor0.a) * (rounded_primary_color.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_2, alpha_output_2), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;

vec3 color_output_3 = byteround(clamp((const_color[3].rgb) * (vec3(1.0) - texcolor0.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_3 = byteround(clamp((const_color[3].a) * (1.0 - texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_3, alpha_output_3), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;

vec3 color_output_4 = byteround(clamp((const_color[4].rgb) * (texcolor0.rgb) + (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_4 = byteround(clamp((const_color[4].a) * (texcolor0.a) + (last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_4, alpha_output_4), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_5 = byteround(clamp((rounded_primary_color.rgb) * (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_5 = byteround(clamp((rounded_primary_color.a) * (last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_5, alpha_output_5), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: 194CA22E7F9DCA65, 21CC92238CF1D017
// program: 4940142D60DA9543, 5D764F9A6220D694, 21CC92238CF1D017
// shader: 8B30, D0C79D208D127B98

precision highp int;
precision highp float;
precision highp samplerBuffer;
precision highp usampler2D;
precision highp uimage2D;
in vec4 primary_color;
in vec2 texcoord0;
in vec2 texcoord1;
in vec2 texcoord2;
in float texcoord0_w;
in vec4 normquat;
in vec3 view;

#ifndef CITRA_GLES
in vec4 gl_FragCoord;
#endif // CITRA_GLES
out vec4 color;

uniform sampler2D tex0;
uniform sampler2D tex1;
uniform sampler2D tex2;
uniform samplerCube tex_cube;
uniform samplerBuffer texture_buffer_lut_lf;
uniform samplerBuffer texture_buffer_lut_rg;
uniform samplerBuffer texture_buffer_lut_rgba;

#define NUM_TEV_STAGES 6
#define NUM_LIGHTS 8
#define NUM_LIGHTING_SAMPLERS 24

struct LightSrc {
    vec3 specular_0;
    vec3 specular_1;
    vec3 diffuse;
    vec3 ambient;
    vec3 position;
    vec3 spot_direction;
    float dist_atten_bias;
    float dist_atten_scale;
};

layout (std140) uniform shader_data {
    int alphatest_ref;
    float depth_scale;
    float depth_offset;
    float shadow_bias_constant;
    float shadow_bias_linear;
    int scissor_x1;
    int scissor_y1;
    int scissor_x2;
    int scissor_y2;
    int fog_lut_offset;
    int proctex_noise_lut_offset;
    int proctex_color_map_offset;
    int proctex_alpha_map_offset;
    int proctex_lut_offset;
    int proctex_diff_lut_offset;
    float proctex_bias;
    vec3 fog_color;
    vec2 proctex_noise_f;
    vec2 proctex_noise_a;
    vec2 proctex_noise_p;
    vec4 const_color[NUM_TEV_STAGES];
    vec4 tev_combiner_buffer_color;
    vec4 clip_coef;
};

layout (std140) uniform shader_light_data {
    ivec4 lighting_lut_offset[NUM_LIGHTING_SAMPLERS / 4];
    vec3 lighting_global_ambient;
    LightSrc light_src[NUM_LIGHTS];
    float lut_scale_d0;
    float lut_scale_d1;
    float lut_scale_sp;
    float lut_scale_fr;
    float lut_scale_rb;
    float lut_scale_rg;
    float lut_scale_rr;
    int shadow_texture_bias;
};

// Rotate the vector v by the quaternion q
vec3 quaternion_rotate(vec4 q, vec3 v) {
    return v + 2.0 * cross(q.xyz, cross(q.xyz, v) + q.w * v);
}

float LookupLightingLUT(int lut_index, int index, float delta) {
    vec2 entry = texelFetch(texture_buffer_lut_lf, lighting_lut_offset[lut_index >> 2][lut_index & 3] + index).rg;
    return entry.r + entry.g * delta;
}

float LookupLightingLUTUnsigned(int lut_index, float pos) {
    int index = clamp(int(pos * 256.0), 0, 255);
    float delta = pos * 256.0 - float(index);
    return LookupLightingLUT(lut_index, index, delta);
}

float LookupLightingLUTSigned(int lut_index, float pos) {
    int index = clamp(int(pos * 128.0), -128, 127);
    float delta = pos * 128.0 - float(index);
    if (index < 0) index += 256;
    return LookupLightingLUT(lut_index, index, delta);
}

float byteround(float x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec2 byteround(vec2 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec3 byteround(vec3 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec4 byteround(vec4 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

// PICA's LOD formula for 2D textures.
// This LOD formula is the same as the LOD lower limit defined in OpenGL.
// f(x, y) >= max{m_u, m_v, m_w}
// (See OpenGL 4.6 spec, 8.14.1 - Scale Factor and Level-of-Detail)
float getLod(vec2 coord) {
    vec2 d = max(abs(dFdx(coord)), abs(dFdy(coord)));
    return log2(max(d.x, d.y));
}

vec4 shadowTexture(vec2 uv, float w) {
    return vec4(1.0);
}

vec4 shadowTextureCube(vec2 uv, float w) {
    return vec4(1.0);
}

void main() {
vec4 rounded_primary_color = byteround(primary_color);
vec4 primary_fragment_color = vec4(0.0);
vec4 secondary_fragment_color = vec4(0.0);
if (!(gl_FragCoord.x >= float(scissor_x1) && gl_FragCoord.y >= float(scissor_y1) && gl_FragCoord.x < float(scissor_x2) && gl_FragCoord.y < float(scissor_y2))) discard;
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((const_color[0].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((const_color[0].a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.a = last_tex_env_out.a;

combiner_buffer = next_combiner_buffer;

vec3 color_output_2 = byteround(clamp((last_tex_env_out.rgb) + (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_2 = byteround(clamp((last_tex_env_out.a) * (last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_2, alpha_output_2), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;

vec3 color_output_3 = byteround(clamp((last_tex_env_out.rgb) * (vec3(1.0) - last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_3 = byteround(clamp((last_tex_env_out.a) * (1.0 - last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_3, alpha_output_3), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;

vec3 color_output_4 = byteround(clamp((last_tex_env_out.rgb) * (last_tex_env_out.rgb) + (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_4 = byteround(clamp((last_tex_env_out.a) * (last_tex_env_out.a) + (last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_4, alpha_output_4), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_5 = byteround(clamp((const_color[5].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_5 = byteround(clamp((const_color[5].a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_5, alpha_output_5), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: 94F1A03093E4273B, D0C79D208D127B98
// program: 0000000000000000, 0000000000000000, D0C79D208D127B98
// shader: 8B30, 3D4D9ADEFB560870

precision highp int;
precision highp float;
precision highp samplerBuffer;
precision highp usampler2D;
precision highp uimage2D;
in vec4 primary_color;
in vec2 texcoord0;
in vec2 texcoord1;
in vec2 texcoord2;
in float texcoord0_w;
in vec4 normquat;
in vec3 view;

#ifndef CITRA_GLES
in vec4 gl_FragCoord;
#endif // CITRA_GLES
out vec4 color;

uniform sampler2D tex0;
uniform sampler2D tex1;
uniform sampler2D tex2;
uniform samplerCube tex_cube;
uniform samplerBuffer texture_buffer_lut_lf;
uniform samplerBuffer texture_buffer_lut_rg;
uniform samplerBuffer texture_buffer_lut_rgba;

#define NUM_TEV_STAGES 6
#define NUM_LIGHTS 8
#define NUM_LIGHTING_SAMPLERS 24

struct LightSrc {
    vec3 specular_0;
    vec3 specular_1;
    vec3 diffuse;
    vec3 ambient;
    vec3 position;
    vec3 spot_direction;
    float dist_atten_bias;
    float dist_atten_scale;
};

layout (std140) uniform shader_data {
    int alphatest_ref;
    float depth_scale;
    float depth_offset;
    float shadow_bias_constant;
    float shadow_bias_linear;
    int scissor_x1;
    int scissor_y1;
    int scissor_x2;
    int scissor_y2;
    int fog_lut_offset;
    int proctex_noise_lut_offset;
    int proctex_color_map_offset;
    int proctex_alpha_map_offset;
    int proctex_lut_offset;
    int proctex_diff_lut_offset;
    float proctex_bias;
    vec3 fog_color;
    vec2 proctex_noise_f;
    vec2 proctex_noise_a;
    vec2 proctex_noise_p;
    vec4 const_color[NUM_TEV_STAGES];
    vec4 tev_combiner_buffer_color;
    vec4 clip_coef;
};

layout (std140) uniform shader_light_data {
    ivec4 lighting_lut_offset[NUM_LIGHTING_SAMPLERS / 4];
    vec3 lighting_global_ambient;
    LightSrc light_src[NUM_LIGHTS];
    float lut_scale_d0;
    float lut_scale_d1;
    float lut_scale_sp;
    float lut_scale_fr;
    float lut_scale_rb;
    float lut_scale_rg;
    float lut_scale_rr;
    int shadow_texture_bias;
};

// Rotate the vector v by the quaternion q
vec3 quaternion_rotate(vec4 q, vec3 v) {
    return v + 2.0 * cross(q.xyz, cross(q.xyz, v) + q.w * v);
}

float LookupLightingLUT(int lut_index, int index, float delta) {
    vec2 entry = texelFetch(texture_buffer_lut_lf, lighting_lut_offset[lut_index >> 2][lut_index & 3] + index).rg;
    return entry.r + entry.g * delta;
}

float LookupLightingLUTUnsigned(int lut_index, float pos) {
    int index = clamp(int(pos * 256.0), 0, 255);
    float delta = pos * 256.0 - float(index);
    return LookupLightingLUT(lut_index, index, delta);
}

float LookupLightingLUTSigned(int lut_index, float pos) {
    int index = clamp(int(pos * 128.0), -128, 127);
    float delta = pos * 128.0 - float(index);
    if (index < 0) index += 256;
    return LookupLightingLUT(lut_index, index, delta);
}

float byteround(float x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec2 byteround(vec2 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec3 byteround(vec3 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec4 byteround(vec4 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

// PICA's LOD formula for 2D textures.
// This LOD formula is the same as the LOD lower limit defined in OpenGL.
// f(x, y) >= max{m_u, m_v, m_w}
// (See OpenGL 4.6 spec, 8.14.1 - Scale Factor and Level-of-Detail)
float getLod(vec2 coord) {
    vec2 d = max(abs(dFdx(coord)), abs(dFdy(coord)));
    return log2(max(d.x, d.y));
}

vec4 shadowTexture(vec2 uv, float w) {
    return vec4(1.0);
}

vec4 shadowTextureCube(vec2 uv, float w) {
    return vec4(1.0);
}

void main() {
vec4 rounded_primary_color = byteround(primary_color);
vec4 primary_fragment_color = vec4(0.0);
vec4 secondary_fragment_color = vec4(0.0);
if (!(gl_FragCoord.x >= float(scissor_x1) && gl_FragCoord.y >= float(scissor_y1) && gl_FragCoord.x < float(scissor_x2) && gl_FragCoord.y < float(scissor_y2))) discard;
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((const_color[0].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.a = last_tex_env_out.a;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;

combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

if (int(last_tex_env_out.a * 255.0) <= alphatest_ref) discard;
gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: D4F4BEF97322A0F3, 3D4D9ADEFB560870
// program: 0000000000000000, 0000000000000000, 3D4D9ADEFB560870
// shader: 8B30, 28B9DE8D19942BC8

precision highp int;
precision highp float;
precision highp samplerBuffer;
precision highp usampler2D;
precision highp uimage2D;
in vec4 primary_color;
in vec2 texcoord0;
in vec2 texcoord1;
in vec2 texcoord2;
in float texcoord0_w;
in vec4 normquat;
in vec3 view;

#ifndef CITRA_GLES
in vec4 gl_FragCoord;
#endif // CITRA_GLES
out vec4 color;

uniform sampler2D tex0;
uniform sampler2D tex1;
uniform sampler2D tex2;
uniform samplerCube tex_cube;
uniform samplerBuffer texture_buffer_lut_lf;
uniform samplerBuffer texture_buffer_lut_rg;
uniform samplerBuffer texture_buffer_lut_rgba;

#define NUM_TEV_STAGES 6
#define NUM_LIGHTS 8
#define NUM_LIGHTING_SAMPLERS 24

struct LightSrc {
    vec3 specular_0;
    vec3 specular_1;
    vec3 diffuse;
    vec3 ambient;
    vec3 position;
    vec3 spot_direction;
    float dist_atten_bias;
    float dist_atten_scale;
};

layout (std140) uniform shader_data {
    int alphatest_ref;
    float depth_scale;
    float depth_offset;
    float shadow_bias_constant;
    float shadow_bias_linear;
    int scissor_x1;
    int scissor_y1;
    int scissor_x2;
    int scissor_y2;
    int fog_lut_offset;
    int proctex_noise_lut_offset;
    int proctex_color_map_offset;
    int proctex_alpha_map_offset;
    int proctex_lut_offset;
    int proctex_diff_lut_offset;
    float proctex_bias;
    vec3 fog_color;
    vec2 proctex_noise_f;
    vec2 proctex_noise_a;
    vec2 proctex_noise_p;
    vec4 const_color[NUM_TEV_STAGES];
    vec4 tev_combiner_buffer_color;
    vec4 clip_coef;
};

layout (std140) uniform shader_light_data {
    ivec4 lighting_lut_offset[NUM_LIGHTING_SAMPLERS / 4];
    vec3 lighting_global_ambient;
    LightSrc light_src[NUM_LIGHTS];
    float lut_scale_d0;
    float lut_scale_d1;
    float lut_scale_sp;
    float lut_scale_fr;
    float lut_scale_rb;
    float lut_scale_rg;
    float lut_scale_rr;
    int shadow_texture_bias;
};

// Rotate the vector v by the quaternion q
vec3 quaternion_rotate(vec4 q, vec3 v) {
    return v + 2.0 * cross(q.xyz, cross(q.xyz, v) + q.w * v);
}

float LookupLightingLUT(int lut_index, int index, float delta) {
    vec2 entry = texelFetch(texture_buffer_lut_lf, lighting_lut_offset[lut_index >> 2][lut_index & 3] + index).rg;
    return entry.r + entry.g * delta;
}

float LookupLightingLUTUnsigned(int lut_index, float pos) {
    int index = clamp(int(pos * 256.0), 0, 255);
    float delta = pos * 256.0 - float(index);
    return LookupLightingLUT(lut_index, index, delta);
}

float LookupLightingLUTSigned(int lut_index, float pos) {
    int index = clamp(int(pos * 128.0), -128, 127);
    float delta = pos * 128.0 - float(index);
    if (index < 0) index += 256;
    return LookupLightingLUT(lut_index, index, delta);
}

float byteround(float x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec2 byteround(vec2 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec3 byteround(vec3 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec4 byteround(vec4 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

// PICA's LOD formula for 2D textures.
// This LOD formula is the same as the LOD lower limit defined in OpenGL.
// f(x, y) >= max{m_u, m_v, m_w}
// (See OpenGL 4.6 spec, 8.14.1 - Scale Factor and Level-of-Detail)
float getLod(vec2 coord) {
    vec2 d = max(abs(dFdx(coord)), abs(dFdy(coord)));
    return log2(max(d.x, d.y));
}

vec4 shadowTexture(vec2 uv, float w) {
    return vec4(1.0);
}

vec4 shadowTextureCube(vec2 uv, float w) {
    return vec4(1.0);
}

void main() {
vec4 rounded_primary_color = byteround(primary_color);
vec4 primary_fragment_color = vec4(0.0);
vec4 secondary_fragment_color = vec4(0.0);
if (!(gl_FragCoord.x >= float(scissor_x1) && gl_FragCoord.y >= float(scissor_y1) && gl_FragCoord.x < float(scissor_x2) && gl_FragCoord.y < float(scissor_y2))) discard;
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((texcolor0.rrr) * (const_color[0].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.a = last_tex_env_out.a;

vec3 color_output_1 = byteround(clamp((texcolor0.ggg) * (const_color[1].rgb) + (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_1 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_1, alpha_output_1), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_2 = byteround(clamp((texcolor0.bbb) * (const_color[2].rgb) + (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_2 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_2, alpha_output_2), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;

combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

if (int(last_tex_env_out.a * 255.0) <= alphatest_ref) discard;
gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: 3A146E84156479AC, 28B9DE8D19942BC8
// program: 0000000000000000, 0000000000000000, 28B9DE8D19942BC8
// shader: 8B30, DCAE58B3E2E24DA1

precision highp int;
precision highp float;
precision highp samplerBuffer;
precision highp usampler2D;
precision highp uimage2D;
in vec4 primary_color;
in vec2 texcoord0;
in vec2 texcoord1;
in vec2 texcoord2;
in float texcoord0_w;
in vec4 normquat;
in vec3 view;

#ifndef CITRA_GLES
in vec4 gl_FragCoord;
#endif // CITRA_GLES
out vec4 color;

uniform sampler2D tex0;
uniform sampler2D tex1;
uniform sampler2D tex2;
uniform samplerCube tex_cube;
uniform samplerBuffer texture_buffer_lut_lf;
uniform samplerBuffer texture_buffer_lut_rg;
uniform samplerBuffer texture_buffer_lut_rgba;

#define NUM_TEV_STAGES 6
#define NUM_LIGHTS 8
#define NUM_LIGHTING_SAMPLERS 24

struct LightSrc {
    vec3 specular_0;
    vec3 specular_1;
    vec3 diffuse;
    vec3 ambient;
    vec3 position;
    vec3 spot_direction;
    float dist_atten_bias;
    float dist_atten_scale;
};

layout (std140) uniform shader_data {
    int alphatest_ref;
    float depth_scale;
    float depth_offset;
    float shadow_bias_constant;
    float shadow_bias_linear;
    int scissor_x1;
    int scissor_y1;
    int scissor_x2;
    int scissor_y2;
    int fog_lut_offset;
    int proctex_noise_lut_offset;
    int proctex_color_map_offset;
    int proctex_alpha_map_offset;
    int proctex_lut_offset;
    int proctex_diff_lut_offset;
    float proctex_bias;
    vec3 fog_color;
    vec2 proctex_noise_f;
    vec2 proctex_noise_a;
    vec2 proctex_noise_p;
    vec4 const_color[NUM_TEV_STAGES];
    vec4 tev_combiner_buffer_color;
    vec4 clip_coef;
};

layout (std140) uniform shader_light_data {
    ivec4 lighting_lut_offset[NUM_LIGHTING_SAMPLERS / 4];
    vec3 lighting_global_ambient;
    LightSrc light_src[NUM_LIGHTS];
    float lut_scale_d0;
    float lut_scale_d1;
    float lut_scale_sp;
    float lut_scale_fr;
    float lut_scale_rb;
    float lut_scale_rg;
    float lut_scale_rr;
    int shadow_texture_bias;
};

// Rotate the vector v by the quaternion q
vec3 quaternion_rotate(vec4 q, vec3 v) {
    return v + 2.0 * cross(q.xyz, cross(q.xyz, v) + q.w * v);
}

float LookupLightingLUT(int lut_index, int index, float delta) {
    vec2 entry = texelFetch(texture_buffer_lut_lf, lighting_lut_offset[lut_index >> 2][lut_index & 3] + index).rg;
    return entry.r + entry.g * delta;
}

float LookupLightingLUTUnsigned(int lut_index, float pos) {
    int index = clamp(int(pos * 256.0), 0, 255);
    float delta = pos * 256.0 - float(index);
    return LookupLightingLUT(lut_index, index, delta);
}

float LookupLightingLUTSigned(int lut_index, float pos) {
    int index = clamp(int(pos * 128.0), -128, 127);
    float delta = pos * 128.0 - float(index);
    if (index < 0) index += 256;
    return LookupLightingLUT(lut_index, index, delta);
}

float byteround(float x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec2 byteround(vec2 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec3 byteround(vec3 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec4 byteround(vec4 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

// PICA's LOD formula for 2D textures.
// This LOD formula is the same as the LOD lower limit defined in OpenGL.
// f(x, y) >= max{m_u, m_v, m_w}
// (See OpenGL 4.6 spec, 8.14.1 - Scale Factor and Level-of-Detail)
float getLod(vec2 coord) {
    vec2 d = max(abs(dFdx(coord)), abs(dFdy(coord)));
    return log2(max(d.x, d.y));
}

vec4 shadowTexture(vec2 uv, float w) {
    return vec4(1.0);
}

vec4 shadowTextureCube(vec2 uv, float w) {
    return vec4(1.0);
}

void main() {
vec4 rounded_primary_color = byteround(primary_color);
vec4 primary_fragment_color = vec4(0.0);
vec4 secondary_fragment_color = vec4(0.0);
if (!(gl_FragCoord.x >= float(scissor_x1) && gl_FragCoord.y >= float(scissor_y1) && gl_FragCoord.x < float(scissor_x2) && gl_FragCoord.y < float(scissor_y2))) discard;
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((const_color[0].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((const_color[0].a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.a = last_tex_env_out.a;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;

combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: D4F4BEF9CC90E899, DCAE58B3E2E24DA1
// program: 0000000000000000, 0000000000000000, DCAE58B3E2E24DA1
// shader: 8B30, BAE5F78028494A62

precision highp int;
precision highp float;
precision highp samplerBuffer;
precision highp usampler2D;
precision highp uimage2D;
in vec4 primary_color;
in vec2 texcoord0;
in vec2 texcoord1;
in vec2 texcoord2;
in float texcoord0_w;
in vec4 normquat;
in vec3 view;

#ifndef CITRA_GLES
in vec4 gl_FragCoord;
#endif // CITRA_GLES
out vec4 color;

uniform sampler2D tex0;
uniform sampler2D tex1;
uniform sampler2D tex2;
uniform samplerCube tex_cube;
uniform samplerBuffer texture_buffer_lut_lf;
uniform samplerBuffer texture_buffer_lut_rg;
uniform samplerBuffer texture_buffer_lut_rgba;

#define NUM_TEV_STAGES 6
#define NUM_LIGHTS 8
#define NUM_LIGHTING_SAMPLERS 24

struct LightSrc {
    vec3 specular_0;
    vec3 specular_1;
    vec3 diffuse;
    vec3 ambient;
    vec3 position;
    vec3 spot_direction;
    float dist_atten_bias;
    float dist_atten_scale;
};

layout (std140) uniform shader_data {
    int alphatest_ref;
    float depth_scale;
    float depth_offset;
    float shadow_bias_constant;
    float shadow_bias_linear;
    int scissor_x1;
    int scissor_y1;
    int scissor_x2;
    int scissor_y2;
    int fog_lut_offset;
    int proctex_noise_lut_offset;
    int proctex_color_map_offset;
    int proctex_alpha_map_offset;
    int proctex_lut_offset;
    int proctex_diff_lut_offset;
    float proctex_bias;
    vec3 fog_color;
    vec2 proctex_noise_f;
    vec2 proctex_noise_a;
    vec2 proctex_noise_p;
    vec4 const_color[NUM_TEV_STAGES];
    vec4 tev_combiner_buffer_color;
    vec4 clip_coef;
};

layout (std140) uniform shader_light_data {
    ivec4 lighting_lut_offset[NUM_LIGHTING_SAMPLERS / 4];
    vec3 lighting_global_ambient;
    LightSrc light_src[NUM_LIGHTS];
    float lut_scale_d0;
    float lut_scale_d1;
    float lut_scale_sp;
    float lut_scale_fr;
    float lut_scale_rb;
    float lut_scale_rg;
    float lut_scale_rr;
    int shadow_texture_bias;
};

// Rotate the vector v by the quaternion q
vec3 quaternion_rotate(vec4 q, vec3 v) {
    return v + 2.0 * cross(q.xyz, cross(q.xyz, v) + q.w * v);
}

float LookupLightingLUT(int lut_index, int index, float delta) {
    vec2 entry = texelFetch(texture_buffer_lut_lf, lighting_lut_offset[lut_index >> 2][lut_index & 3] + index).rg;
    return entry.r + entry.g * delta;
}

float LookupLightingLUTUnsigned(int lut_index, float pos) {
    int index = clamp(int(pos * 256.0), 0, 255);
    float delta = pos * 256.0 - float(index);
    return LookupLightingLUT(lut_index, index, delta);
}

float LookupLightingLUTSigned(int lut_index, float pos) {
    int index = clamp(int(pos * 128.0), -128, 127);
    float delta = pos * 128.0 - float(index);
    if (index < 0) index += 256;
    return LookupLightingLUT(lut_index, index, delta);
}

float byteround(float x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec2 byteround(vec2 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec3 byteround(vec3 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec4 byteround(vec4 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

// PICA's LOD formula for 2D textures.
// This LOD formula is the same as the LOD lower limit defined in OpenGL.
// f(x, y) >= max{m_u, m_v, m_w}
// (See OpenGL 4.6 spec, 8.14.1 - Scale Factor and Level-of-Detail)
float getLod(vec2 coord) {
    vec2 d = max(abs(dFdx(coord)), abs(dFdy(coord)));
    return log2(max(d.x, d.y));
}

vec4 shadowTexture(vec2 uv, float w) {
    return vec4(1.0);
}

vec4 shadowTextureCube(vec2 uv, float w) {
    return vec4(1.0);
}

void main() {
vec4 rounded_primary_color = byteround(primary_color);
vec4 primary_fragment_color = vec4(0.0);
vec4 secondary_fragment_color = vec4(0.0);
if (!(gl_FragCoord.x >= float(scissor_x1) && gl_FragCoord.y >= float(scissor_y1) && gl_FragCoord.x < float(scissor_x2) && gl_FragCoord.y < float(scissor_y2))) discard;
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((texcolor0.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.a = last_tex_env_out.a;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;

combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

if (int(last_tex_env_out.a * 255.0) <= alphatest_ref) discard;
gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: D4F4BEF988C2D14A, BAE5F78028494A62
// program: 0000000000000000, 0000000000000000, BAE5F78028494A62
// shader: 8B30, 704C09C300E5288C

precision highp int;
precision highp float;
precision highp samplerBuffer;
precision highp usampler2D;
precision highp uimage2D;
in vec4 primary_color;
in vec2 texcoord0;
in vec2 texcoord1;
in vec2 texcoord2;
in float texcoord0_w;
in vec4 normquat;
in vec3 view;

#ifndef CITRA_GLES
in vec4 gl_FragCoord;
#endif // CITRA_GLES
out vec4 color;

uniform sampler2D tex0;
uniform sampler2D tex1;
uniform sampler2D tex2;
uniform samplerCube tex_cube;
uniform samplerBuffer texture_buffer_lut_lf;
uniform samplerBuffer texture_buffer_lut_rg;
uniform samplerBuffer texture_buffer_lut_rgba;

#define NUM_TEV_STAGES 6
#define NUM_LIGHTS 8
#define NUM_LIGHTING_SAMPLERS 24

struct LightSrc {
    vec3 specular_0;
    vec3 specular_1;
    vec3 diffuse;
    vec3 ambient;
    vec3 position;
    vec3 spot_direction;
    float dist_atten_bias;
    float dist_atten_scale;
};

layout (std140) uniform shader_data {
    int alphatest_ref;
    float depth_scale;
    float depth_offset;
    float shadow_bias_constant;
    float shadow_bias_linear;
    int scissor_x1;
    int scissor_y1;
    int scissor_x2;
    int scissor_y2;
    int fog_lut_offset;
    int proctex_noise_lut_offset;
    int proctex_color_map_offset;
    int proctex_alpha_map_offset;
    int proctex_lut_offset;
    int proctex_diff_lut_offset;
    float proctex_bias;
    vec3 fog_color;
    vec2 proctex_noise_f;
    vec2 proctex_noise_a;
    vec2 proctex_noise_p;
    vec4 const_color[NUM_TEV_STAGES];
    vec4 tev_combiner_buffer_color;
    vec4 clip_coef;
};

layout (std140) uniform shader_light_data {
    ivec4 lighting_lut_offset[NUM_LIGHTING_SAMPLERS / 4];
    vec3 lighting_global_ambient;
    LightSrc light_src[NUM_LIGHTS];
    float lut_scale_d0;
    float lut_scale_d1;
    float lut_scale_sp;
    float lut_scale_fr;
    float lut_scale_rb;
    float lut_scale_rg;
    float lut_scale_rr;
    int shadow_texture_bias;
};

// Rotate the vector v by the quaternion q
vec3 quaternion_rotate(vec4 q, vec3 v) {
    return v + 2.0 * cross(q.xyz, cross(q.xyz, v) + q.w * v);
}

float LookupLightingLUT(int lut_index, int index, float delta) {
    vec2 entry = texelFetch(texture_buffer_lut_lf, lighting_lut_offset[lut_index >> 2][lut_index & 3] + index).rg;
    return entry.r + entry.g * delta;
}

float LookupLightingLUTUnsigned(int lut_index, float pos) {
    int index = clamp(int(pos * 256.0), 0, 255);
    float delta = pos * 256.0 - float(index);
    return LookupLightingLUT(lut_index, index, delta);
}

float LookupLightingLUTSigned(int lut_index, float pos) {
    int index = clamp(int(pos * 128.0), -128, 127);
    float delta = pos * 128.0 - float(index);
    if (index < 0) index += 256;
    return LookupLightingLUT(lut_index, index, delta);
}

float byteround(float x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec2 byteround(vec2 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec3 byteround(vec3 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec4 byteround(vec4 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

// PICA's LOD formula for 2D textures.
// This LOD formula is the same as the LOD lower limit defined in OpenGL.
// f(x, y) >= max{m_u, m_v, m_w}
// (See OpenGL 4.6 spec, 8.14.1 - Scale Factor and Level-of-Detail)
float getLod(vec2 coord) {
    vec2 d = max(abs(dFdx(coord)), abs(dFdy(coord)));
    return log2(max(d.x, d.y));
}

vec4 shadowTexture(vec2 uv, float w) {
    return vec4(1.0);
}

vec4 shadowTextureCube(vec2 uv, float w) {
    return vec4(1.0);
}

void main() {
vec4 rounded_primary_color = byteround(primary_color);
vec4 primary_fragment_color = vec4(0.0);
vec4 secondary_fragment_color = vec4(0.0);
if (!(gl_FragCoord.x >= float(scissor_x1) && gl_FragCoord.y >= float(scissor_y1) && gl_FragCoord.x < float(scissor_x2) && gl_FragCoord.y < float(scissor_y2))) discard;
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((const_color[0].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((const_color[0].a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.a = last_tex_env_out.a;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;

combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;

combiner_buffer = next_combiner_buffer;

vec3 color_output_5 = byteround(clamp((const_color[5].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_5 = byteround(clamp((const_color[5].a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_5, alpha_output_5), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: D4F4BEF993E4273B, 704C09C300E5288C
// program: 0000000000000000, 0000000000000000, 704C09C300E5288C
// shader: 8B30, 2CCAFD52C21EA1DD

precision highp int;
precision highp float;
precision highp samplerBuffer;
precision highp usampler2D;
precision highp uimage2D;
in vec4 primary_color;
in vec2 texcoord0;
in vec2 texcoord1;
in vec2 texcoord2;
in float texcoord0_w;
in vec4 normquat;
in vec3 view;

#ifndef CITRA_GLES
in vec4 gl_FragCoord;
#endif // CITRA_GLES
out vec4 color;

uniform sampler2D tex0;
uniform sampler2D tex1;
uniform sampler2D tex2;
uniform samplerCube tex_cube;
uniform samplerBuffer texture_buffer_lut_lf;
uniform samplerBuffer texture_buffer_lut_rg;
uniform samplerBuffer texture_buffer_lut_rgba;

#define NUM_TEV_STAGES 6
#define NUM_LIGHTS 8
#define NUM_LIGHTING_SAMPLERS 24

struct LightSrc {
    vec3 specular_0;
    vec3 specular_1;
    vec3 diffuse;
    vec3 ambient;
    vec3 position;
    vec3 spot_direction;
    float dist_atten_bias;
    float dist_atten_scale;
};

layout (std140) uniform shader_data {
    int alphatest_ref;
    float depth_scale;
    float depth_offset;
    float shadow_bias_constant;
    float shadow_bias_linear;
    int scissor_x1;
    int scissor_y1;
    int scissor_x2;
    int scissor_y2;
    int fog_lut_offset;
    int proctex_noise_lut_offset;
    int proctex_color_map_offset;
    int proctex_alpha_map_offset;
    int proctex_lut_offset;
    int proctex_diff_lut_offset;
    float proctex_bias;
    vec3 fog_color;
    vec2 proctex_noise_f;
    vec2 proctex_noise_a;
    vec2 proctex_noise_p;
    vec4 const_color[NUM_TEV_STAGES];
    vec4 tev_combiner_buffer_color;
    vec4 clip_coef;
};

layout (std140) uniform shader_light_data {
    ivec4 lighting_lut_offset[NUM_LIGHTING_SAMPLERS / 4];
    vec3 lighting_global_ambient;
    LightSrc light_src[NUM_LIGHTS];
    float lut_scale_d0;
    float lut_scale_d1;
    float lut_scale_sp;
    float lut_scale_fr;
    float lut_scale_rb;
    float lut_scale_rg;
    float lut_scale_rr;
    int shadow_texture_bias;
};

// Rotate the vector v by the quaternion q
vec3 quaternion_rotate(vec4 q, vec3 v) {
    return v + 2.0 * cross(q.xyz, cross(q.xyz, v) + q.w * v);
}

float LookupLightingLUT(int lut_index, int index, float delta) {
    vec2 entry = texelFetch(texture_buffer_lut_lf, lighting_lut_offset[lut_index >> 2][lut_index & 3] + index).rg;
    return entry.r + entry.g * delta;
}

float LookupLightingLUTUnsigned(int lut_index, float pos) {
    int index = clamp(int(pos * 256.0), 0, 255);
    float delta = pos * 256.0 - float(index);
    return LookupLightingLUT(lut_index, index, delta);
}

float LookupLightingLUTSigned(int lut_index, float pos) {
    int index = clamp(int(pos * 128.0), -128, 127);
    float delta = pos * 128.0 - float(index);
    if (index < 0) index += 256;
    return LookupLightingLUT(lut_index, index, delta);
}

float byteround(float x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec2 byteround(vec2 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec3 byteround(vec3 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec4 byteround(vec4 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

// PICA's LOD formula for 2D textures.
// This LOD formula is the same as the LOD lower limit defined in OpenGL.
// f(x, y) >= max{m_u, m_v, m_w}
// (See OpenGL 4.6 spec, 8.14.1 - Scale Factor and Level-of-Detail)
float getLod(vec2 coord) {
    vec2 d = max(abs(dFdx(coord)), abs(dFdy(coord)));
    return log2(max(d.x, d.y));
}

vec4 shadowTexture(vec2 uv, float w) {
    return vec4(1.0);
}

vec4 shadowTextureCube(vec2 uv, float w) {
    return vec4(1.0);
}

void main() {
vec4 rounded_primary_color = byteround(primary_color);
vec4 primary_fragment_color = vec4(0.0);
vec4 secondary_fragment_color = vec4(0.0);
if (!(gl_FragCoord.x >= float(scissor_x1) && gl_FragCoord.y >= float(scissor_y1) && gl_FragCoord.x < float(scissor_x2) && gl_FragCoord.y < float(scissor_y2))) discard;
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((const_color[0].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((const_color[0].a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;
next_combiner_buffer.a = last_tex_env_out.a;

vec3 color_output_1 = byteround(clamp((vec3(1.0) - last_tex_env_out.rgb) * (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_1 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_1, alpha_output_1), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;
next_combiner_buffer.a = last_tex_env_out.a;

vec3 color_output_2 = byteround(clamp((vec3(1.0) - last_tex_env_out.rgb) * (last_tex_env_out.rgb) + (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_2 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_2, alpha_output_2), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;
next_combiner_buffer.a = last_tex_env_out.a;

combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;
next_combiner_buffer.a = last_tex_env_out.a;

combiner_buffer = next_combiner_buffer;

vec3 color_output_5 = byteround(clamp((const_color[5].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_5 = byteround(clamp((const_color[5].a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_5, alpha_output_5), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: 8ECA464FBF4B4934, 2CCAFD52C21EA1DD
// program: 0000000000000000, 0000000000000000, 2CCAFD52C21EA1DD
// shader: 8B31, CA388C44D4F5C19E

struct pica_uniforms {
    bool b[16];
    uvec4 i[4];
    vec4 f[96];
};

bool exec_shader();

#define uniforms vs_uniforms
layout (std140) uniform vs_config {
    pica_uniforms uniforms;
};

layout(location = 0) in vec4 vs_in_reg0;
layout(location = 1) in vec4 vs_in_reg1;
layout(location = 2) in vec4 vs_in_reg2;
layout(location = 3) in vec4 vs_in_reg3;
layout(location = 4) in vec4 vs_in_reg4;
layout(location = 5) in vec4 vs_in_reg5;
layout(location = 6) in vec4 vs_in_reg6;
layout(location = 7) in vec4 vs_in_reg7;
layout(location = 8) in vec4 vs_in_reg8;

 out vec4 vs_out_attr0;
 out vec4 vs_out_attr1;
 out vec4 vs_out_attr2;
 out vec4 vs_out_attr3;
 out vec4 vs_out_attr4;
 out vec4 vs_out_attr5;
 out vec4 vs_out_attr6;

void main() {
    vs_out_attr0 = vec4(0.0, 0.0, 0.0, 1.0);
    vs_out_attr1 = vec4(0.0, 0.0, 0.0, 1.0);
    vs_out_attr2 = vec4(0.0, 0.0, 0.0, 1.0);
    vs_out_attr3 = vec4(0.0, 0.0, 0.0, 1.0);
    vs_out_attr4 = vec4(0.0, 0.0, 0.0, 1.0);
    vs_out_attr5 = vec4(0.0, 0.0, 0.0, 1.0);
    vs_out_attr6 = vec4(0.0, 0.0, 0.0, 1.0);

    exec_shader();
}


#define mul_s(x, y) (x * y)
#define fma_s(x, y, z) fma(x, y, z)
#define rcp_s(x) (1.0 / x)
#define rsq_s(x) inversesqrt(x)
#define dot_s(x, y) dot(x, y)
#define dot_3(x, y) dot(x, y)

bvec2 conditional_code = bvec2(false);
ivec3 address_registers = ivec3(0);
vec4 reg_tmp0 = vec4(0.0, 0.0, 0.0, 1.0);
vec4 reg_tmp1 = vec4(0.0, 0.0, 0.0, 1.0);
vec4 reg_tmp2 = vec4(0.0, 0.0, 0.0, 1.0);
vec4 reg_tmp3 = vec4(0.0, 0.0, 0.0, 1.0);
vec4 reg_tmp4 = vec4(0.0, 0.0, 0.0, 1.0);
vec4 reg_tmp5 = vec4(0.0, 0.0, 0.0, 1.0);
vec4 reg_tmp6 = vec4(0.0, 0.0, 0.0, 1.0);
vec4 reg_tmp7 = vec4(0.0, 0.0, 0.0, 1.0);
vec4 reg_tmp8 = vec4(0.0, 0.0, 0.0, 1.0);
vec4 reg_tmp9 = vec4(0.0, 0.0, 0.0, 1.0);
vec4 reg_tmp10 = vec4(0.0, 0.0, 0.0, 1.0);
vec4 reg_tmp11 = vec4(0.0, 0.0, 0.0, 1.0);
vec4 reg_tmp12 = vec4(0.0, 0.0, 0.0, 1.0);
vec4 reg_tmp13 = vec4(0.0, 0.0, 0.0, 1.0);
vec4 reg_tmp14 = vec4(0.0, 0.0, 0.0, 1.0);
vec4 reg_tmp15 = vec4(0.0, 0.0, 0.0, 1.0);

bool sub_0_4096();
bool sub_7_12();
bool sub_12_22();
bool sub_22_36();
bool sub_36_211();
bool sub_42_146();
bool sub_49_50();
bool sub_50_51();
bool sub_53_82();
bool sub_64_68();
bool sub_82_141();
bool sub_83_115();
bool sub_94_98();
bool sub_115_140();
bool sub_126_130();
bool sub_146_210();
bool sub_149_162();
bool sub_151_152();
bool sub_162_167();
bool sub_168_180();
bool sub_180_205();
bool sub_181_199();
bool sub_199_204();
bool sub_211_228();
bool sub_228_304();
bool sub_267_287();
bool sub_268_273();
bool sub_273_286();
bool sub_277_280();
bool sub_280_285();
bool sub_287_300();
bool sub_288_293();
bool sub_293_299();
bool sub_304_321();
bool sub_310_315();
bool sub_312_313();
bool sub_319_320();
bool sub_321_367();
bool sub_325_366();
bool sub_330_332();
bool sub_332_356();
bool sub_335_340();
bool sub_346_355();
bool sub_350_351();
bool sub_351_354();
bool sub_358_365();
bool sub_367_377();
bool sub_374_375();
bool sub_377_404();
bool sub_379_384();
bool sub_384_403();
bool sub_387_393();
bool sub_393_402();
bool sub_394_398();
bool sub_398_401();
bool sub_404_412();
bool sub_406_407();
bool sub_407_411();
bool sub_408_409();
bool sub_409_410();
bool sub_412_419();
bool sub_419_423();
bool sub_423_449();
bool sub_425_430();
bool sub_430_448();
bool sub_431_446();
bool sub_435_442();
bool sub_442_445();
bool sub_446_447();
bool sub_449_466();
bool sub_451_456();
bool sub_456_465();
bool sub_457_463();
bool sub_463_464();

bool exec_shader() {
    sub_0_4096();
    return true;
}

bool sub_0_4096() {
    // 0: call
    {
        sub_36_211();
    }
    // 1: call
    {
        sub_304_321();
    }
    // 2: call
    {
        sub_377_404();
    }
    // 3: call
    {
        sub_423_449();
    }
    // 4: call
    {
        sub_449_466();
    }
    // 5: end
    return true;
}
bool sub_7_12() {
    // 7: mova
    address_registers.x = (ivec2(reg_tmp1.xx)).x;
    // 8: dp4
    reg_tmp3.x = dot_s(uniforms.f[25 + address_registers.x], reg_tmp15);
    // 9: dp4
    reg_tmp3.y = dot_s(uniforms.f[26 + address_registers.x], reg_tmp15);
    // 10: dp4
    reg_tmp3.z = dot_s(uniforms.f[27 + address_registers.x], reg_tmp15);
    // 11: mad
    reg_tmp7 = fma_s(reg_tmp1.wwww, reg_tmp3, reg_tmp7);
    return false;
}
bool sub_12_22() {
    // 12: add
    reg_tmp1.y = (reg_tmp1.yyyy + reg_tmp2.yyyy).y;
    // 13: mova
    address_registers.xy = ivec2(reg_tmp1.xy);
    // 14: dp4
    reg_tmp3.x = dot_s(uniforms.f[25 + address_registers.x], reg_tmp15);
    // 15: dp4
    reg_tmp3.y = dot_s(uniforms.f[26 + address_registers.x], reg_tmp15);
    // 16: dp4
    reg_tmp3.z = dot_s(uniforms.f[27 + address_registers.x], reg_tmp15);
    // 17: dp3
    reg_tmp4.x = dot_3(uniforms.f[25 + address_registers.y].xyz, reg_tmp14.xyz);
    // 18: dp3
    reg_tmp4.y = dot_3(uniforms.f[26 + address_registers.y].xyz, reg_tmp14.xyz);
    // 19: dp3
    reg_tmp4.z = dot_3(uniforms.f[27 + address_registers.y].xyz, reg_tmp14.xyz);
    // 20: mad
    reg_tmp7 = fma_s(reg_tmp1.wwww, reg_tmp3, reg_tmp7);
    // 21: mad
    reg_tmp12 = fma_s(reg_tmp1.wwww, reg_tmp4, reg_tmp12);
    return false;
}
bool sub_22_36() {
    // 22: add
    reg_tmp1.y = (reg_tmp1.yyyy + reg_tmp2.yyyy).y;
    // 23: mova
    address_registers.xy = ivec2(reg_tmp1.xy);
    // 24: dp4
    reg_tmp3.x = dot_s(uniforms.f[25 + address_registers.x], reg_tmp15);
    // 25: dp4
    reg_tmp3.y = dot_s(uniforms.f[26 + address_registers.x], reg_tmp15);
    // 26: dp4
    reg_tmp3.z = dot_s(uniforms.f[27 + address_registers.x], reg_tmp15);
    // 27: dp3
    reg_tmp4.x = dot_3(uniforms.f[25 + address_registers.y].xyz, reg_tmp14.xyz);
    // 28: dp3
    reg_tmp4.y = dot_3(uniforms.f[26 + address_registers.y].xyz, reg_tmp14.xyz);
    // 29: dp3
    reg_tmp4.z = dot_3(uniforms.f[27 + address_registers.y].xyz, reg_tmp14.xyz);
    // 30: dp3
    reg_tmp5.x = dot_3(uniforms.f[25 + address_registers.y].xyz, reg_tmp13.xyz);
    // 31: dp3
    reg_tmp5.y = dot_3(uniforms.f[26 + address_registers.y].xyz, reg_tmp13.xyz);
    // 32: dp3
    reg_tmp5.z = dot_3(uniforms.f[27 + address_registers.y].xyz, reg_tmp13.xyz);
    // 33: mad
    reg_tmp7 = fma_s(reg_tmp1.wwww, reg_tmp3, reg_tmp7);
    // 34: mad
    reg_tmp12 = fma_s(reg_tmp1.wwww, reg_tmp4, reg_tmp12);
    // 35: mad
    reg_tmp11 = fma_s(reg_tmp1.wwww, reg_tmp5, reg_tmp11);
    return false;
}
bool sub_36_211() {
    // 36: mul
    reg_tmp15.xyz = (mul_s(uniforms.f[7].xxxx, vs_in_reg0)).xyz;
    // 37: mul
    reg_tmp14.xyz = (mul_s(uniforms.f[7].yyyy, vs_in_reg1)).xyz;
    // 38: mul
    reg_tmp13.xyz = (mul_s(uniforms.f[7].zzzz, vs_in_reg2)).xyz;
    // 39: add
    reg_tmp15.xyz = (uniforms.f[6] + reg_tmp15).xyz;
    // 40: mov
    reg_tmp15.w = (uniforms.f[93].yyyy).w;
    // 41: ifu
    if (uniforms.b[1]) {
        sub_42_146();
    } else {
        sub_146_210();
    }
    // 210: nop
    return false;
}
bool sub_42_146() {
    // 42: mov
    reg_tmp0 = uniforms.f[7];
    // 43: cmp
    conditional_code = notEqual(uniforms.f[93].xx, reg_tmp0.yz);
    // 44: mov
    reg_tmp7 = uniforms.f[93].xxxx;
    // 45: mov
    reg_tmp12 = uniforms.f[93].xxxx;
    // 46: mov
    reg_tmp11 = uniforms.f[93].xxxx;
    // 47: mov
    reg_tmp2.x = (uniforms.f[9].xxxx).x;
    // 48: ifu
    if (uniforms.b[4]) {
        sub_49_50();
    } else {
        sub_50_51();
    }
    // 51: mul
    reg_tmp2.xy = (mul_s(uniforms.f[93].wwww, reg_tmp2.xyyy)).xy;
    // 52: ifc
    if (all(bvec2(conditional_code.x, !conditional_code.y))) {
        sub_53_82();
    } else {
        sub_82_141();
    }
    // 141: mov
    vs_out_attr2 = -reg_tmp15;
    // 142: dp4
    vs_out_attr0.x = dot_s(uniforms.f[86], reg_tmp15);
    // 143: dp4
    vs_out_attr0.y = dot_s(uniforms.f[87], reg_tmp15);
    // 144: dp4
    vs_out_attr0.z = dot_s(uniforms.f[88], reg_tmp15);
    // 145: dp4
    vs_out_attr0.w = dot_s(uniforms.f[89], reg_tmp15);
    return false;
}
bool sub_49_50() {
    // 49: mov
    reg_tmp2.y = (uniforms.f[9].zzzz).y;
    return false;
}
bool sub_50_51() {
    // 50: mov
    reg_tmp2.y = (uniforms.f[93].xxxx).y;
    return false;
}
bool sub_53_82() {
    // 53: cmp
    conditional_code = notEqual(uniforms.f[93].xx, vs_in_reg8.zw);
    // 54: mul
    reg_tmp1.xy = (mul_s(vs_in_reg7.xxxx, reg_tmp2.xxxx)).xy;
    // 55: mul
    reg_tmp1.w = (mul_s(uniforms.f[8].wwww, vs_in_reg8.xxxx)).w;
    // 56: call
    {
        sub_12_22();
    }
    // 57: mul
    reg_tmp1.xy = (mul_s(vs_in_reg7.yyyy, reg_tmp2.xxxx)).xy;
    // 58: mul
    reg_tmp1.w = (mul_s(uniforms.f[8].wwww, vs_in_reg8.yyyy)).w;
    // 59: call
    {
        sub_12_22();
    }
    // 60: mul
    reg_tmp1.xy = (mul_s(vs_in_reg7.zzzz, reg_tmp2.xxxx)).xy;
    // 61: mul
    reg_tmp1.w = (mul_s(uniforms.f[8].wwww, vs_in_reg8.zzzz)).w;
    // 62: callc
    if (conditional_code.x) {
        sub_12_22();
    }
    // 63: ifu
    if (uniforms.b[8]) {
        sub_64_68();
    }
    // 68: mov
    reg_tmp7.w = (uniforms.f[93].yyyy).w;
    // 69: dp4
    reg_tmp10.x = dot_s(uniforms.f[0], reg_tmp7);
    // 70: dp4
    reg_tmp10.y = dot_s(uniforms.f[1], reg_tmp7);
    // 71: dp4
    reg_tmp10.z = dot_s(uniforms.f[2], reg_tmp7);
    // 72: mov
    reg_tmp10.w = (uniforms.f[93].yyyy).w;
    // 73: dp4
    reg_tmp15.x = dot_s(uniforms.f[90], reg_tmp10);
    // 74: dp4
    reg_tmp15.y = dot_s(uniforms.f[91], reg_tmp10);
    // 75: dp4
    reg_tmp15.z = dot_s(uniforms.f[92], reg_tmp10);
    // 76: mov
    reg_tmp15.w = (uniforms.f[93].yyyy).w;
    // 77: dp3
    reg_tmp14.x = dot_3(uniforms.f[3].xyz, reg_tmp12.xyz);
    // 78: dp3
    reg_tmp14.y = dot_3(uniforms.f[4].xyz, reg_tmp12.xyz);
    // 79: dp3
    reg_tmp14.z = dot_3(uniforms.f[5].xyz, reg_tmp12.xyz);
    // 80: call
    {
        sub_211_228();
    }
    // 81: nop
    return false;
}
bool sub_64_68() {
    // 64: mul
    reg_tmp1.xy = (mul_s(vs_in_reg7.wwww, reg_tmp2.xxxx)).xy;
    // 65: mul
    reg_tmp1.w = (mul_s(uniforms.f[8].wwww, vs_in_reg8.wwww)).w;
    // 66: callc
    if (conditional_code.y) {
        sub_12_22();
    }
    // 67: nop
    return false;
}
bool sub_82_141() {
    // 82: ifc
    if (all(conditional_code)) {
        sub_83_115();
    } else {
        sub_115_140();
    }
    // 140: nop
    return false;
}
bool sub_83_115() {
    // 83: cmp
    conditional_code = notEqual(uniforms.f[93].xx, vs_in_reg8.zw);
    // 84: mul
    reg_tmp1.xy = (mul_s(vs_in_reg7.xxxx, reg_tmp2.xxxx)).xy;
    // 85: mul
    reg_tmp1.w = (mul_s(uniforms.f[8].wwww, vs_in_reg8.xxxx)).w;
    // 86: call
    {
        sub_22_36();
    }
    // 87: mul
    reg_tmp1.xy = (mul_s(vs_in_reg7.yyyy, reg_tmp2.xxxx)).xy;
    // 88: mul
    reg_tmp1.w = (mul_s(uniforms.f[8].wwww, vs_in_reg8.yyyy)).w;
    // 89: call
    {
        sub_22_36();
    }
    // 90: mul
    reg_tmp1.xy = (mul_s(vs_in_reg7.zzzz, reg_tmp2.xxxx)).xy;
    // 91: mul
    reg_tmp1.w = (mul_s(uniforms.f[8].wwww, vs_in_reg8.zzzz)).w;
    // 92: callc
    if (conditional_code.x) {
        sub_22_36();
    }
    // 93: ifu
    if (uniforms.b[8]) {
        sub_94_98();
    }
    // 98: mov
    reg_tmp7.w = (uniforms.f[93].yyyy).w;
    // 99: dp4
    reg_tmp10.x = dot_s(uniforms.f[0], reg_tmp7);
    // 100: dp4
    reg_tmp10.y = dot_s(uniforms.f[1], reg_tmp7);
    // 101: dp4
    reg_tmp10.z = dot_s(uniforms.f[2], reg_tmp7);
    // 102: mov
    reg_tmp10.w = (uniforms.f[93].yyyy).w;
    // 103: dp3
    reg_tmp13.x = dot_3(uniforms.f[3].xyz, reg_tmp11.xyz);
    // 104: dp3
    reg_tmp13.y = dot_3(uniforms.f[4].xyz, reg_tmp11.xyz);
    // 105: dp3
    reg_tmp13.z = dot_3(uniforms.f[5].xyz, reg_tmp11.xyz);
    // 106: dp3
    reg_tmp14.x = dot_3(uniforms.f[3].xyz, reg_tmp12.xyz);
    // 107: dp3
    reg_tmp14.y = dot_3(uniforms.f[4].xyz, reg_tmp12.xyz);
    // 108: dp3
    reg_tmp14.z = dot_3(uniforms.f[5].xyz, reg_tmp12.xyz);
    // 109: dp4
    reg_tmp15.x = dot_s(uniforms.f[90], reg_tmp10);
    // 110: dp4
    reg_tmp15.y = dot_s(uniforms.f[91], reg_tmp10);
    // 111: dp4
    reg_tmp15.z = dot_s(uniforms.f[92], reg_tmp10);
    // 112: mov
    reg_tmp15.w = (uniforms.f[93].yyyy).w;
    // 113: call
    {
        sub_228_304();
    }
    // 114: nop
    return false;
}
bool sub_94_98() {
    // 94: mul
    reg_tmp1.xy = (mul_s(vs_in_reg7.wwww, reg_tmp2.xxxx)).xy;
    // 95: mul
    reg_tmp1.w = (mul_s(uniforms.f[8].wwww, vs_in_reg8.wwww)).w;
    // 96: callc
    if (conditional_code.y) {
        sub_22_36();
    }
    // 97: nop
    return false;
}
bool sub_115_140() {
    // 115: cmp
    conditional_code = notEqual(uniforms.f[93].xx, vs_in_reg8.zw);
    // 116: mul
    reg_tmp1.xy = (mul_s(vs_in_reg7.xxxx, reg_tmp2.xxxx)).xy;
    // 117: mul
    reg_tmp1.w = (mul_s(uniforms.f[8].wwww, vs_in_reg8.xxxx)).w;
    // 118: call
    {
        sub_7_12();
    }
    // 119: mul
    reg_tmp1.xy = (mul_s(vs_in_reg7.yyyy, reg_tmp2.xxxx)).xy;
    // 120: mul
    reg_tmp1.w = (mul_s(uniforms.f[8].wwww, vs_in_reg8.yyyy)).w;
    // 121: call
    {
        sub_7_12();
    }
    // 122: mul
    reg_tmp1.xy = (mul_s(vs_in_reg7.zzzz, reg_tmp2.xxxx)).xy;
    // 123: mul
    reg_tmp1.w = (mul_s(uniforms.f[8].wwww, vs_in_reg8.zzzz)).w;
    // 124: callc
    if (conditional_code.x) {
        sub_7_12();
    }
    // 125: ifu
    if (uniforms.b[8]) {
        sub_126_130();
    }
    // 130: mov
    reg_tmp7.w = (uniforms.f[93].yyyy).w;
    // 131: dp4
    reg_tmp10.x = dot_s(uniforms.f[0], reg_tmp7);
    // 132: dp4
    reg_tmp10.y = dot_s(uniforms.f[1], reg_tmp7);
    // 133: dp4
    reg_tmp10.z = dot_s(uniforms.f[2], reg_tmp7);
    // 134: mov
    reg_tmp10.w = (uniforms.f[93].yyyy).w;
    // 135: dp4
    reg_tmp15.x = dot_s(uniforms.f[90], reg_tmp10);
    // 136: dp4
    reg_tmp15.y = dot_s(uniforms.f[91], reg_tmp10);
    // 137: dp4
    reg_tmp15.z = dot_s(uniforms.f[92], reg_tmp10);
    // 138: mov
    reg_tmp15.w = (uniforms.f[93].yyyy).w;
    // 139: mov
    vs_out_attr1 = uniforms.f[93].xxxx;
    return false;
}
bool sub_126_130() {
    // 126: mul
    reg_tmp1.xy = (mul_s(vs_in_reg7.wwww, reg_tmp2.xxxx)).xy;
    // 127: mul
    reg_tmp1.w = (mul_s(uniforms.f[8].wwww, vs_in_reg8.wwww)).w;
    // 128: callc
    if (conditional_code.y) {
        sub_7_12();
    }
    // 129: nop
    return false;
}
bool sub_146_210() {
    // 146: mov
    reg_tmp0 = uniforms.f[7];
    // 147: cmp
    conditional_code = notEqual(uniforms.f[93].xx, reg_tmp0.yz);
    // 148: ifu
    if (uniforms.b[2]) {
        sub_149_162();
    } else {
        sub_162_167();
    }
    // 167: ifc
    if (all(bvec2(conditional_code.x, !conditional_code.y))) {
        sub_168_180();
    } else {
        sub_180_205();
    }
    // 205: mov
    vs_out_attr2 = -reg_tmp15;
    // 206: dp4
    vs_out_attr0.x = dot_s(uniforms.f[86], reg_tmp15);
    // 207: dp4
    vs_out_attr0.y = dot_s(uniforms.f[87], reg_tmp15);
    // 208: dp4
    vs_out_attr0.z = dot_s(uniforms.f[88], reg_tmp15);
    // 209: dp4
    vs_out_attr0.w = dot_s(uniforms.f[89], reg_tmp15);
    return false;
}
bool sub_149_162() {
    // 149: mul
    reg_tmp1.xy = (mul_s(uniforms.f[9].xxxx, vs_in_reg7.xxxx)).xy;
    // 150: ifu
    if (uniforms.b[4]) {
        sub_151_152();
    }
    // 152: mul
    reg_tmp1.xy = (mul_s(uniforms.f[93].wwww, reg_tmp1.xyyy)).xy;
    // 153: mova
    address_registers.xy = ivec2(reg_tmp1.xy);
    // 154: dp4
    reg_tmp7.x = dot_s(uniforms.f[25 + address_registers.x], reg_tmp15);
    // 155: dp4
    reg_tmp7.y = dot_s(uniforms.f[26 + address_registers.x], reg_tmp15);
    // 156: dp4
    reg_tmp7.z = dot_s(uniforms.f[27 + address_registers.x], reg_tmp15);
    // 157: mov
    reg_tmp7.w = (uniforms.f[93].yyyy).w;
    // 158: dp4
    reg_tmp10.x = dot_s(uniforms.f[0], reg_tmp7);
    // 159: dp4
    reg_tmp10.y = dot_s(uniforms.f[1], reg_tmp7);
    // 160: dp4
    reg_tmp10.z = dot_s(uniforms.f[2], reg_tmp7);
    // 161: mov
    reg_tmp10.w = (uniforms.f[93].yyyy).w;
    return false;
}
bool sub_151_152() {
    // 151: add
    reg_tmp1.y = (uniforms.f[9].zzzz + reg_tmp1.yyyy).y;
    return false;
}
bool sub_162_167() {
    // 162: mova
    address_registers.xy = ivec2(uniforms.f[93].xx);
    // 163: dp4
    reg_tmp10.x = dot_s(uniforms.f[25], reg_tmp15);
    // 164: dp4
    reg_tmp10.y = dot_s(uniforms.f[26], reg_tmp15);
    // 165: dp4
    reg_tmp10.z = dot_s(uniforms.f[27], reg_tmp15);
    // 166: mov
    reg_tmp10.w = (uniforms.f[93].yyyy).w;
    return false;
}
bool sub_168_180() {
    // 168: dp3
    reg_tmp12.x = dot_3(uniforms.f[25 + address_registers.y].xyz, reg_tmp14.xyz);
    // 169: dp3
    reg_tmp12.y = dot_3(uniforms.f[26 + address_registers.y].xyz, reg_tmp14.xyz);
    // 170: dp3
    reg_tmp12.z = dot_3(uniforms.f[27 + address_registers.y].xyz, reg_tmp14.xyz);
    // 171: dp4
    reg_tmp15.x = dot_s(uniforms.f[90], reg_tmp10);
    // 172: dp4
    reg_tmp15.y = dot_s(uniforms.f[91], reg_tmp10);
    // 173: dp4
    reg_tmp15.z = dot_s(uniforms.f[92], reg_tmp10);
    // 174: mov
    reg_tmp15.w = (uniforms.f[93].yyyy).w;
    // 175: dp3
    reg_tmp14.x = dot_3(uniforms.f[3].xyz, reg_tmp12.xyz);
    // 176: dp3
    reg_tmp14.y = dot_3(uniforms.f[4].xyz, reg_tmp12.xyz);
    // 177: dp3
    reg_tmp14.z = dot_3(uniforms.f[5].xyz, reg_tmp12.xyz);
    // 178: call
    {
        sub_211_228();
    }
    // 179: nop
    return false;
}
bool sub_180_205() {
    // 180: ifc
    if (all(conditional_code)) {
        sub_181_199();
    } else {
        sub_199_204();
    }
    // 204: nop
    return false;
}
bool sub_181_199() {
    // 181: dp3
    reg_tmp12.x = dot_3(uniforms.f[25 + address_registers.y].xyz, reg_tmp14.xyz);
    // 182: dp3
    reg_tmp12.y = dot_3(uniforms.f[26 + address_registers.y].xyz, reg_tmp14.xyz);
    // 183: dp3
    reg_tmp12.z = dot_3(uniforms.f[27 + address_registers.y].xyz, reg_tmp14.xyz);
    // 184: dp3
    reg_tmp11.x = dot_3(uniforms.f[25 + address_registers.y].xyz, reg_tmp13.xyz);
    // 185: dp3
    reg_tmp11.y = dot_3(uniforms.f[26 + address_registers.y].xyz, reg_tmp13.xyz);
    // 186: dp3
    reg_tmp11.z = dot_3(uniforms.f[27 + address_registers.y].xyz, reg_tmp13.xyz);
    // 187: dp4
    reg_tmp15.x = dot_s(uniforms.f[90], reg_tmp10);
    // 188: dp4
    reg_tmp15.y = dot_s(uniforms.f[91], reg_tmp10);
    // 189: dp4
    reg_tmp15.z = dot_s(uniforms.f[92], reg_tmp10);
    // 190: mov
    reg_tmp15.w = (uniforms.f[93].yyyy).w;
    // 191: dp3
    reg_tmp14.x = dot_3(uniforms.f[3].xyz, reg_tmp12.xyz);
    // 192: dp3
    reg_tmp14.y = dot_3(uniforms.f[4].xyz, reg_tmp12.xyz);
    // 193: dp3
    reg_tmp14.z = dot_3(uniforms.f[5].xyz, reg_tmp12.xyz);
    // 194: dp3
    reg_tmp13.x = dot_3(uniforms.f[3].xyz, reg_tmp11.xyz);
    // 195: dp3
    reg_tmp13.y = dot_3(uniforms.f[4].xyz, reg_tmp11.xyz);
    // 196: dp3
    reg_tmp13.z = dot_3(uniforms.f[5].xyz, reg_tmp11.xyz);
    // 197: call
    {
        sub_228_304();
    }
    // 198: nop
    return false;
}
bool sub_199_204() {
    // 199: dp4
    reg_tmp15.x = dot_s(uniforms.f[90], reg_tmp10);
    // 200: dp4
    reg_tmp15.y = dot_s(uniforms.f[91], reg_tmp10);
    // 201: dp4
    reg_tmp15.z = dot_s(uniforms.f[92], reg_tmp10);
    // 202: mov
    reg_tmp15.w = (uniforms.f[93].yyyy).w;
    // 203: mov
    vs_out_attr1 = uniforms.f[93].xxxx;
    return false;
}
bool sub_211_228() {
    uint jmp_to = 211u;
    while (true) {
        switch (jmp_to) {
        case 211u: {
            // 211: dp3
            reg_tmp6.x = dot_3(reg_tmp14.xyz, reg_tmp14.xyz);
            // 212: dp3
            reg_tmp7.x = dot_3(reg_tmp12.xyz, reg_tmp12.xyz);
            // 213: rsq
            reg_tmp6.x = rsq_s(reg_tmp6.x);
            // 214: rsq
            reg_tmp7.x = rsq_s(reg_tmp7.x);
            // 215: mul
            reg_tmp14.xyz = (mul_s(reg_tmp14.xyzz, reg_tmp6.xxxx)).xyz;
            // 216: mul
            reg_tmp12.xyz = (mul_s(reg_tmp12.xyzz, reg_tmp7.xxxx)).xyz;
            // 217: mov
            reg_tmp0 = uniforms.f[93].yxxx;
            // 218: jmpu
            if (!uniforms.b[15]) {
                { jmp_to = 227u; break; }
            }
            // 219: add
            reg_tmp4 = uniforms.f[93].yyyy + reg_tmp14.zzzz;
            // 220: mul
            reg_tmp4 = mul_s(uniforms.f[94].zzzz, reg_tmp4);
            // 221: cmp
            conditional_code = greaterThanEqual(uniforms.f[93].xx, reg_tmp4.xx);
            // 222: rsq
            reg_tmp4 = vec4(rsq_s(reg_tmp4.x));
            // 223: mul
            reg_tmp5 = mul_s(uniforms.f[94].zzzz, reg_tmp14);
            // 224: jmpc
            if (conditional_code.x) {
                { jmp_to = 227u; break; }
            }
            // 225: rcp
            reg_tmp0.z = rcp_s(reg_tmp4.x);
            // 226: mul
            reg_tmp0.xy = (mul_s(reg_tmp5, reg_tmp4)).xy;
        }
        case 227u: {
            // 227: mov
            vs_out_attr1 = reg_tmp0;
        }
        default: return false;
        }
    }
    return false;
}
bool sub_228_304() {
    uint jmp_to = 228u;
    while (true) {
        switch (jmp_to) {
        case 228u: {
            // 228: dp3
            reg_tmp6.x = dot_3(reg_tmp14.xyz, reg_tmp14.xyz);
            // 229: dp3
            reg_tmp7.x = dot_3(reg_tmp12.xyz, reg_tmp12.xyz);
            // 230: rsq
            reg_tmp6.x = rsq_s(reg_tmp6.x);
            // 231: rsq
            reg_tmp7.x = rsq_s(reg_tmp7.x);
            // 232: mul
            reg_tmp14.xyz = (mul_s(reg_tmp14.xyzz, reg_tmp6.xxxx)).xyz;
            // 233: mul
            reg_tmp12.xyz = (mul_s(reg_tmp12.xyzz, reg_tmp7.xxxx)).xyz;
            // 234: mul
            reg_tmp13.xyz = (mul_s(reg_tmp13.xyzz, reg_tmp6.xxxx)).xyz;
            // 235: mul
            reg_tmp11.xyz = (mul_s(reg_tmp11.xyzz, reg_tmp7.xxxx)).xyz;
            // 236: mov
            reg_tmp0 = uniforms.f[93].yxxx;
            // 237: jmpu
            if (!uniforms.b[15]) {
                { jmp_to = 303u; break; }
            }
            // 238: mul
            reg_tmp13.xyz = (mul_s(reg_tmp13.xyzz, reg_tmp6.xxxx)).xyz;
            // 239: mul
            reg_tmp11.xyz = (mul_s(reg_tmp11.xyzz, reg_tmp7.xxxx)).xyz;
            // 240: mul
            reg_tmp5 = mul_s(reg_tmp14.yzxx, reg_tmp13.zxyy);
            // 241: mad
            reg_tmp5 = fma_s(-reg_tmp13.yzxx, reg_tmp14.zxyy, reg_tmp5);
            // 242: dp3
            reg_tmp5.w = dot_3(reg_tmp5.xyz, reg_tmp5.xyz);
            // 243: rsq
            reg_tmp5.w = rsq_s(reg_tmp5.w);
            // 244: mul
            reg_tmp5 = mul_s(reg_tmp5, reg_tmp5.wwww);
            // 245: add
            reg_tmp6.w = (reg_tmp14.zzzz + reg_tmp5.yyyy).w;
            // 246: mul
            reg_tmp13 = mul_s(reg_tmp5.yzxx, reg_tmp14.zxyy);
            // 247: mad
            reg_tmp13 = fma_s(-reg_tmp14.yzxx, reg_tmp5.zxyy, reg_tmp13);
            // 248: add
            reg_tmp6.w = (reg_tmp13.xxxx + reg_tmp6).w;
            // 249: mov
            reg_tmp13.w = (reg_tmp5.zzzz).w;
            // 250: mov
            reg_tmp5.z = (reg_tmp13.xxxx).z;
            // 251: add
            reg_tmp6.w = (uniforms.f[93].yyyy + reg_tmp6).w;
            // 252: mov
            reg_tmp14.w = (reg_tmp5.xxxx).w;
            // 253: mov
            reg_tmp5.x = (reg_tmp14.zzzz).x;
            // 254: cmp
            conditional_code = lessThan(uniforms.f[94].yy, reg_tmp6.ww);
            // 255: mov
            reg_tmp6.x = (uniforms.f[93].yyyy).x;
            // 256: mov
            reg_tmp6.y = (-uniforms.f[93].yyyy).y;
            // 257: jmpc
            if (!conditional_code.x) {
                { jmp_to = 265u; break; }
            }
            // 258: add
            reg_tmp7.xz = (reg_tmp13.wwyy + -reg_tmp14.yyww).xz;
            // 259: add
            reg_tmp7.y = (reg_tmp14.xxxx + -reg_tmp13.zzzz).y;
            // 260: mov
            reg_tmp7.w = (reg_tmp6).w;
            // 261: dp4
            reg_tmp6 = vec4(dot_s(reg_tmp7, reg_tmp7));
            // 262: rsq
            reg_tmp6 = vec4(rsq_s(reg_tmp6.x));
            // 263: mul
            reg_tmp0 = mul_s(reg_tmp7, reg_tmp6);
            // 264: jmpu
            if (uniforms.b[0]) {
                { jmp_to = 303u; break; }
            }
        }
        case 265u: {
            // 265: cmp
            conditional_code = greaterThan(reg_tmp5.zy, reg_tmp5.yx);
            // 266: ifc
            if (conditional_code.x) {
                sub_267_287();
            } else {
                sub_287_300();
            }
            // 300: dp4
            reg_tmp6 = vec4(dot_s(reg_tmp8, reg_tmp8));
            // 301: rsq
            reg_tmp6 = vec4(rsq_s(reg_tmp6.x));
            // 302: mul
            reg_tmp0 = mul_s(reg_tmp8, reg_tmp6);
        }
        case 303u: {
            // 303: mov
            vs_out_attr1 = reg_tmp0;
        }
        default: return false;
        }
    }
    return false;
}
bool sub_267_287() {
    // 267: ifc
    if (conditional_code.y) {
        sub_268_273();
    } else {
        sub_273_286();
    }
    // 286: mov
    reg_tmp8.w = (-reg_tmp8).w;
    return false;
}
bool sub_268_273() {
    // 268: mul
    reg_tmp8 = mul_s(reg_tmp13.yyzw, reg_tmp6.xxxy);
    // 269: add
    reg_tmp8.x = (uniforms.f[93].yyyy + -reg_tmp5.yyyy).x;
    // 270: add
    reg_tmp9 = reg_tmp5.zzzz + -reg_tmp5.xxxx;
    // 271: add
    reg_tmp8.yzw = (reg_tmp8 + reg_tmp14.wwxy).yzw;
    // 272: add
    reg_tmp8.x = (reg_tmp9 + reg_tmp8).x;
    return false;
}
bool sub_273_286() {
    // 273: cmp
    conditional_code = greaterThan(reg_tmp5.zz, reg_tmp5.xx);
    // 274: mul
    reg_tmp8 = mul_s(reg_tmp13.yyzw, reg_tmp6.xxxy);
    // 275: add
    reg_tmp8.x = (uniforms.f[93].yyyy + -reg_tmp5.yyyy).x;
    // 276: ifc
    if (conditional_code.x) {
        sub_277_280();
    } else {
        sub_280_285();
    }
    // 285: nop
    return false;
}
bool sub_277_280() {
    // 277: add
    reg_tmp9 = reg_tmp5.zzzz + -reg_tmp5.xxxx;
    // 278: add
    reg_tmp8.yzw = (reg_tmp8 + reg_tmp14.wwxy).yzw;
    // 279: add
    reg_tmp8.x = (reg_tmp9 + reg_tmp8).x;
    return false;
}
bool sub_280_285() {
    // 280: mul
    reg_tmp8 = mul_s(reg_tmp13.zwwy, reg_tmp6.xxxy);
    // 281: add
    reg_tmp8.z = (uniforms.f[93].yyyy + -reg_tmp5.zzzz).z;
    // 282: add
    reg_tmp9 = reg_tmp5.xxxx + -reg_tmp5.yyyy;
    // 283: add
    reg_tmp8.xyw = (reg_tmp8 + reg_tmp14.xyyw).xyw;
    // 284: add
    reg_tmp8.z = (reg_tmp9 + reg_tmp8).z;
    return false;
}
bool sub_287_300() {
    // 287: ifc
    if (conditional_code.y) {
        sub_288_293();
    } else {
        sub_293_299();
    }
    // 299: nop
    return false;
}
bool sub_288_293() {
    // 288: mul
    reg_tmp8 = mul_s(reg_tmp13.yywz, reg_tmp6.xxxy);
    // 289: add
    reg_tmp8.y = (uniforms.f[93].yyyy + -reg_tmp5.zzzz).y;
    // 290: add
    reg_tmp9 = reg_tmp5.yyyy + -reg_tmp5.xxxx;
    // 291: add
    reg_tmp8.xzw = (reg_tmp8 + reg_tmp14.wwyx).xzw;
    // 292: add
    reg_tmp8.y = (reg_tmp9 + reg_tmp8).y;
    return false;
}
bool sub_293_299() {
    // 293: mul
    reg_tmp8 = mul_s(reg_tmp13.zwwy, reg_tmp6.xxxy);
    // 294: add
    reg_tmp8.z = (uniforms.f[93].yyyy + -reg_tmp5.zzzz).z;
    // 295: add
    reg_tmp9 = reg_tmp5.xxxx + -reg_tmp5.yyyy;
    // 296: add
    reg_tmp8.xyw = (reg_tmp8 + reg_tmp14.xyyw).xyw;
    // 297: add
    reg_tmp8.z = (reg_tmp9 + reg_tmp8).z;
    // 298: mov
    reg_tmp8.w = (-reg_tmp8).w;
    return false;
}
bool sub_304_321() {
    // 304: mov
    reg_tmp8.xy = (uniforms.f[93].xxxx).xy;
    // 305: mov
    reg_tmp0.y = (uniforms.f[7].wwww).y;
    // 306: cmp
    conditional_code = notEqual(uniforms.f[93].xx, reg_tmp0.xy);
    // 307: mov
    reg_tmp9.xyz = (uniforms.f[93].xxxx).xyz;
    // 308: mov
    reg_tmp9.w = (uniforms.f[21].wwww).w;
    // 309: ifc
    if (conditional_code.y) {
        sub_310_315();
    }
    // 315: callu
    if (uniforms.b[12]) {
        sub_321_367();
    }
    // 316: callu
    if (uniforms.b[5]) {
        sub_367_377();
    }
    // 317: cmp
    conditional_code = equal(uniforms.f[93].xx, reg_tmp8.xy);
    // 318: ifc
    if (all(conditional_code)) {
        sub_319_320();
    }
    // 320: max
    vs_out_attr3 = max(uniforms.f[93].xxxx, reg_tmp9);
    return false;
}
bool sub_310_315() {
    // 310: mul
    reg_tmp0 = mul_s(uniforms.f[7].wwww, vs_in_reg3);
    // 311: ifu
    if (uniforms.b[7]) {
        sub_312_313();
    }
    // 313: mul
    reg_tmp9.xyz = (mul_s(uniforms.f[20].wwww, reg_tmp0.xyzz)).xyz;
    // 314: mov
    reg_tmp8.x = (uniforms.f[93].yyyy).x;
    return false;
}
bool sub_312_313() {
    // 312: mul
    reg_tmp9.w = (mul_s(reg_tmp9.wwww, reg_tmp0.wwww)).w;
    return false;
}
bool sub_319_320() {
    // 319: mov
    reg_tmp9 = uniforms.f[21];
    return false;
}
bool sub_321_367() {
    // 321: mov
    reg_tmp1 = uniforms.f[20];
    // 322: mov
    reg_tmp2 = uniforms.f[21];
    // 323: mov
    reg_tmp3 = uniforms.f[93].xxxx;
    // 324: loop
    address_registers.z = int(uniforms.i[0].y);
    for (uint loop324 = 0u; loop324 <= uniforms.i[0].x; address_registers.z += int(uniforms.i[0].z), ++loop324) {
        sub_325_366();
    }
    // 366: mov
    reg_tmp8.x = (uniforms.f[93].yyyy).x;
    return false;
}
bool sub_325_366() {
    // 325: mova
    address_registers.x = (ivec2(reg_tmp3.xy)).x;
    // 326: mov
    reg_tmp4.x = (uniforms.f[81 + address_registers.x].wwww).x;
    // 327: mov
    reg_tmp4.y = (uniforms.f[83 + address_registers.x].wwww).y;
    // 328: cmp
    conditional_code = equal(uniforms.f[93].xy, reg_tmp4.xy);
    // 329: ifc
    if (conditional_code.x) {
        sub_330_332();
    } else {
        sub_332_356();
    }
    // 356: cmp
    conditional_code.x = uniforms.f[93].xxxx.x == reg_tmp6.xyyy.x;
    conditional_code.y = uniforms.f[93].xxxx.y < reg_tmp6.xyyy.y;
    // 357: ifc
    if (conditional_code.y) {
        sub_358_365();
    }
    // 365: add
    reg_tmp3 = -uniforms.f[95].wwww + reg_tmp3;
    return false;
}
bool sub_330_332() {
    // 330: dp3
    reg_tmp6.x = dot_3(uniforms.f[81 + address_registers.x].xyz, reg_tmp14.xyz);
    // 331: mov
    reg_tmp6.y = (uniforms.f[93].yyyy).y;
    return false;
}
bool sub_332_356() {
    // 332: add
    reg_tmp4 = uniforms.f[81 + address_registers.x] + -reg_tmp15;
    // 333: mov
    reg_tmp6.y = (uniforms.f[93].yyyy).y;
    // 334: ifc
    if (conditional_code.y) {
        sub_335_340();
    }
    // 340: mov
    reg_tmp5 = uniforms.f[82 + address_registers.x];
    // 341: cmp
    conditional_code = equal(uniforms.f[93].yy, reg_tmp5.ww);
    // 342: dp3
    reg_tmp4.w = dot_3(reg_tmp4.xyz, reg_tmp4.xyz);
    // 343: rsq
    reg_tmp4.w = rsq_s(reg_tmp4.w);
    // 344: mul
    reg_tmp4 = mul_s(reg_tmp4, reg_tmp4.wwww);
    // 345: ifc
    if (conditional_code.x) {
        sub_346_355();
    }
    // 355: dp3
    reg_tmp6.x = dot_3(reg_tmp14.xyz, reg_tmp4.xyz);
    return false;
}
bool sub_335_340() {
    // 335: mov
    reg_tmp5.x = (uniforms.f[93].yyyy).x;
    // 336: dp3
    reg_tmp5.z = dot_3(reg_tmp4.xyz, reg_tmp4.xyz);
    // 337: mul
    reg_tmp5.y = (mul_s(reg_tmp5.zzzz, reg_tmp5.zzzz)).y;
    // 338: dp3
    reg_tmp6.y = dot_3(uniforms.f[83 + address_registers.x].xyz, reg_tmp5.xyz);
    // 339: rcp
    reg_tmp6.y = rcp_s(reg_tmp6.y);
    return false;
}
bool sub_346_355() {
    // 346: dp3
    reg_tmp5.x = dot_3(uniforms.f[82 + address_registers.x].xyz, -reg_tmp4.xyz);
    // 347: slti
    reg_tmp5.y = (vec4(lessThan(reg_tmp5.xxxx, uniforms.f[84 + address_registers.x].yyyy))).y;
    // 348: cmp
    conditional_code = equal(uniforms.f[93].yy, reg_tmp5.xy);
    // 349: ifc
    if (conditional_code.y) {
        sub_350_351();
    } else {
        sub_351_354();
    }
    // 354: mul
    reg_tmp6.y = (mul_s(reg_tmp6.yyyy, reg_tmp5.xxxx)).y;
    return false;
}
bool sub_350_351() {
    // 350: mov
    reg_tmp5.x = (uniforms.f[93].xxxx).x;
    return false;
}
bool sub_351_354() {
    // 351: log
    reg_tmp5.y = log2(reg_tmp5.x);
    // 352: mul
    reg_tmp5.y = (mul_s(uniforms.f[84 + address_registers.x].xxxx, reg_tmp5.yyyy)).y;
    // 353: exp
    reg_tmp5.x = exp2(reg_tmp5.y);
    return false;
}
bool sub_358_365() {
    // 358: max
    reg_tmp6.x = (max(uniforms.f[93].xxxx, reg_tmp6.xxxx)).x;
    // 359: mad
    reg_tmp9.xyz = (fma_s(reg_tmp1.xyzz, uniforms.f[79 + address_registers.x].xyzz, reg_tmp9.xyzz)).xyz;
    // 360: mul
    reg_tmp4 = mul_s(uniforms.f[80 + address_registers.x], reg_tmp2);
    // 361: mul
    reg_tmp5.xyz = (mul_s(reg_tmp6.xxxx, reg_tmp4.xyzz)).xyz;
    // 362: mul
    reg_tmp5.xyz = (mul_s(reg_tmp6.yyyy, reg_tmp5.xyzz)).xyz;
    // 363: add
    reg_tmp9.xyz = (reg_tmp9.xyzz + reg_tmp5.xyzz).xyz;
    // 364: add
    reg_tmp9.w = (reg_tmp9.wwww + reg_tmp4.wwww).w;
    return false;
}
bool sub_367_377() {
    // 367: dp3
    reg_tmp1 = vec4(dot_3(uniforms.f[24].xyz, reg_tmp14.xyz));
    // 368: mov
    reg_tmp2 = uniforms.f[24].wwww;
    // 369: mad
    reg_tmp1 = fma_s(reg_tmp1, reg_tmp2, reg_tmp2);
    // 370: mov
    reg_tmp3 = uniforms.f[22];
    // 371: add
    reg_tmp2 = uniforms.f[23] + -reg_tmp3;
    // 372: mad
    reg_tmp4 = fma_s(reg_tmp2, reg_tmp1, reg_tmp3);
    // 373: ifu
    if (uniforms.b[6]) {
        sub_374_375();
    }
    // 375: mad
    reg_tmp9.xyz = (fma_s(reg_tmp4, uniforms.f[21], reg_tmp9)).xyz;
    // 376: mov
    reg_tmp8.x = (uniforms.f[93].yyyy).x;
    return false;
}
bool sub_374_375() {
    // 374: mul
    reg_tmp4 = mul_s(reg_tmp4, reg_tmp9.wwww);
    return false;
}
bool sub_377_404() {
    // 377: mov
    reg_tmp0.xy = (uniforms.f[10].xxxx).xy;
    // 378: ifu
    if (uniforms.b[9]) {
        sub_379_384();
    } else {
        sub_384_403();
    }
    // 403: nop
    return false;
}
bool sub_379_384() {
    // 379: call
    {
        sub_404_412();
    }
    // 380: dp4
    reg_tmp3.x = dot_s(uniforms.f[11].xywz, reg_tmp6);
    // 381: dp4
    reg_tmp3.y = dot_s(uniforms.f[12].xywz, reg_tmp6);
    // 382: mov
    reg_tmp3.zw = (uniforms.f[93].xxxx).zw;
    // 383: mov
    vs_out_attr4 = reg_tmp3;
    return false;
}
bool sub_384_403() {
    // 384: cmp
    conditional_code = equal(uniforms.f[95].xy, reg_tmp0.xy);
    // 385: mov
    reg_tmp6.zw = (uniforms.f[93].xxyy).zw;
    // 386: ifc
    if (all(not(conditional_code))) {
        sub_387_393();
    } else {
        sub_393_402();
    }
    // 402: mov
    vs_out_attr4 = reg_tmp3;
    return false;
}
bool sub_387_393() {
    // 387: mov
    reg_tmp6 = reg_tmp10;
    // 388: dp4
    reg_tmp3.x = dot_s(uniforms.f[11], reg_tmp6);
    // 389: dp4
    reg_tmp3.y = dot_s(uniforms.f[12], reg_tmp6);
    // 390: dp4
    reg_tmp3.z = dot_s(uniforms.f[13], reg_tmp6);
    // 391: mul
    reg_tmp0.xy = (mul_s(uniforms.f[19].xyyy, reg_tmp3.zzzz)).xy;
    // 392: add
    reg_tmp3.xy = (reg_tmp3.xyyy + reg_tmp0.xyyy).xy;
    return false;
}
bool sub_393_402() {
    // 393: ifc
    if (all(bvec2(conditional_code.x, !conditional_code.y))) {
        sub_394_398();
    } else {
        sub_398_401();
    }
    // 401: nop
    return false;
}
bool sub_394_398() {
    // 394: call
    {
        sub_412_419();
    }
    // 395: dp3
    reg_tmp3.x = dot_3(uniforms.f[11].xyz, reg_tmp6.xyz);
    // 396: dp3
    reg_tmp3.y = dot_3(uniforms.f[12].xyz, reg_tmp6.xyz);
    // 397: dp3
    reg_tmp3.z = dot_3(uniforms.f[13].xyz, reg_tmp6.xyz);
    return false;
}
bool sub_398_401() {
    // 398: call
    {
        sub_419_423();
    }
    // 399: dp4
    reg_tmp3.x = dot_s(uniforms.f[11], reg_tmp6);
    // 400: dp4
    reg_tmp3.y = dot_s(uniforms.f[12], reg_tmp6);
    return false;
}
bool sub_404_412() {
    // 404: cmp
    conditional_code = equal(uniforms.f[93].yz, reg_tmp0.xy);
    // 405: ifc
    if (all(not(conditional_code))) {
        sub_406_407();
    } else {
        sub_407_411();
    }
    // 411: mov
    reg_tmp6.zw = (uniforms.f[93].xxyy).zw;
    return false;
}
bool sub_406_407() {
    // 406: mul
    reg_tmp6.xy = (mul_s(uniforms.f[8].xxxx, vs_in_reg4.xyyy)).xy;
    return false;
}
bool sub_407_411() {
    // 407: ifc
    if (all(bvec2(conditional_code.x, !conditional_code.y))) {
        sub_408_409();
    } else {
        sub_409_410();
    }
    // 410: nop
    return false;
}
bool sub_408_409() {
    // 408: mul
    reg_tmp6.xy = (mul_s(uniforms.f[8].yyyy, vs_in_reg5.xyyy)).xy;
    return false;
}
bool sub_409_410() {
    // 409: mul
    reg_tmp6.xy = (mul_s(uniforms.f[8].zzzz, vs_in_reg6.xyyy)).xy;
    return false;
}
bool sub_412_419() {
    // 412: mov
    reg_tmp2 = -reg_tmp15;
    // 413: dp3
    reg_tmp2.w = dot_3(reg_tmp2.xyz, reg_tmp2.xyz);
    // 414: rsq
    reg_tmp2.w = rsq_s(reg_tmp2.w);
    // 415: mul
    reg_tmp2 = mul_s(reg_tmp2, reg_tmp2.wwww);
    // 416: dp3
    reg_tmp1 = vec4(dot_3(reg_tmp2.xyz, reg_tmp14.xyz));
    // 417: add
    reg_tmp1 = reg_tmp1 + reg_tmp1;
    // 418: mad
    reg_tmp6 = fma_s(reg_tmp1, reg_tmp14, -reg_tmp2);
    return false;
}
bool sub_419_423() {
    // 419: mov
    reg_tmp1.xy = (uniforms.f[94].zzzz).xy;
    // 420: mov
    reg_tmp1.zw = (uniforms.f[93].xxxx).zw;
    // 421: mad
    reg_tmp6 = fma_s(reg_tmp14, reg_tmp1, reg_tmp1);
    // 422: mov
    reg_tmp6.zw = (uniforms.f[93].xxyy).zw;
    return false;
}
bool sub_423_449() {
    // 423: mov
    reg_tmp0.xy = (uniforms.f[10].yyyy).xy;
    // 424: ifu
    if (uniforms.b[10]) {
        sub_425_430();
    } else {
        sub_430_448();
    }
    // 448: nop
    return false;
}
bool sub_425_430() {
    // 425: call
    {
        sub_404_412();
    }
    // 426: dp4
    reg_tmp4.x = dot_s(uniforms.f[14].xywz, reg_tmp6);
    // 427: dp4
    reg_tmp4.y = dot_s(uniforms.f[15].xywz, reg_tmp6);
    // 428: mov
    reg_tmp4.zw = (reg_tmp6.zwww).zw;
    // 429: mov
    vs_out_attr5 = reg_tmp4;
    return false;
}
bool sub_430_448() {
    // 430: ifu
    if (uniforms.b[13]) {
        sub_431_446();
    } else {
        sub_446_447();
    }
    // 447: nop
    return false;
}
bool sub_431_446() {
    // 431: cmp
    conditional_code = equal(uniforms.f[95].xy, reg_tmp0.xy);
    // 432: mov
    reg_tmp6.zw = (uniforms.f[93].xxyy).zw;
    // 433: mov
    reg_tmp4.zw = (reg_tmp6.zwww).zw;
    // 434: ifc
    if (all(not(conditional_code))) {
        sub_435_442();
    } else {
        sub_442_445();
    }
    // 445: mov
    vs_out_attr5 = reg_tmp4;
    return false;
}
bool sub_435_442() {
    // 435: mov
    reg_tmp6 = reg_tmp10;
    // 436: dp4
    reg_tmp4.x = dot_s(uniforms.f[14], reg_tmp6);
    // 437: dp4
    reg_tmp4.y = dot_s(uniforms.f[15], reg_tmp6);
    // 438: dp4
    reg_tmp4.z = dot_s(uniforms.f[16], reg_tmp6);
    // 439: rcp
    reg_tmp6.w = rcp_s(reg_tmp4.z);
    // 440: mul
    reg_tmp4.xy = (mul_s(reg_tmp4.xyyy, reg_tmp6.wwww)).xy;
    // 441: add
    reg_tmp4.xy = (uniforms.f[19].zwww + reg_tmp4.xyyy).xy;
    return false;
}
bool sub_442_445() {
    // 442: call
    {
        sub_419_423();
    }
    // 443: dp4
    reg_tmp4.x = dot_s(uniforms.f[14], reg_tmp6);
    // 444: dp4
    reg_tmp4.y = dot_s(uniforms.f[15], reg_tmp6);
    return false;
}
bool sub_446_447() {
    // 446: mov
    vs_out_attr5 = uniforms.f[93].xxxx;
    return false;
}
bool sub_449_466() {
    // 449: mov
    reg_tmp0.xy = (uniforms.f[10].zzzz).xy;
    // 450: ifu
    if (uniforms.b[11]) {
        sub_451_456();
    } else {
        sub_456_465();
    }
    // 465: nop
    return false;
}
bool sub_451_456() {
    // 451: call
    {
        sub_404_412();
    }
    // 452: dp4
    reg_tmp5.x = dot_s(uniforms.f[17].xywz, reg_tmp6);
    // 453: dp4
    reg_tmp5.y = dot_s(uniforms.f[18].xywz, reg_tmp6);
    // 454: mov
    reg_tmp5.zw = (reg_tmp6.zwww).zw;
    // 455: mov
    vs_out_attr6 = reg_tmp5;
    return false;
}
bool sub_456_465() {
    // 456: ifu
    if (uniforms.b[14]) {
        sub_457_463();
    } else {
        sub_463_464();
    }
    // 464: nop
    return false;
}
bool sub_457_463() {
    // 457: mov
    reg_tmp6.zw = (uniforms.f[93].xxyy).zw;
    // 458: mov
    reg_tmp5.zw = (reg_tmp6.zwww).zw;
    // 459: call
    {
        sub_419_423();
    }
    // 460: dp4
    reg_tmp5.x = dot_s(uniforms.f[17], reg_tmp6);
    // 461: dp4
    reg_tmp5.y = dot_s(uniforms.f[18], reg_tmp6);
    // 462: mov
    vs_out_attr6 = reg_tmp5;
    return false;
}
bool sub_463_464() {
    // 463: mov
    vs_out_attr6 = uniforms.f[93].xxxx;
    return false;
}
// reference: EF28EB25ADCD979A, CA388C44D4F5C19E
// shader: 8DD9, AD7922A63ED54CA7

layout(triangles) in;
layout(triangle_strip, max_vertices = 3) out;

out vec4 primary_color;
out vec2 texcoord0;
out vec2 texcoord1;
out vec2 texcoord2;
out float texcoord0_w;
out vec4 normquat;
out vec3 view;

#define NUM_TEV_STAGES 6
#define NUM_LIGHTS 8
#define NUM_LIGHTING_SAMPLERS 24

struct LightSrc {
    vec3 specular_0;
    vec3 specular_1;
    vec3 diffuse;
    vec3 ambient;
    vec3 position;
    vec3 spot_direction;
    float dist_atten_bias;
    float dist_atten_scale;
};

layout (std140) uniform shader_data {
    int alphatest_ref;
    float depth_scale;
    float depth_offset;
    float shadow_bias_constant;
    float shadow_bias_linear;
    int scissor_x1;
    int scissor_y1;
    int scissor_x2;
    int scissor_y2;
    int fog_lut_offset;
    int proctex_noise_lut_offset;
    int proctex_color_map_offset;
    int proctex_alpha_map_offset;
    int proctex_lut_offset;
    int proctex_diff_lut_offset;
    float proctex_bias;
    vec3 fog_color;
    vec2 proctex_noise_f;
    vec2 proctex_noise_a;
    vec2 proctex_noise_p;
    vec4 const_color[NUM_TEV_STAGES];
    vec4 tev_combiner_buffer_color;
    vec4 clip_coef;
};

layout (std140) uniform shader_light_data {
    ivec4 lighting_lut_offset[NUM_LIGHTING_SAMPLERS / 4];
    vec3 lighting_global_ambient;
    LightSrc light_src[NUM_LIGHTS];
    float lut_scale_d0;
    float lut_scale_d1;
    float lut_scale_sp;
    float lut_scale_fr;
    float lut_scale_rb;
    float lut_scale_rg;
    float lut_scale_rr;
    int shadow_texture_bias;
};

 in vec4 vs_out_attr0[];
 in vec4 vs_out_attr1[];
 in vec4 vs_out_attr2[];
 in vec4 vs_out_attr3[];
 in vec4 vs_out_attr4[];
 in vec4 vs_out_attr5[];
 in vec4 vs_out_attr6[];

struct Vertex {
    vec4 attributes[7];
};

vec4 GetVertexQuaternion(Vertex vtx) {
    return vec4(vtx.attributes[1].x, vtx.attributes[1].y, vtx.attributes[1].z, vtx.attributes[1].w);
}

void EmitVtx(Vertex vtx, bool quats_opposite) {
    vec4 vtx_pos = vec4(vtx.attributes[0].x, vtx.attributes[0].y, vtx.attributes[0].z, vtx.attributes[0].w);
    gl_Position = vtx_pos;
#if !defined(CITRA_GLES) || defined(GL_EXT_clip_cull_distance)
    gl_ClipDistance[0] = -vtx_pos.z;
    gl_ClipDistance[1] = dot(clip_coef, vtx_pos);
#endif // !defined(CITRA_GLES) || defined(GL_EXT_clip_cull_distance)

    vec4 vtx_quat = GetVertexQuaternion(vtx);
    normquat = mix(vtx_quat, -vtx_quat, bvec4(quats_opposite));

    vec4 vtx_color = vec4(vtx.attributes[3].x, vtx.attributes[3].y, vtx.attributes[3].z, vtx.attributes[3].w);
    primary_color = min(abs(vtx_color), vec4(1.0));

    texcoord0 = vec2(vtx.attributes[4].x, vtx.attributes[4].y);
    texcoord1 = vec2(vtx.attributes[5].x, vtx.attributes[5].y);

    texcoord0_w = vtx.attributes[4].z;
    view = vec3(vtx.attributes[2].x, vtx.attributes[2].y, vtx.attributes[2].z);

    texcoord2 = vec2(vtx.attributes[6].x, vtx.attributes[6].y);

    EmitVertex();
}

bool AreQuaternionsOpposite(vec4 qa, vec4 qb) {
    return (dot(qa, qb) < 0.0);
}

void EmitPrim(Vertex vtx0, Vertex vtx1, Vertex vtx2) {
    EmitVtx(vtx0, false);
    EmitVtx(vtx1, AreQuaternionsOpposite(GetVertexQuaternion(vtx0), GetVertexQuaternion(vtx1)));
    EmitVtx(vtx2, AreQuaternionsOpposite(GetVertexQuaternion(vtx0), GetVertexQuaternion(vtx2)));
    EndPrimitive();
}

void main() {
    Vertex prim_buffer[3];
    prim_buffer[0].attributes = vec4[7](vs_out_attr0[0], vs_out_attr1[0], vs_out_attr2[0], vs_out_attr3[0], vs_out_attr4[0], vs_out_attr5[0], vs_out_attr6[0]);
    prim_buffer[1].attributes = vec4[7](vs_out_attr0[1], vs_out_attr1[1], vs_out_attr2[1], vs_out_attr3[1], vs_out_attr4[1], vs_out_attr5[1], vs_out_attr6[1]);
    prim_buffer[2].attributes = vec4[7](vs_out_attr0[2], vs_out_attr1[2], vs_out_attr2[2], vs_out_attr3[2], vs_out_attr4[2], vs_out_attr5[2], vs_out_attr6[2]);
    EmitPrim(prim_buffer[0], prim_buffer[1], prim_buffer[2]);
}
// reference: FC74FA4ACA1C8C74, AD7922A63ED54CA7
// shader: 8B30, 762437C337E868E0

precision highp int;
precision highp float;
precision highp samplerBuffer;
precision highp usampler2D;
precision highp uimage2D;
in vec4 primary_color;
in vec2 texcoord0;
in vec2 texcoord1;
in vec2 texcoord2;
in float texcoord0_w;
in vec4 normquat;
in vec3 view;

#ifndef CITRA_GLES
in vec4 gl_FragCoord;
#endif // CITRA_GLES
out vec4 color;

uniform sampler2D tex0;
uniform sampler2D tex1;
uniform sampler2D tex2;
uniform samplerCube tex_cube;
uniform samplerBuffer texture_buffer_lut_lf;
uniform samplerBuffer texture_buffer_lut_rg;
uniform samplerBuffer texture_buffer_lut_rgba;

#define NUM_TEV_STAGES 6
#define NUM_LIGHTS 8
#define NUM_LIGHTING_SAMPLERS 24

struct LightSrc {
    vec3 specular_0;
    vec3 specular_1;
    vec3 diffuse;
    vec3 ambient;
    vec3 position;
    vec3 spot_direction;
    float dist_atten_bias;
    float dist_atten_scale;
};

layout (std140) uniform shader_data {
    int alphatest_ref;
    float depth_scale;
    float depth_offset;
    float shadow_bias_constant;
    float shadow_bias_linear;
    int scissor_x1;
    int scissor_y1;
    int scissor_x2;
    int scissor_y2;
    int fog_lut_offset;
    int proctex_noise_lut_offset;
    int proctex_color_map_offset;
    int proctex_alpha_map_offset;
    int proctex_lut_offset;
    int proctex_diff_lut_offset;
    float proctex_bias;
    vec3 fog_color;
    vec2 proctex_noise_f;
    vec2 proctex_noise_a;
    vec2 proctex_noise_p;
    vec4 const_color[NUM_TEV_STAGES];
    vec4 tev_combiner_buffer_color;
    vec4 clip_coef;
};

layout (std140) uniform shader_light_data {
    ivec4 lighting_lut_offset[NUM_LIGHTING_SAMPLERS / 4];
    vec3 lighting_global_ambient;
    LightSrc light_src[NUM_LIGHTS];
    float lut_scale_d0;
    float lut_scale_d1;
    float lut_scale_sp;
    float lut_scale_fr;
    float lut_scale_rb;
    float lut_scale_rg;
    float lut_scale_rr;
    int shadow_texture_bias;
};

// Rotate the vector v by the quaternion q
vec3 quaternion_rotate(vec4 q, vec3 v) {
    return v + 2.0 * cross(q.xyz, cross(q.xyz, v) + q.w * v);
}

float LookupLightingLUT(int lut_index, int index, float delta) {
    vec2 entry = texelFetch(texture_buffer_lut_lf, lighting_lut_offset[lut_index >> 2][lut_index & 3] + index).rg;
    return entry.r + entry.g * delta;
}

float LookupLightingLUTUnsigned(int lut_index, float pos) {
    int index = clamp(int(pos * 256.0), 0, 255);
    float delta = pos * 256.0 - float(index);
    return LookupLightingLUT(lut_index, index, delta);
}

float LookupLightingLUTSigned(int lut_index, float pos) {
    int index = clamp(int(pos * 128.0), -128, 127);
    float delta = pos * 128.0 - float(index);
    if (index < 0) index += 256;
    return LookupLightingLUT(lut_index, index, delta);
}

float byteround(float x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec2 byteround(vec2 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec3 byteround(vec3 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec4 byteround(vec4 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

// PICA's LOD formula for 2D textures.
// This LOD formula is the same as the LOD lower limit defined in OpenGL.
// f(x, y) >= max{m_u, m_v, m_w}
// (See OpenGL 4.6 spec, 8.14.1 - Scale Factor and Level-of-Detail)
float getLod(vec2 coord) {
    vec2 d = max(abs(dFdx(coord)), abs(dFdy(coord)));
    return log2(max(d.x, d.y));
}

vec4 shadowTexture(vec2 uv, float w) {
    return vec4(1.0);
}

vec4 shadowTextureCube(vec2 uv, float w) {
    return vec4(1.0);
}

void main() {
vec4 rounded_primary_color = byteround(primary_color);
vec4 primary_fragment_color = vec4(0.0);
vec4 secondary_fragment_color = vec4(0.0);
if (!(gl_FragCoord.x >= float(scissor_x1) && gl_FragCoord.y >= float(scissor_y1) && gl_FragCoord.x < float(scissor_x2) && gl_FragCoord.y < float(scissor_y2))) discard;
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;

vec4 diffuse_sum = vec4(0.0, 0.0, 0.0, 1.0);
vec4 specular_sum = vec4(0.0, 0.0, 0.0, 1.0);
vec3 light_vector = vec3(0.0);
vec3 refl_value = vec3(0.0);
vec3 spot_dir = vec3(0.0);
vec3 half_vector = vec3(0.0);
float dot_product = 0.0;
float clamp_highlights = 1.0;
float geo_factor = 1.0;
vec3 surface_normal = vec3(0.0, 0.0, 1.0);
vec3 surface_tangent = vec3(1.0, 0.0, 0.0);
vec4 normalized_normquat = normalize(normquat);
vec3 normal = quaternion_rotate(normalized_normquat, surface_normal);
vec3 tangent = quaternion_rotate(normalized_normquat, surface_tangent);
vec4 shadow = vec4(1.0);
light_vector = normalize(light_src[0].position);
spot_dir = light_src[0].spot_direction;
half_vector = normalize(view) + light_vector;
dot_product = max(dot(light_vector, normal), 0.0);
refl_value.r = 1.0;
refl_value.g = refl_value.r;
refl_value.b = refl_value.r;
diffuse_sum.rgb += ((light_src[0].diffuse * dot_product) + light_src[0].ambient) * 1.0;
specular_sum.rgb += (((lut_scale_d0 * LookupLightingLUTUnsigned(0, max(dot(normal, normalize(half_vector)), 0.0))) * light_src[0].specular_0) + (light_src[0].specular_1)) * clamp_highlights * 1.0;
diffuse_sum.rgb += lighting_global_ambient;
primary_fragment_color = clamp(diffuse_sum, vec4(0.0), vec4(1.0));
secondary_fragment_color = clamp(specular_sum, vec4(0.0), vec4(1.0));

vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((const_color[0].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((rounded_primary_color.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;

vec3 color_output_1 = byteround(clamp((vec3(1.0) - primary_fragment_color.rgb) * (const_color[1].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_1 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_1, alpha_output_1), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;

vec3 color_output_2 = byteround(clamp((vec3(1.0) - last_tex_env_out.rgb) * (combiner_buffer.rgb) + (secondary_fragment_color.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_2 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_2, alpha_output_2), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: 0C5E54FAEAC20A28, 762437C337E868E0
// program: CA388C44D4F5C19E, AD7922A63ED54CA7, 762437C337E868E0
// shader: 8B31, 285B3546CEA35D76

struct pica_uniforms {
    bool b[16];
    uvec4 i[4];
    vec4 f[96];
};

bool exec_shader();

#define uniforms vs_uniforms
layout (std140) uniform vs_config {
    pica_uniforms uniforms;
};

layout(location = 0) in vec4 vs_in_reg0;
layout(location = 1) in vec4 vs_in_reg1;
layout(location = 2) in vec4 vs_in_reg2;

 out vec4 vs_out_attr0;
 out vec4 vs_out_attr1;
 out vec4 vs_out_attr2;
 out vec4 vs_out_attr3;

void main() {
    vs_out_attr0 = vec4(0.0, 0.0, 0.0, 1.0);
    vs_out_attr1 = vec4(0.0, 0.0, 0.0, 1.0);
    vs_out_attr2 = vec4(0.0, 0.0, 0.0, 1.0);
    vs_out_attr3 = vec4(0.0, 0.0, 0.0, 1.0);

    exec_shader();
}


#define mul_s(x, y) (x * y)
#define fma_s(x, y, z) fma(x, y, z)
#define rcp_s(x) (1.0 / x)
#define rsq_s(x) inversesqrt(x)
#define dot_s(x, y) dot(x, y)
#define dot_3(x, y) dot(x, y)

bvec2 conditional_code = bvec2(false);
ivec3 address_registers = ivec3(0);
vec4 reg_tmp0 = vec4(0.0, 0.0, 0.0, 1.0);
vec4 reg_tmp1 = vec4(0.0, 0.0, 0.0, 1.0);
vec4 reg_tmp2 = vec4(0.0, 0.0, 0.0, 1.0);
vec4 reg_tmp3 = vec4(0.0, 0.0, 0.0, 1.0);
vec4 reg_tmp4 = vec4(0.0, 0.0, 0.0, 1.0);
vec4 reg_tmp5 = vec4(0.0, 0.0, 0.0, 1.0);
vec4 reg_tmp6 = vec4(0.0, 0.0, 0.0, 1.0);
vec4 reg_tmp7 = vec4(0.0, 0.0, 0.0, 1.0);
vec4 reg_tmp8 = vec4(0.0, 0.0, 0.0, 1.0);
vec4 reg_tmp9 = vec4(0.0, 0.0, 0.0, 1.0);
vec4 reg_tmp10 = vec4(0.0, 0.0, 0.0, 1.0);
vec4 reg_tmp11 = vec4(0.0, 0.0, 0.0, 1.0);
vec4 reg_tmp12 = vec4(0.0, 0.0, 0.0, 1.0);
vec4 reg_tmp13 = vec4(0.0, 0.0, 0.0, 1.0);
vec4 reg_tmp14 = vec4(0.0, 0.0, 0.0, 1.0);
vec4 reg_tmp15 = vec4(0.0, 0.0, 0.0, 1.0);

bool sub_0_30();
bool sub_26_28();
bool sub_28_29();
bool sub_31_4096();

bool exec_shader() {
    sub_31_4096();
    return true;
}

bool sub_0_30() {
    // 0: dp4
    reg_tmp11.x = dot_s(uniforms.f[7], vs_in_reg0);
    // 1: dp4
    reg_tmp11.y = dot_s(uniforms.f[8], vs_in_reg0);
    // 2: dp4
    reg_tmp11.z = dot_s(uniforms.f[9], vs_in_reg0);
    // 3: mov
    reg_tmp11.w = (uniforms.f[93].yyyy).w;
    // 4: dp4
    reg_tmp13.x = dot_s(uniforms.f[4], reg_tmp11);
    // 5: dp4
    reg_tmp13.y = dot_s(uniforms.f[5], reg_tmp11);
    // 6: dp4
    reg_tmp13.z = dot_s(uniforms.f[6], reg_tmp11);
    // 7: mov
    reg_tmp13.w = (uniforms.f[93].yyyy).w;
    // 8: mov
    vs_out_attr2 = -reg_tmp13;
    // 9: dp3
    reg_tmp14.x = dot_3(uniforms.f[10].xyz, vs_in_reg1.xyz);
    // 10: dp3
    reg_tmp14.y = dot_3(uniforms.f[11].xyz, vs_in_reg1.xyz);
    // 11: dp3
    reg_tmp14.z = dot_3(uniforms.f[12].xyz, vs_in_reg1.xyz);
    // 12: dp4
    vs_out_attr0.x = dot_s(uniforms.f[0], reg_tmp13);
    // 13: dp4
    vs_out_attr0.y = dot_s(uniforms.f[1], reg_tmp13);
    // 14: dp4
    vs_out_attr0.z = dot_s(uniforms.f[2], reg_tmp13);
    // 15: dp4
    vs_out_attr0.w = dot_s(uniforms.f[3], reg_tmp13);
    // 16: dp3
    reg_tmp3.x = dot_3(reg_tmp14.xyz, reg_tmp14.xyz);
    // 17: rsq
    reg_tmp3.x = rsq_s(reg_tmp3.x);
    // 18: mul
    reg_tmp14 = mul_s(reg_tmp14, reg_tmp3.xxxx);
    // 19: add
    reg_tmp4 = uniforms.f[93].yyyy + reg_tmp14.zzzz;
    // 20: mul
    reg_tmp4 = mul_s(uniforms.f[94].zzzz, reg_tmp4);
    // 21: cmp
    conditional_code = greaterThanEqual(uniforms.f[93].xx, reg_tmp4.xx);
    // 22: mov
    vs_out_attr1.w = (uniforms.f[93].xxxx).w;
    // 23: rsq
    reg_tmp4 = vec4(rsq_s(reg_tmp4.x));
    // 24: mul
    reg_tmp5 = mul_s(uniforms.f[94].zzzz, reg_tmp14);
    // 25: ifc
    if (!conditional_code.x) {
        sub_26_28();
    } else {
        sub_28_29();
    }
    // 29: nop
    return false;
}
bool sub_26_28() {
    // 26: rcp
    vs_out_attr1.z = rcp_s(reg_tmp4.x);
    // 27: mul
    vs_out_attr1.xy = (mul_s(reg_tmp5, reg_tmp4)).xy;
    return false;
}
bool sub_28_29() {
    // 28: mov
    vs_out_attr1.xyz = (uniforms.f[93].yxxx).xyz;
    return false;
}
bool sub_31_4096() {
    // 31: call
    {
        sub_0_30();
    }
    // 32: dp4
    reg_tmp15.x = dot_s(uniforms.f[13], vs_in_reg2);
    // 33: dp4
    reg_tmp15.y = dot_s(uniforms.f[14], vs_in_reg2);
    // 34: mov
    vs_out_attr3 = reg_tmp15.xyxy;
    // 35: end
    return true;
}
// reference: 4B1EF48F663037A6, 285B3546CEA35D76
// shader: 8DD9, 69305F94E50C1834

layout(triangles) in;
layout(triangle_strip, max_vertices = 3) out;

out vec4 primary_color;
out vec2 texcoord0;
out vec2 texcoord1;
out vec2 texcoord2;
out float texcoord0_w;
out vec4 normquat;
out vec3 view;

#define NUM_TEV_STAGES 6
#define NUM_LIGHTS 8
#define NUM_LIGHTING_SAMPLERS 24

struct LightSrc {
    vec3 specular_0;
    vec3 specular_1;
    vec3 diffuse;
    vec3 ambient;
    vec3 position;
    vec3 spot_direction;
    float dist_atten_bias;
    float dist_atten_scale;
};

layout (std140) uniform shader_data {
    int alphatest_ref;
    float depth_scale;
    float depth_offset;
    float shadow_bias_constant;
    float shadow_bias_linear;
    int scissor_x1;
    int scissor_y1;
    int scissor_x2;
    int scissor_y2;
    int fog_lut_offset;
    int proctex_noise_lut_offset;
    int proctex_color_map_offset;
    int proctex_alpha_map_offset;
    int proctex_lut_offset;
    int proctex_diff_lut_offset;
    float proctex_bias;
    vec3 fog_color;
    vec2 proctex_noise_f;
    vec2 proctex_noise_a;
    vec2 proctex_noise_p;
    vec4 const_color[NUM_TEV_STAGES];
    vec4 tev_combiner_buffer_color;
    vec4 clip_coef;
};

layout (std140) uniform shader_light_data {
    ivec4 lighting_lut_offset[NUM_LIGHTING_SAMPLERS / 4];
    vec3 lighting_global_ambient;
    LightSrc light_src[NUM_LIGHTS];
    float lut_scale_d0;
    float lut_scale_d1;
    float lut_scale_sp;
    float lut_scale_fr;
    float lut_scale_rb;
    float lut_scale_rg;
    float lut_scale_rr;
    int shadow_texture_bias;
};

 in vec4 vs_out_attr0[];
 in vec4 vs_out_attr1[];
 in vec4 vs_out_attr2[];
 in vec4 vs_out_attr3[];

struct Vertex {
    vec4 attributes[4];
};

vec4 GetVertexQuaternion(Vertex vtx) {
    return vec4(vtx.attributes[1].x, vtx.attributes[1].y, vtx.attributes[1].z, vtx.attributes[1].w);
}

void EmitVtx(Vertex vtx, bool quats_opposite) {
    vec4 vtx_pos = vec4(vtx.attributes[0].x, vtx.attributes[0].y, vtx.attributes[0].z, vtx.attributes[0].w);
    gl_Position = vtx_pos;
#if !defined(CITRA_GLES) || defined(GL_EXT_clip_cull_distance)
    gl_ClipDistance[0] = -vtx_pos.z;
    gl_ClipDistance[1] = dot(clip_coef, vtx_pos);
#endif // !defined(CITRA_GLES) || defined(GL_EXT_clip_cull_distance)

    vec4 vtx_quat = GetVertexQuaternion(vtx);
    normquat = mix(vtx_quat, -vtx_quat, bvec4(quats_opposite));

    vec4 vtx_color = vec4(0.0, 0.0, 0.0, 0.0);
    primary_color = min(abs(vtx_color), vec4(1.0));

    texcoord0 = vec2(vtx.attributes[3].x, vtx.attributes[3].y);
    texcoord1 = vec2(vtx.attributes[3].z, vtx.attributes[3].w);

    texcoord0_w = 0.0;
    view = vec3(vtx.attributes[2].x, vtx.attributes[2].y, vtx.attributes[2].z);

    texcoord2 = vec2(0.0, 0.0);

    EmitVertex();
}

bool AreQuaternionsOpposite(vec4 qa, vec4 qb) {
    return (dot(qa, qb) < 0.0);
}

void EmitPrim(Vertex vtx0, Vertex vtx1, Vertex vtx2) {
    EmitVtx(vtx0, false);
    EmitVtx(vtx1, AreQuaternionsOpposite(GetVertexQuaternion(vtx0), GetVertexQuaternion(vtx1)));
    EmitVtx(vtx2, AreQuaternionsOpposite(GetVertexQuaternion(vtx0), GetVertexQuaternion(vtx2)));
    EndPrimitive();
}

void main() {
    Vertex prim_buffer[3];
    prim_buffer[0].attributes = vec4[4](vs_out_attr0[0], vs_out_attr1[0], vs_out_attr2[0], vs_out_attr3[0]);
    prim_buffer[1].attributes = vec4[4](vs_out_attr0[1], vs_out_attr1[1], vs_out_attr2[1], vs_out_attr3[1]);
    prim_buffer[2].attributes = vec4[4](vs_out_attr0[2], vs_out_attr1[2], vs_out_attr2[2], vs_out_attr3[2]);
    EmitPrim(prim_buffer[0], prim_buffer[1], prim_buffer[2]);
}
// reference: 1EA377C1D7B39071, 69305F94E50C1834
// shader: 8B30, 8D616F24C0E25220

precision highp int;
precision highp float;
precision highp samplerBuffer;
precision highp usampler2D;
precision highp uimage2D;
in vec4 primary_color;
in vec2 texcoord0;
in vec2 texcoord1;
in vec2 texcoord2;
in float texcoord0_w;
in vec4 normquat;
in vec3 view;

#ifndef CITRA_GLES
in vec4 gl_FragCoord;
#endif // CITRA_GLES
out vec4 color;

uniform sampler2D tex0;
uniform sampler2D tex1;
uniform sampler2D tex2;
uniform samplerCube tex_cube;
uniform samplerBuffer texture_buffer_lut_lf;
uniform samplerBuffer texture_buffer_lut_rg;
uniform samplerBuffer texture_buffer_lut_rgba;

#define NUM_TEV_STAGES 6
#define NUM_LIGHTS 8
#define NUM_LIGHTING_SAMPLERS 24

struct LightSrc {
    vec3 specular_0;
    vec3 specular_1;
    vec3 diffuse;
    vec3 ambient;
    vec3 position;
    vec3 spot_direction;
    float dist_atten_bias;
    float dist_atten_scale;
};

layout (std140) uniform shader_data {
    int alphatest_ref;
    float depth_scale;
    float depth_offset;
    float shadow_bias_constant;
    float shadow_bias_linear;
    int scissor_x1;
    int scissor_y1;
    int scissor_x2;
    int scissor_y2;
    int fog_lut_offset;
    int proctex_noise_lut_offset;
    int proctex_color_map_offset;
    int proctex_alpha_map_offset;
    int proctex_lut_offset;
    int proctex_diff_lut_offset;
    float proctex_bias;
    vec3 fog_color;
    vec2 proctex_noise_f;
    vec2 proctex_noise_a;
    vec2 proctex_noise_p;
    vec4 const_color[NUM_TEV_STAGES];
    vec4 tev_combiner_buffer_color;
    vec4 clip_coef;
};

layout (std140) uniform shader_light_data {
    ivec4 lighting_lut_offset[NUM_LIGHTING_SAMPLERS / 4];
    vec3 lighting_global_ambient;
    LightSrc light_src[NUM_LIGHTS];
    float lut_scale_d0;
    float lut_scale_d1;
    float lut_scale_sp;
    float lut_scale_fr;
    float lut_scale_rb;
    float lut_scale_rg;
    float lut_scale_rr;
    int shadow_texture_bias;
};

// Rotate the vector v by the quaternion q
vec3 quaternion_rotate(vec4 q, vec3 v) {
    return v + 2.0 * cross(q.xyz, cross(q.xyz, v) + q.w * v);
}

float LookupLightingLUT(int lut_index, int index, float delta) {
    vec2 entry = texelFetch(texture_buffer_lut_lf, lighting_lut_offset[lut_index >> 2][lut_index & 3] + index).rg;
    return entry.r + entry.g * delta;
}

float LookupLightingLUTUnsigned(int lut_index, float pos) {
    int index = clamp(int(pos * 256.0), 0, 255);
    float delta = pos * 256.0 - float(index);
    return LookupLightingLUT(lut_index, index, delta);
}

float LookupLightingLUTSigned(int lut_index, float pos) {
    int index = clamp(int(pos * 128.0), -128, 127);
    float delta = pos * 128.0 - float(index);
    if (index < 0) index += 256;
    return LookupLightingLUT(lut_index, index, delta);
}

float byteround(float x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec2 byteround(vec2 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec3 byteround(vec3 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec4 byteround(vec4 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

// PICA's LOD formula for 2D textures.
// This LOD formula is the same as the LOD lower limit defined in OpenGL.
// f(x, y) >= max{m_u, m_v, m_w}
// (See OpenGL 4.6 spec, 8.14.1 - Scale Factor and Level-of-Detail)
float getLod(vec2 coord) {
    vec2 d = max(abs(dFdx(coord)), abs(dFdy(coord)));
    return log2(max(d.x, d.y));
}

vec4 shadowTexture(vec2 uv, float w) {
    return vec4(1.0);
}

vec4 shadowTextureCube(vec2 uv, float w) {
    return vec4(1.0);
}

void main() {
vec4 rounded_primary_color = byteround(primary_color);
vec4 primary_fragment_color = vec4(0.0);
vec4 secondary_fragment_color = vec4(0.0);
if (!(gl_FragCoord.x >= float(scissor_x1) && gl_FragCoord.y >= float(scissor_y1) && gl_FragCoord.x < float(scissor_x2) && gl_FragCoord.y < float(scissor_y2))) discard;
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));

vec4 diffuse_sum = vec4(0.0, 0.0, 0.0, 1.0);
vec4 specular_sum = vec4(0.0, 0.0, 0.0, 1.0);
vec3 light_vector = vec3(0.0);
vec3 refl_value = vec3(0.0);
vec3 spot_dir = vec3(0.0);
vec3 half_vector = vec3(0.0);
float dot_product = 0.0;
float clamp_highlights = 1.0;
float geo_factor = 1.0;
vec3 surface_normal = vec3(0.0, 0.0, 1.0);
vec3 surface_tangent = vec3(1.0, 0.0, 0.0);
vec4 normalized_normquat = normalize(normquat);
vec3 normal = quaternion_rotate(normalized_normquat, surface_normal);
vec3 tangent = quaternion_rotate(normalized_normquat, surface_tangent);
vec4 shadow = vec4(1.0);
light_vector = normalize(light_src[0].position);
spot_dir = light_src[0].spot_direction;
half_vector = normalize(view) + light_vector;
dot_product = max(dot(light_vector, normal), 0.0);
refl_value.r = 1.0;
refl_value.g = refl_value.r;
refl_value.b = refl_value.r;
diffuse_sum.rgb += ((light_src[0].diffuse * dot_product) + light_src[0].ambient) * 1.0;
specular_sum.rgb += (((lut_scale_d0 * LookupLightingLUTUnsigned(0, max(dot(normal, normalize(half_vector)), 0.0))) * light_src[0].specular_0) + (light_src[0].specular_1)) * clamp_highlights * 1.0;
diffuse_sum.rgb += lighting_global_ambient;
primary_fragment_color = clamp(diffuse_sum, vec4(0.0), vec4(1.0));
secondary_fragment_color = clamp(specular_sum, vec4(0.0), vec4(1.0));

vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((texcolor0.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;
next_combiner_buffer.a = last_tex_env_out.a;

vec3 color_output_1 = byteround(clamp((vec3(1.0) - primary_fragment_color.rgb) * (const_color[1].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_1 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_1, alpha_output_1), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;
next_combiner_buffer.a = last_tex_env_out.a;

vec3 color_output_2 = byteround(clamp((vec3(1.0) - last_tex_env_out.rgb) * (combiner_buffer.rgb) + (secondary_fragment_color.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_2 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_2, alpha_output_2), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;
next_combiner_buffer.a = last_tex_env_out.a;

combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;
next_combiner_buffer.a = last_tex_env_out.a;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

if (int(last_tex_env_out.a * 255.0) <= alphatest_ref) discard;
gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: 8ECA464F0231BF33, 8D616F24C0E25220
// program: 285B3546CEA35D76, 69305F94E50C1834, 8D616F24C0E25220
// shader: 8B30, 1A58339DCCF6AB5D

precision highp int;
precision highp float;
precision highp samplerBuffer;
precision highp usampler2D;
precision highp uimage2D;
in vec4 primary_color;
in vec2 texcoord0;
in vec2 texcoord1;
in vec2 texcoord2;
in float texcoord0_w;
in vec4 normquat;
in vec3 view;

#ifndef CITRA_GLES
in vec4 gl_FragCoord;
#endif // CITRA_GLES
out vec4 color;

uniform sampler2D tex0;
uniform sampler2D tex1;
uniform sampler2D tex2;
uniform samplerCube tex_cube;
uniform samplerBuffer texture_buffer_lut_lf;
uniform samplerBuffer texture_buffer_lut_rg;
uniform samplerBuffer texture_buffer_lut_rgba;

#define NUM_TEV_STAGES 6
#define NUM_LIGHTS 8
#define NUM_LIGHTING_SAMPLERS 24

struct LightSrc {
    vec3 specular_0;
    vec3 specular_1;
    vec3 diffuse;
    vec3 ambient;
    vec3 position;
    vec3 spot_direction;
    float dist_atten_bias;
    float dist_atten_scale;
};

layout (std140) uniform shader_data {
    int alphatest_ref;
    float depth_scale;
    float depth_offset;
    float shadow_bias_constant;
    float shadow_bias_linear;
    int scissor_x1;
    int scissor_y1;
    int scissor_x2;
    int scissor_y2;
    int fog_lut_offset;
    int proctex_noise_lut_offset;
    int proctex_color_map_offset;
    int proctex_alpha_map_offset;
    int proctex_lut_offset;
    int proctex_diff_lut_offset;
    float proctex_bias;
    vec3 fog_color;
    vec2 proctex_noise_f;
    vec2 proctex_noise_a;
    vec2 proctex_noise_p;
    vec4 const_color[NUM_TEV_STAGES];
    vec4 tev_combiner_buffer_color;
    vec4 clip_coef;
};

layout (std140) uniform shader_light_data {
    ivec4 lighting_lut_offset[NUM_LIGHTING_SAMPLERS / 4];
    vec3 lighting_global_ambient;
    LightSrc light_src[NUM_LIGHTS];
    float lut_scale_d0;
    float lut_scale_d1;
    float lut_scale_sp;
    float lut_scale_fr;
    float lut_scale_rb;
    float lut_scale_rg;
    float lut_scale_rr;
    int shadow_texture_bias;
};

// Rotate the vector v by the quaternion q
vec3 quaternion_rotate(vec4 q, vec3 v) {
    return v + 2.0 * cross(q.xyz, cross(q.xyz, v) + q.w * v);
}

float LookupLightingLUT(int lut_index, int index, float delta) {
    vec2 entry = texelFetch(texture_buffer_lut_lf, lighting_lut_offset[lut_index >> 2][lut_index & 3] + index).rg;
    return entry.r + entry.g * delta;
}

float LookupLightingLUTUnsigned(int lut_index, float pos) {
    int index = clamp(int(pos * 256.0), 0, 255);
    float delta = pos * 256.0 - float(index);
    return LookupLightingLUT(lut_index, index, delta);
}

float LookupLightingLUTSigned(int lut_index, float pos) {
    int index = clamp(int(pos * 128.0), -128, 127);
    float delta = pos * 128.0 - float(index);
    if (index < 0) index += 256;
    return LookupLightingLUT(lut_index, index, delta);
}

float byteround(float x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec2 byteround(vec2 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec3 byteround(vec3 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec4 byteround(vec4 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

// PICA's LOD formula for 2D textures.
// This LOD formula is the same as the LOD lower limit defined in OpenGL.
// f(x, y) >= max{m_u, m_v, m_w}
// (See OpenGL 4.6 spec, 8.14.1 - Scale Factor and Level-of-Detail)
float getLod(vec2 coord) {
    vec2 d = max(abs(dFdx(coord)), abs(dFdy(coord)));
    return log2(max(d.x, d.y));
}

vec4 shadowTexture(vec2 uv, float w) {
    return vec4(1.0);
}

vec4 shadowTextureCube(vec2 uv, float w) {
    return vec4(1.0);
}

void main() {
vec4 rounded_primary_color = byteround(primary_color);
vec4 primary_fragment_color = vec4(0.0);
vec4 secondary_fragment_color = vec4(0.0);
if (!(gl_FragCoord.x >= float(scissor_x1) && gl_FragCoord.y >= float(scissor_y1) && gl_FragCoord.x < float(scissor_x2) && gl_FragCoord.y < float(scissor_y2))) discard;
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;

vec4 diffuse_sum = vec4(0.0, 0.0, 0.0, 1.0);
vec4 specular_sum = vec4(0.0, 0.0, 0.0, 1.0);
vec3 light_vector = vec3(0.0);
vec3 refl_value = vec3(0.0);
vec3 spot_dir = vec3(0.0);
vec3 half_vector = vec3(0.0);
float dot_product = 0.0;
float clamp_highlights = 1.0;
float geo_factor = 1.0;
vec3 surface_normal = vec3(0.0, 0.0, 1.0);
vec3 surface_tangent = vec3(1.0, 0.0, 0.0);
vec4 normalized_normquat = normalize(normquat);
vec3 normal = quaternion_rotate(normalized_normquat, surface_normal);
vec3 tangent = quaternion_rotate(normalized_normquat, surface_tangent);
vec4 shadow = vec4(1.0);
light_vector = normalize(light_src[0].position);
spot_dir = light_src[0].spot_direction;
half_vector = normalize(view) + light_vector;
dot_product = max(dot(light_vector, normal), 0.0);
refl_value.r = 1.0;
refl_value.g = refl_value.r;
refl_value.b = refl_value.r;
diffuse_sum.rgb += ((light_src[0].diffuse * dot_product) + light_src[0].ambient) * 1.0;
specular_sum.rgb += (((lut_scale_d0 * LookupLightingLUTUnsigned(0, max(dot(normal, normalize(half_vector)), 0.0))) * light_src[0].specular_0) + (light_src[0].specular_1)) * clamp_highlights * 1.0;
diffuse_sum.rgb += lighting_global_ambient;
primary_fragment_color = clamp(diffuse_sum, vec4(0.0), vec4(1.0));
secondary_fragment_color = clamp(specular_sum, vec4(0.0), vec4(1.0));

vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((const_color[0].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((const_color[0].a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;
next_combiner_buffer.a = last_tex_env_out.a;

vec3 color_output_1 = byteround(clamp((vec3(1.0) - primary_fragment_color.rgb) * (const_color[1].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_1 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_1, alpha_output_1), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;
next_combiner_buffer.a = last_tex_env_out.a;

vec3 color_output_2 = byteround(clamp((vec3(1.0) - last_tex_env_out.rgb) * (combiner_buffer.rgb) + (secondary_fragment_color.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_2 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_2, alpha_output_2), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;
next_combiner_buffer.a = last_tex_env_out.a;

combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;
next_combiner_buffer.a = last_tex_env_out.a;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

if (int(last_tex_env_out.a * 255.0) <= alphatest_ref) discard;
gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: 8ECA464FAAD46DE3, 1A58339DCCF6AB5D
// program: 285B3546CEA35D76, 69305F94E50C1834, 1A58339DCCF6AB5D
// reference: 9115F1D5FDBB1AA2, 4940142D60DA9543
// shader: 8B30, 82B5A33E385041E6

precision highp int;
precision highp float;
precision highp samplerBuffer;
precision highp usampler2D;
precision highp uimage2D;
in vec4 primary_color;
in vec2 texcoord0;
in vec2 texcoord1;
in vec2 texcoord2;
in float texcoord0_w;
in vec4 normquat;
in vec3 view;

#ifndef CITRA_GLES
in vec4 gl_FragCoord;
#endif // CITRA_GLES
out vec4 color;

uniform sampler2D tex0;
uniform sampler2D tex1;
uniform sampler2D tex2;
uniform samplerCube tex_cube;
uniform samplerBuffer texture_buffer_lut_lf;
uniform samplerBuffer texture_buffer_lut_rg;
uniform samplerBuffer texture_buffer_lut_rgba;

#define NUM_TEV_STAGES 6
#define NUM_LIGHTS 8
#define NUM_LIGHTING_SAMPLERS 24

struct LightSrc {
    vec3 specular_0;
    vec3 specular_1;
    vec3 diffuse;
    vec3 ambient;
    vec3 position;
    vec3 spot_direction;
    float dist_atten_bias;
    float dist_atten_scale;
};

layout (std140) uniform shader_data {
    int alphatest_ref;
    float depth_scale;
    float depth_offset;
    float shadow_bias_constant;
    float shadow_bias_linear;
    int scissor_x1;
    int scissor_y1;
    int scissor_x2;
    int scissor_y2;
    int fog_lut_offset;
    int proctex_noise_lut_offset;
    int proctex_color_map_offset;
    int proctex_alpha_map_offset;
    int proctex_lut_offset;
    int proctex_diff_lut_offset;
    float proctex_bias;
    vec3 fog_color;
    vec2 proctex_noise_f;
    vec2 proctex_noise_a;
    vec2 proctex_noise_p;
    vec4 const_color[NUM_TEV_STAGES];
    vec4 tev_combiner_buffer_color;
    vec4 clip_coef;
};

layout (std140) uniform shader_light_data {
    ivec4 lighting_lut_offset[NUM_LIGHTING_SAMPLERS / 4];
    vec3 lighting_global_ambient;
    LightSrc light_src[NUM_LIGHTS];
    float lut_scale_d0;
    float lut_scale_d1;
    float lut_scale_sp;
    float lut_scale_fr;
    float lut_scale_rb;
    float lut_scale_rg;
    float lut_scale_rr;
    int shadow_texture_bias;
};

// Rotate the vector v by the quaternion q
vec3 quaternion_rotate(vec4 q, vec3 v) {
    return v + 2.0 * cross(q.xyz, cross(q.xyz, v) + q.w * v);
}

float LookupLightingLUT(int lut_index, int index, float delta) {
    vec2 entry = texelFetch(texture_buffer_lut_lf, lighting_lut_offset[lut_index >> 2][lut_index & 3] + index).rg;
    return entry.r + entry.g * delta;
}

float LookupLightingLUTUnsigned(int lut_index, float pos) {
    int index = clamp(int(pos * 256.0), 0, 255);
    float delta = pos * 256.0 - float(index);
    return LookupLightingLUT(lut_index, index, delta);
}

float LookupLightingLUTSigned(int lut_index, float pos) {
    int index = clamp(int(pos * 128.0), -128, 127);
    float delta = pos * 128.0 - float(index);
    if (index < 0) index += 256;
    return LookupLightingLUT(lut_index, index, delta);
}

float byteround(float x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec2 byteround(vec2 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec3 byteround(vec3 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec4 byteround(vec4 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

// PICA's LOD formula for 2D textures.
// This LOD formula is the same as the LOD lower limit defined in OpenGL.
// f(x, y) >= max{m_u, m_v, m_w}
// (See OpenGL 4.6 spec, 8.14.1 - Scale Factor and Level-of-Detail)
float getLod(vec2 coord) {
    vec2 d = max(abs(dFdx(coord)), abs(dFdy(coord)));
    return log2(max(d.x, d.y));
}

vec4 shadowTexture(vec2 uv, float w) {
    return vec4(1.0);
}

vec4 shadowTextureCube(vec2 uv, float w) {
    return vec4(1.0);
}

void main() {
vec4 rounded_primary_color = byteround(primary_color);
vec4 primary_fragment_color = vec4(0.0);
vec4 secondary_fragment_color = vec4(0.0);
if (!(gl_FragCoord.x >= float(scissor_x1) && gl_FragCoord.y >= float(scissor_y1) && gl_FragCoord.x < float(scissor_x2) && gl_FragCoord.y < float(scissor_y2))) discard;
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((texcolor0.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;
next_combiner_buffer.a = last_tex_env_out.a;

vec3 color_output_1 = byteround(clamp((vec3(1.0) - primary_fragment_color.rgb) * (const_color[1].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_1 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_1, alpha_output_1), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;
next_combiner_buffer.a = last_tex_env_out.a;

vec3 color_output_2 = byteround(clamp((vec3(1.0) - last_tex_env_out.rgb) * (combiner_buffer.rgb) + (secondary_fragment_color.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_2 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_2, alpha_output_2), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;
next_combiner_buffer.a = last_tex_env_out.a;

vec3 color_output_3 = byteround(clamp((const_color[3].rgb) * (vec3(1.0) - texcolor0.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_3 = byteround(clamp((const_color[3].a) * (1.0 - texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_3, alpha_output_3), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;
next_combiner_buffer.a = last_tex_env_out.a;

vec3 color_output_4 = byteround(clamp((const_color[4].rgb) * (texcolor0.rgb) + (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_4 = byteround(clamp((const_color[4].a) * (texcolor0.a) + (last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_4, alpha_output_4), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_5 = byteround(clamp((rounded_primary_color.rgb) * (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_5 = byteround(clamp((rounded_primary_color.a) * (last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_5, alpha_output_5), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: 72E65B0A933100AB, 82B5A33E385041E6
// program: 4940142D60DA9543, 5D764F9A6220D694, 82B5A33E385041E6
// reference: 4296362CFDBB1AA2, 4940142D60DA9543
// shader: 8B30, 9EB7B040607099F1

precision highp int;
precision highp float;
precision highp samplerBuffer;
precision highp usampler2D;
precision highp uimage2D;
in vec4 primary_color;
in vec2 texcoord0;
in vec2 texcoord1;
in vec2 texcoord2;
in float texcoord0_w;
in vec4 normquat;
in vec3 view;

#ifndef CITRA_GLES
in vec4 gl_FragCoord;
#endif // CITRA_GLES
out vec4 color;

uniform sampler2D tex0;
uniform sampler2D tex1;
uniform sampler2D tex2;
uniform samplerCube tex_cube;
uniform samplerBuffer texture_buffer_lut_lf;
uniform samplerBuffer texture_buffer_lut_rg;
uniform samplerBuffer texture_buffer_lut_rgba;

#define NUM_TEV_STAGES 6
#define NUM_LIGHTS 8
#define NUM_LIGHTING_SAMPLERS 24

struct LightSrc {
    vec3 specular_0;
    vec3 specular_1;
    vec3 diffuse;
    vec3 ambient;
    vec3 position;
    vec3 spot_direction;
    float dist_atten_bias;
    float dist_atten_scale;
};

layout (std140) uniform shader_data {
    int alphatest_ref;
    float depth_scale;
    float depth_offset;
    float shadow_bias_constant;
    float shadow_bias_linear;
    int scissor_x1;
    int scissor_y1;
    int scissor_x2;
    int scissor_y2;
    int fog_lut_offset;
    int proctex_noise_lut_offset;
    int proctex_color_map_offset;
    int proctex_alpha_map_offset;
    int proctex_lut_offset;
    int proctex_diff_lut_offset;
    float proctex_bias;
    vec3 fog_color;
    vec2 proctex_noise_f;
    vec2 proctex_noise_a;
    vec2 proctex_noise_p;
    vec4 const_color[NUM_TEV_STAGES];
    vec4 tev_combiner_buffer_color;
    vec4 clip_coef;
};

layout (std140) uniform shader_light_data {
    ivec4 lighting_lut_offset[NUM_LIGHTING_SAMPLERS / 4];
    vec3 lighting_global_ambient;
    LightSrc light_src[NUM_LIGHTS];
    float lut_scale_d0;
    float lut_scale_d1;
    float lut_scale_sp;
    float lut_scale_fr;
    float lut_scale_rb;
    float lut_scale_rg;
    float lut_scale_rr;
    int shadow_texture_bias;
};

// Rotate the vector v by the quaternion q
vec3 quaternion_rotate(vec4 q, vec3 v) {
    return v + 2.0 * cross(q.xyz, cross(q.xyz, v) + q.w * v);
}

float LookupLightingLUT(int lut_index, int index, float delta) {
    vec2 entry = texelFetch(texture_buffer_lut_lf, lighting_lut_offset[lut_index >> 2][lut_index & 3] + index).rg;
    return entry.r + entry.g * delta;
}

float LookupLightingLUTUnsigned(int lut_index, float pos) {
    int index = clamp(int(pos * 256.0), 0, 255);
    float delta = pos * 256.0 - float(index);
    return LookupLightingLUT(lut_index, index, delta);
}

float LookupLightingLUTSigned(int lut_index, float pos) {
    int index = clamp(int(pos * 128.0), -128, 127);
    float delta = pos * 128.0 - float(index);
    if (index < 0) index += 256;
    return LookupLightingLUT(lut_index, index, delta);
}

float byteround(float x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec2 byteround(vec2 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec3 byteround(vec3 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec4 byteround(vec4 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

// PICA's LOD formula for 2D textures.
// This LOD formula is the same as the LOD lower limit defined in OpenGL.
// f(x, y) >= max{m_u, m_v, m_w}
// (See OpenGL 4.6 spec, 8.14.1 - Scale Factor and Level-of-Detail)
float getLod(vec2 coord) {
    vec2 d = max(abs(dFdx(coord)), abs(dFdy(coord)));
    return log2(max(d.x, d.y));
}

vec4 shadowTexture(vec2 uv, float w) {
    return vec4(1.0);
}

vec4 shadowTextureCube(vec2 uv, float w) {
    return vec4(1.0);
}

void main() {
vec4 rounded_primary_color = byteround(primary_color);
vec4 primary_fragment_color = vec4(0.0);
vec4 secondary_fragment_color = vec4(0.0);
if (!(gl_FragCoord.x >= float(scissor_x1) && gl_FragCoord.y >= float(scissor_y1) && gl_FragCoord.x < float(scissor_x2) && gl_FragCoord.y < float(scissor_y2))) discard;
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((texcolor0.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;
next_combiner_buffer.a = last_tex_env_out.a;

vec3 color_output_1 = byteround(clamp((vec3(1.0) - primary_fragment_color.rgb) * (const_color[1].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_1 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_1, alpha_output_1), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;
next_combiner_buffer.a = last_tex_env_out.a;

vec3 color_output_2 = byteround(clamp((vec3(1.0) - last_tex_env_out.rgb) * (combiner_buffer.rgb) + (secondary_fragment_color.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_2 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_2, alpha_output_2), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;
next_combiner_buffer.a = last_tex_env_out.a;

vec3 color_output_3 = byteround(clamp((vec3(1.0) - texcolor0.rgb) * (const_color[3].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_3 = byteround(clamp((texcolor0.a) * (const_color[3].a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_3, alpha_output_3), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;
next_combiner_buffer.a = last_tex_env_out.a;

vec3 color_output_4 = byteround(clamp((texcolor0.rgb) * (const_color[4].rgb) + (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_4 = byteround(clamp((1.0 - texcolor0.a) * (const_color[4].a) + (last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_4, alpha_output_4), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_5 = byteround(clamp((rounded_primary_color.rgb) * (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_5 = byteround(clamp((rounded_primary_color.a) * (last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_5, alpha_output_5), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: BD7EBFF512CE1611, 9EB7B040607099F1
// program: 4940142D60DA9543, 5D764F9A6220D694, 9EB7B040607099F1
// shader: 8B30, 96E36EB6437F55A2

precision highp int;
precision highp float;
precision highp samplerBuffer;
precision highp usampler2D;
precision highp uimage2D;
in vec4 primary_color;
in vec2 texcoord0;
in vec2 texcoord1;
in vec2 texcoord2;
in float texcoord0_w;
in vec4 normquat;
in vec3 view;

#ifndef CITRA_GLES
in vec4 gl_FragCoord;
#endif // CITRA_GLES
out vec4 color;

uniform sampler2D tex0;
uniform sampler2D tex1;
uniform sampler2D tex2;
uniform samplerCube tex_cube;
uniform samplerBuffer texture_buffer_lut_lf;
uniform samplerBuffer texture_buffer_lut_rg;
uniform samplerBuffer texture_buffer_lut_rgba;

#define NUM_TEV_STAGES 6
#define NUM_LIGHTS 8
#define NUM_LIGHTING_SAMPLERS 24

struct LightSrc {
    vec3 specular_0;
    vec3 specular_1;
    vec3 diffuse;
    vec3 ambient;
    vec3 position;
    vec3 spot_direction;
    float dist_atten_bias;
    float dist_atten_scale;
};

layout (std140) uniform shader_data {
    int alphatest_ref;
    float depth_scale;
    float depth_offset;
    float shadow_bias_constant;
    float shadow_bias_linear;
    int scissor_x1;
    int scissor_y1;
    int scissor_x2;
    int scissor_y2;
    int fog_lut_offset;
    int proctex_noise_lut_offset;
    int proctex_color_map_offset;
    int proctex_alpha_map_offset;
    int proctex_lut_offset;
    int proctex_diff_lut_offset;
    float proctex_bias;
    vec3 fog_color;
    vec2 proctex_noise_f;
    vec2 proctex_noise_a;
    vec2 proctex_noise_p;
    vec4 const_color[NUM_TEV_STAGES];
    vec4 tev_combiner_buffer_color;
    vec4 clip_coef;
};

layout (std140) uniform shader_light_data {
    ivec4 lighting_lut_offset[NUM_LIGHTING_SAMPLERS / 4];
    vec3 lighting_global_ambient;
    LightSrc light_src[NUM_LIGHTS];
    float lut_scale_d0;
    float lut_scale_d1;
    float lut_scale_sp;
    float lut_scale_fr;
    float lut_scale_rb;
    float lut_scale_rg;
    float lut_scale_rr;
    int shadow_texture_bias;
};

// Rotate the vector v by the quaternion q
vec3 quaternion_rotate(vec4 q, vec3 v) {
    return v + 2.0 * cross(q.xyz, cross(q.xyz, v) + q.w * v);
}

float LookupLightingLUT(int lut_index, int index, float delta) {
    vec2 entry = texelFetch(texture_buffer_lut_lf, lighting_lut_offset[lut_index >> 2][lut_index & 3] + index).rg;
    return entry.r + entry.g * delta;
}

float LookupLightingLUTUnsigned(int lut_index, float pos) {
    int index = clamp(int(pos * 256.0), 0, 255);
    float delta = pos * 256.0 - float(index);
    return LookupLightingLUT(lut_index, index, delta);
}

float LookupLightingLUTSigned(int lut_index, float pos) {
    int index = clamp(int(pos * 128.0), -128, 127);
    float delta = pos * 128.0 - float(index);
    if (index < 0) index += 256;
    return LookupLightingLUT(lut_index, index, delta);
}

float byteround(float x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec2 byteround(vec2 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec3 byteround(vec3 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec4 byteround(vec4 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

// PICA's LOD formula for 2D textures.
// This LOD formula is the same as the LOD lower limit defined in OpenGL.
// f(x, y) >= max{m_u, m_v, m_w}
// (See OpenGL 4.6 spec, 8.14.1 - Scale Factor and Level-of-Detail)
float getLod(vec2 coord) {
    vec2 d = max(abs(dFdx(coord)), abs(dFdy(coord)));
    return log2(max(d.x, d.y));
}

vec4 shadowTexture(vec2 uv, float w) {
    return vec4(1.0);
}

vec4 shadowTextureCube(vec2 uv, float w) {
    return vec4(1.0);
}

void main() {
vec4 rounded_primary_color = byteround(primary_color);
vec4 primary_fragment_color = vec4(0.0);
vec4 secondary_fragment_color = vec4(0.0);
if (!(gl_FragCoord.x >= float(scissor_x1) && gl_FragCoord.y >= float(scissor_y1) && gl_FragCoord.x < float(scissor_x2) && gl_FragCoord.y < float(scissor_y2))) discard;
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((texcolor0.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.a = last_tex_env_out.a;

vec3 color_output_1 = byteround(clamp((vec3(1.0) - primary_fragment_color.rgb) * (const_color[1].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_1 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_1, alpha_output_1), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_2 = byteround(clamp((texcolor0.rgb) + (rounded_primary_color.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_2 = byteround(clamp((texcolor0.a) * (rounded_primary_color.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_2, alpha_output_2), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;

vec3 color_output_3 = byteround(clamp((const_color[3].aaa) * (last_tex_env_out.rgb) + (const_color[3].rgb) * (vec3(1.0) - (last_tex_env_out.rgb)), vec3(0.0), vec3(1.0)));
float alpha_output_3 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_3, alpha_output_3), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;

vec3 color_output_4 = byteround(clamp((const_color[4].aaa) * (rounded_primary_color.rgb) + (const_color[4].rgb) * (vec3(1.0) - (rounded_primary_color.rgb)), vec3(0.0), vec3(1.0)));
float alpha_output_4 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_4, alpha_output_4), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_5 = byteround(clamp((last_tex_env_out.rgb) * (combiner_buffer.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_5 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_5, alpha_output_5), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: 4C5817601B02A4BE, 96E36EB6437F55A2
// program: 4940142D60DA9543, 5D764F9A6220D694, 96E36EB6437F55A2
// shader: 8B30, D8215EB19C38AF97

precision highp int;
precision highp float;
precision highp samplerBuffer;
precision highp usampler2D;
precision highp uimage2D;
in vec4 primary_color;
in vec2 texcoord0;
in vec2 texcoord1;
in vec2 texcoord2;
in float texcoord0_w;
in vec4 normquat;
in vec3 view;

#ifndef CITRA_GLES
in vec4 gl_FragCoord;
#endif // CITRA_GLES
out vec4 color;

uniform sampler2D tex0;
uniform sampler2D tex1;
uniform sampler2D tex2;
uniform samplerCube tex_cube;
uniform samplerBuffer texture_buffer_lut_lf;
uniform samplerBuffer texture_buffer_lut_rg;
uniform samplerBuffer texture_buffer_lut_rgba;

#define NUM_TEV_STAGES 6
#define NUM_LIGHTS 8
#define NUM_LIGHTING_SAMPLERS 24

struct LightSrc {
    vec3 specular_0;
    vec3 specular_1;
    vec3 diffuse;
    vec3 ambient;
    vec3 position;
    vec3 spot_direction;
    float dist_atten_bias;
    float dist_atten_scale;
};

layout (std140) uniform shader_data {
    int alphatest_ref;
    float depth_scale;
    float depth_offset;
    float shadow_bias_constant;
    float shadow_bias_linear;
    int scissor_x1;
    int scissor_y1;
    int scissor_x2;
    int scissor_y2;
    int fog_lut_offset;
    int proctex_noise_lut_offset;
    int proctex_color_map_offset;
    int proctex_alpha_map_offset;
    int proctex_lut_offset;
    int proctex_diff_lut_offset;
    float proctex_bias;
    vec3 fog_color;
    vec2 proctex_noise_f;
    vec2 proctex_noise_a;
    vec2 proctex_noise_p;
    vec4 const_color[NUM_TEV_STAGES];
    vec4 tev_combiner_buffer_color;
    vec4 clip_coef;
};

layout (std140) uniform shader_light_data {
    ivec4 lighting_lut_offset[NUM_LIGHTING_SAMPLERS / 4];
    vec3 lighting_global_ambient;
    LightSrc light_src[NUM_LIGHTS];
    float lut_scale_d0;
    float lut_scale_d1;
    float lut_scale_sp;
    float lut_scale_fr;
    float lut_scale_rb;
    float lut_scale_rg;
    float lut_scale_rr;
    int shadow_texture_bias;
};

// Rotate the vector v by the quaternion q
vec3 quaternion_rotate(vec4 q, vec3 v) {
    return v + 2.0 * cross(q.xyz, cross(q.xyz, v) + q.w * v);
}

float LookupLightingLUT(int lut_index, int index, float delta) {
    vec2 entry = texelFetch(texture_buffer_lut_lf, lighting_lut_offset[lut_index >> 2][lut_index & 3] + index).rg;
    return entry.r + entry.g * delta;
}

float LookupLightingLUTUnsigned(int lut_index, float pos) {
    int index = clamp(int(pos * 256.0), 0, 255);
    float delta = pos * 256.0 - float(index);
    return LookupLightingLUT(lut_index, index, delta);
}

float LookupLightingLUTSigned(int lut_index, float pos) {
    int index = clamp(int(pos * 128.0), -128, 127);
    float delta = pos * 128.0 - float(index);
    if (index < 0) index += 256;
    return LookupLightingLUT(lut_index, index, delta);
}

float byteround(float x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec2 byteround(vec2 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec3 byteround(vec3 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec4 byteround(vec4 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

// PICA's LOD formula for 2D textures.
// This LOD formula is the same as the LOD lower limit defined in OpenGL.
// f(x, y) >= max{m_u, m_v, m_w}
// (See OpenGL 4.6 spec, 8.14.1 - Scale Factor and Level-of-Detail)
float getLod(vec2 coord) {
    vec2 d = max(abs(dFdx(coord)), abs(dFdy(coord)));
    return log2(max(d.x, d.y));
}

vec4 shadowTexture(vec2 uv, float w) {
    return vec4(1.0);
}

vec4 shadowTextureCube(vec2 uv, float w) {
    return vec4(1.0);
}

void main() {
vec4 rounded_primary_color = byteround(primary_color);
vec4 primary_fragment_color = vec4(0.0);
vec4 secondary_fragment_color = vec4(0.0);
if (!(gl_FragCoord.x >= float(scissor_x1) && gl_FragCoord.y >= float(scissor_y1) && gl_FragCoord.x < float(scissor_x2) && gl_FragCoord.y < float(scissor_y2))) discard;
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((texcolor0.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.a = last_tex_env_out.a;

vec3 color_output_1 = byteround(clamp((vec3(1.0) - primary_fragment_color.rgb) * (const_color[1].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_1 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_1, alpha_output_1), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_2 = byteround(clamp((texcolor0.rgb) + (rounded_primary_color.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_2 = byteround(clamp((texcolor0.a) * (rounded_primary_color.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_2, alpha_output_2), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;

vec3 color_output_3 = byteround(clamp((const_color[3].rgb) * (vec3(1.0) - texcolor0.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_3 = byteround(clamp((const_color[3].a) * (1.0 - texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_3, alpha_output_3), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;

vec3 color_output_4 = byteround(clamp((const_color[4].rgb) * (texcolor0.rgb) + (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_4 = byteround(clamp((const_color[4].a) * (texcolor0.a) + (last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_4, alpha_output_4), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_5 = byteround(clamp((rounded_primary_color.rgb) * (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_5 = byteround(clamp((rounded_primary_color.a) * (last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_5, alpha_output_5), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: B3CD46DFB80C9EF3, D8215EB19C38AF97
// program: 4940142D60DA9543, 5D764F9A6220D694, D8215EB19C38AF97
// shader: 8B30, 39FDAFE7F803EA7B

precision highp int;
precision highp float;
precision highp samplerBuffer;
precision highp usampler2D;
precision highp uimage2D;
in vec4 primary_color;
in vec2 texcoord0;
in vec2 texcoord1;
in vec2 texcoord2;
in float texcoord0_w;
in vec4 normquat;
in vec3 view;

#ifndef CITRA_GLES
in vec4 gl_FragCoord;
#endif // CITRA_GLES
out vec4 color;

uniform sampler2D tex0;
uniform sampler2D tex1;
uniform sampler2D tex2;
uniform samplerCube tex_cube;
uniform samplerBuffer texture_buffer_lut_lf;
uniform samplerBuffer texture_buffer_lut_rg;
uniform samplerBuffer texture_buffer_lut_rgba;

#define NUM_TEV_STAGES 6
#define NUM_LIGHTS 8
#define NUM_LIGHTING_SAMPLERS 24

struct LightSrc {
    vec3 specular_0;
    vec3 specular_1;
    vec3 diffuse;
    vec3 ambient;
    vec3 position;
    vec3 spot_direction;
    float dist_atten_bias;
    float dist_atten_scale;
};

layout (std140) uniform shader_data {
    int alphatest_ref;
    float depth_scale;
    float depth_offset;
    float shadow_bias_constant;
    float shadow_bias_linear;
    int scissor_x1;
    int scissor_y1;
    int scissor_x2;
    int scissor_y2;
    int fog_lut_offset;
    int proctex_noise_lut_offset;
    int proctex_color_map_offset;
    int proctex_alpha_map_offset;
    int proctex_lut_offset;
    int proctex_diff_lut_offset;
    float proctex_bias;
    vec3 fog_color;
    vec2 proctex_noise_f;
    vec2 proctex_noise_a;
    vec2 proctex_noise_p;
    vec4 const_color[NUM_TEV_STAGES];
    vec4 tev_combiner_buffer_color;
    vec4 clip_coef;
};

layout (std140) uniform shader_light_data {
    ivec4 lighting_lut_offset[NUM_LIGHTING_SAMPLERS / 4];
    vec3 lighting_global_ambient;
    LightSrc light_src[NUM_LIGHTS];
    float lut_scale_d0;
    float lut_scale_d1;
    float lut_scale_sp;
    float lut_scale_fr;
    float lut_scale_rb;
    float lut_scale_rg;
    float lut_scale_rr;
    int shadow_texture_bias;
};

// Rotate the vector v by the quaternion q
vec3 quaternion_rotate(vec4 q, vec3 v) {
    return v + 2.0 * cross(q.xyz, cross(q.xyz, v) + q.w * v);
}

float LookupLightingLUT(int lut_index, int index, float delta) {
    vec2 entry = texelFetch(texture_buffer_lut_lf, lighting_lut_offset[lut_index >> 2][lut_index & 3] + index).rg;
    return entry.r + entry.g * delta;
}

float LookupLightingLUTUnsigned(int lut_index, float pos) {
    int index = clamp(int(pos * 256.0), 0, 255);
    float delta = pos * 256.0 - float(index);
    return LookupLightingLUT(lut_index, index, delta);
}

float LookupLightingLUTSigned(int lut_index, float pos) {
    int index = clamp(int(pos * 128.0), -128, 127);
    float delta = pos * 128.0 - float(index);
    if (index < 0) index += 256;
    return LookupLightingLUT(lut_index, index, delta);
}

float byteround(float x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec2 byteround(vec2 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec3 byteround(vec3 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec4 byteround(vec4 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

// PICA's LOD formula for 2D textures.
// This LOD formula is the same as the LOD lower limit defined in OpenGL.
// f(x, y) >= max{m_u, m_v, m_w}
// (See OpenGL 4.6 spec, 8.14.1 - Scale Factor and Level-of-Detail)
float getLod(vec2 coord) {
    vec2 d = max(abs(dFdx(coord)), abs(dFdy(coord)));
    return log2(max(d.x, d.y));
}

vec4 shadowTexture(vec2 uv, float w) {
    return vec4(1.0);
}

vec4 shadowTextureCube(vec2 uv, float w) {
    return vec4(1.0);
}

void main() {
vec4 rounded_primary_color = byteround(primary_color);
vec4 primary_fragment_color = vec4(0.0);
vec4 secondary_fragment_color = vec4(0.0);
if (!(gl_FragCoord.x >= float(scissor_x1) && gl_FragCoord.y >= float(scissor_y1) && gl_FragCoord.x < float(scissor_x2) && gl_FragCoord.y < float(scissor_y2))) discard;
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((texcolor0.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.a = last_tex_env_out.a;

vec3 color_output_1 = byteround(clamp((vec3(1.0) - primary_fragment_color.rgb) * (const_color[1].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_1 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_1, alpha_output_1), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_2 = byteround(clamp((texcolor0.rgb) + (rounded_primary_color.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_2 = byteround(clamp((texcolor0.a) * (rounded_primary_color.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_2, alpha_output_2), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;

vec3 color_output_3 = byteround(clamp((vec3(1.0) - texcolor0.rgb) * (const_color[3].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_3 = byteround(clamp((texcolor0.a) * (const_color[3].a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_3, alpha_output_3), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;

vec3 color_output_4 = byteround(clamp((texcolor0.rgb) * (const_color[4].rgb) + (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_4 = byteround(clamp((1.0 - texcolor0.a) * (const_color[4].a) + (last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_4, alpha_output_4), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_5 = byteround(clamp((rounded_primary_color.rgb) * (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_5 = byteround(clamp((rounded_primary_color.a) * (last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_5, alpha_output_5), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: 7C55A22039F38849, 39FDAFE7F803EA7B
// program: 4940142D60DA9543, 5D764F9A6220D694, 39FDAFE7F803EA7B
// shader: 8B30, 8A05C0C17BDE80E8

precision highp int;
precision highp float;
precision highp samplerBuffer;
precision highp usampler2D;
precision highp uimage2D;
in vec4 primary_color;
in vec2 texcoord0;
in vec2 texcoord1;
in vec2 texcoord2;
in float texcoord0_w;
in vec4 normquat;
in vec3 view;

#ifndef CITRA_GLES
in vec4 gl_FragCoord;
#endif // CITRA_GLES
out vec4 color;

uniform sampler2D tex0;
uniform sampler2D tex1;
uniform sampler2D tex2;
uniform samplerCube tex_cube;
uniform samplerBuffer texture_buffer_lut_lf;
uniform samplerBuffer texture_buffer_lut_rg;
uniform samplerBuffer texture_buffer_lut_rgba;

#define NUM_TEV_STAGES 6
#define NUM_LIGHTS 8
#define NUM_LIGHTING_SAMPLERS 24

struct LightSrc {
    vec3 specular_0;
    vec3 specular_1;
    vec3 diffuse;
    vec3 ambient;
    vec3 position;
    vec3 spot_direction;
    float dist_atten_bias;
    float dist_atten_scale;
};

layout (std140) uniform shader_data {
    int alphatest_ref;
    float depth_scale;
    float depth_offset;
    float shadow_bias_constant;
    float shadow_bias_linear;
    int scissor_x1;
    int scissor_y1;
    int scissor_x2;
    int scissor_y2;
    int fog_lut_offset;
    int proctex_noise_lut_offset;
    int proctex_color_map_offset;
    int proctex_alpha_map_offset;
    int proctex_lut_offset;
    int proctex_diff_lut_offset;
    float proctex_bias;
    vec3 fog_color;
    vec2 proctex_noise_f;
    vec2 proctex_noise_a;
    vec2 proctex_noise_p;
    vec4 const_color[NUM_TEV_STAGES];
    vec4 tev_combiner_buffer_color;
    vec4 clip_coef;
};

layout (std140) uniform shader_light_data {
    ivec4 lighting_lut_offset[NUM_LIGHTING_SAMPLERS / 4];
    vec3 lighting_global_ambient;
    LightSrc light_src[NUM_LIGHTS];
    float lut_scale_d0;
    float lut_scale_d1;
    float lut_scale_sp;
    float lut_scale_fr;
    float lut_scale_rb;
    float lut_scale_rg;
    float lut_scale_rr;
    int shadow_texture_bias;
};

// Rotate the vector v by the quaternion q
vec3 quaternion_rotate(vec4 q, vec3 v) {
    return v + 2.0 * cross(q.xyz, cross(q.xyz, v) + q.w * v);
}

float LookupLightingLUT(int lut_index, int index, float delta) {
    vec2 entry = texelFetch(texture_buffer_lut_lf, lighting_lut_offset[lut_index >> 2][lut_index & 3] + index).rg;
    return entry.r + entry.g * delta;
}

float LookupLightingLUTUnsigned(int lut_index, float pos) {
    int index = clamp(int(pos * 256.0), 0, 255);
    float delta = pos * 256.0 - float(index);
    return LookupLightingLUT(lut_index, index, delta);
}

float LookupLightingLUTSigned(int lut_index, float pos) {
    int index = clamp(int(pos * 128.0), -128, 127);
    float delta = pos * 128.0 - float(index);
    if (index < 0) index += 256;
    return LookupLightingLUT(lut_index, index, delta);
}

float byteround(float x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec2 byteround(vec2 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec3 byteround(vec3 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec4 byteround(vec4 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

// PICA's LOD formula for 2D textures.
// This LOD formula is the same as the LOD lower limit defined in OpenGL.
// f(x, y) >= max{m_u, m_v, m_w}
// (See OpenGL 4.6 spec, 8.14.1 - Scale Factor and Level-of-Detail)
float getLod(vec2 coord) {
    vec2 d = max(abs(dFdx(coord)), abs(dFdy(coord)));
    return log2(max(d.x, d.y));
}

vec4 shadowTexture(vec2 uv, float w) {
    return vec4(1.0);
}

vec4 shadowTextureCube(vec2 uv, float w) {
    return vec4(1.0);
}

void main() {
vec4 rounded_primary_color = byteround(primary_color);
vec4 primary_fragment_color = vec4(0.0);
vec4 secondary_fragment_color = vec4(0.0);
if (!(gl_FragCoord.x >= float(scissor_x1) && gl_FragCoord.y >= float(scissor_y1) && gl_FragCoord.x < float(scissor_x2) && gl_FragCoord.y < float(scissor_y2))) discard;
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((texcolor0.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.a = last_tex_env_out.a;

vec3 color_output_1 = byteround(clamp((vec3(1.0) - primary_fragment_color.rgb) * (const_color[1].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_1 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_1, alpha_output_1), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_2 = byteround(clamp((texcolor0.rgb) + (rounded_primary_color.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_2 = byteround(clamp((texcolor0.a) * (rounded_primary_color.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_2, alpha_output_2), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_3 = byteround(clamp((texcolor0.rgb) + (rounded_primary_color.aaa), vec3(0.0), vec3(1.0)));
float alpha_output_3 = byteround(clamp((texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_3, alpha_output_3), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;

vec3 color_output_4 = byteround(clamp((const_color[4].aaa) * (last_tex_env_out.rgb) + (const_color[4].rgb) * (vec3(1.0) - (last_tex_env_out.rgb)), vec3(0.0), vec3(1.0)));
float alpha_output_4 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_4, alpha_output_4), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_5 = byteround(clamp((last_tex_env_out.rgb) * (rounded_primary_color.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_5 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_5, alpha_output_5), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: 18ABDD28B761DF72, 8A05C0C17BDE80E8
// program: 4940142D60DA9543, 5D764F9A6220D694, 8A05C0C17BDE80E8
// shader: 8B30, CF3423106C0B6B02

precision highp int;
precision highp float;
precision highp samplerBuffer;
precision highp usampler2D;
precision highp uimage2D;
in vec4 primary_color;
in vec2 texcoord0;
in vec2 texcoord1;
in vec2 texcoord2;
in float texcoord0_w;
in vec4 normquat;
in vec3 view;

#ifndef CITRA_GLES
in vec4 gl_FragCoord;
#endif // CITRA_GLES
out vec4 color;

uniform sampler2D tex0;
uniform sampler2D tex1;
uniform sampler2D tex2;
uniform samplerCube tex_cube;
uniform samplerBuffer texture_buffer_lut_lf;
uniform samplerBuffer texture_buffer_lut_rg;
uniform samplerBuffer texture_buffer_lut_rgba;

#define NUM_TEV_STAGES 6
#define NUM_LIGHTS 8
#define NUM_LIGHTING_SAMPLERS 24

struct LightSrc {
    vec3 specular_0;
    vec3 specular_1;
    vec3 diffuse;
    vec3 ambient;
    vec3 position;
    vec3 spot_direction;
    float dist_atten_bias;
    float dist_atten_scale;
};

layout (std140) uniform shader_data {
    int alphatest_ref;
    float depth_scale;
    float depth_offset;
    float shadow_bias_constant;
    float shadow_bias_linear;
    int scissor_x1;
    int scissor_y1;
    int scissor_x2;
    int scissor_y2;
    int fog_lut_offset;
    int proctex_noise_lut_offset;
    int proctex_color_map_offset;
    int proctex_alpha_map_offset;
    int proctex_lut_offset;
    int proctex_diff_lut_offset;
    float proctex_bias;
    vec3 fog_color;
    vec2 proctex_noise_f;
    vec2 proctex_noise_a;
    vec2 proctex_noise_p;
    vec4 const_color[NUM_TEV_STAGES];
    vec4 tev_combiner_buffer_color;
    vec4 clip_coef;
};

layout (std140) uniform shader_light_data {
    ivec4 lighting_lut_offset[NUM_LIGHTING_SAMPLERS / 4];
    vec3 lighting_global_ambient;
    LightSrc light_src[NUM_LIGHTS];
    float lut_scale_d0;
    float lut_scale_d1;
    float lut_scale_sp;
    float lut_scale_fr;
    float lut_scale_rb;
    float lut_scale_rg;
    float lut_scale_rr;
    int shadow_texture_bias;
};

// Rotate the vector v by the quaternion q
vec3 quaternion_rotate(vec4 q, vec3 v) {
    return v + 2.0 * cross(q.xyz, cross(q.xyz, v) + q.w * v);
}

float LookupLightingLUT(int lut_index, int index, float delta) {
    vec2 entry = texelFetch(texture_buffer_lut_lf, lighting_lut_offset[lut_index >> 2][lut_index & 3] + index).rg;
    return entry.r + entry.g * delta;
}

float LookupLightingLUTUnsigned(int lut_index, float pos) {
    int index = clamp(int(pos * 256.0), 0, 255);
    float delta = pos * 256.0 - float(index);
    return LookupLightingLUT(lut_index, index, delta);
}

float LookupLightingLUTSigned(int lut_index, float pos) {
    int index = clamp(int(pos * 128.0), -128, 127);
    float delta = pos * 128.0 - float(index);
    if (index < 0) index += 256;
    return LookupLightingLUT(lut_index, index, delta);
}

float byteround(float x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec2 byteround(vec2 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec3 byteround(vec3 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec4 byteround(vec4 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

// PICA's LOD formula for 2D textures.
// This LOD formula is the same as the LOD lower limit defined in OpenGL.
// f(x, y) >= max{m_u, m_v, m_w}
// (See OpenGL 4.6 spec, 8.14.1 - Scale Factor and Level-of-Detail)
float getLod(vec2 coord) {
    vec2 d = max(abs(dFdx(coord)), abs(dFdy(coord)));
    return log2(max(d.x, d.y));
}

vec4 shadowTexture(vec2 uv, float w) {
    return vec4(1.0);
}

vec4 shadowTextureCube(vec2 uv, float w) {
    return vec4(1.0);
}

void main() {
vec4 rounded_primary_color = byteround(primary_color);
vec4 primary_fragment_color = vec4(0.0);
vec4 secondary_fragment_color = vec4(0.0);
if (!(gl_FragCoord.x >= float(scissor_x1) && gl_FragCoord.y >= float(scissor_y1) && gl_FragCoord.x < float(scissor_x2) && gl_FragCoord.y < float(scissor_y2))) discard;
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((texcolor0.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.a = last_tex_env_out.a;

vec3 color_output_1 = byteround(clamp((vec3(1.0) - primary_fragment_color.rgb) * (const_color[1].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_1 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_1, alpha_output_1), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_2 = byteround(clamp((texcolor0.rgb) + (rounded_primary_color.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_2 = byteround(clamp((texcolor0.a) * (rounded_primary_color.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_2, alpha_output_2), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_3 = byteround(clamp((const_color[3].rgb) * (vec3(1.0) - texcolor0.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_3 = byteround(clamp((const_color[3].a) * (1.0 - texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_3, alpha_output_3), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;

vec3 color_output_4 = byteround(clamp((const_color[4].rgb) * (texcolor0.rgb) + (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_4 = byteround(clamp((const_color[4].a) * (texcolor0.a) + (last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_4, alpha_output_4), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_5 = byteround(clamp((rounded_primary_color.rgb) * (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_5 = byteround(clamp((rounded_primary_color.a) * (last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_5, alpha_output_5), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: B3CD46DFD41D8BD6, CF3423106C0B6B02
// program: 4940142D60DA9543, 5D764F9A6220D694, CF3423106C0B6B02
// shader: 8B30, 7B757334736D860F

precision highp int;
precision highp float;
precision highp samplerBuffer;
precision highp usampler2D;
precision highp uimage2D;
in vec4 primary_color;
in vec2 texcoord0;
in vec2 texcoord1;
in vec2 texcoord2;
in float texcoord0_w;
in vec4 normquat;
in vec3 view;

#ifndef CITRA_GLES
in vec4 gl_FragCoord;
#endif // CITRA_GLES
out vec4 color;

uniform sampler2D tex0;
uniform sampler2D tex1;
uniform sampler2D tex2;
uniform samplerCube tex_cube;
uniform samplerBuffer texture_buffer_lut_lf;
uniform samplerBuffer texture_buffer_lut_rg;
uniform samplerBuffer texture_buffer_lut_rgba;

#define NUM_TEV_STAGES 6
#define NUM_LIGHTS 8
#define NUM_LIGHTING_SAMPLERS 24

struct LightSrc {
    vec3 specular_0;
    vec3 specular_1;
    vec3 diffuse;
    vec3 ambient;
    vec3 position;
    vec3 spot_direction;
    float dist_atten_bias;
    float dist_atten_scale;
};

layout (std140) uniform shader_data {
    int alphatest_ref;
    float depth_scale;
    float depth_offset;
    float shadow_bias_constant;
    float shadow_bias_linear;
    int scissor_x1;
    int scissor_y1;
    int scissor_x2;
    int scissor_y2;
    int fog_lut_offset;
    int proctex_noise_lut_offset;
    int proctex_color_map_offset;
    int proctex_alpha_map_offset;
    int proctex_lut_offset;
    int proctex_diff_lut_offset;
    float proctex_bias;
    vec3 fog_color;
    vec2 proctex_noise_f;
    vec2 proctex_noise_a;
    vec2 proctex_noise_p;
    vec4 const_color[NUM_TEV_STAGES];
    vec4 tev_combiner_buffer_color;
    vec4 clip_coef;
};

layout (std140) uniform shader_light_data {
    ivec4 lighting_lut_offset[NUM_LIGHTING_SAMPLERS / 4];
    vec3 lighting_global_ambient;
    LightSrc light_src[NUM_LIGHTS];
    float lut_scale_d0;
    float lut_scale_d1;
    float lut_scale_sp;
    float lut_scale_fr;
    float lut_scale_rb;
    float lut_scale_rg;
    float lut_scale_rr;
    int shadow_texture_bias;
};

// Rotate the vector v by the quaternion q
vec3 quaternion_rotate(vec4 q, vec3 v) {
    return v + 2.0 * cross(q.xyz, cross(q.xyz, v) + q.w * v);
}

float LookupLightingLUT(int lut_index, int index, float delta) {
    vec2 entry = texelFetch(texture_buffer_lut_lf, lighting_lut_offset[lut_index >> 2][lut_index & 3] + index).rg;
    return entry.r + entry.g * delta;
}

float LookupLightingLUTUnsigned(int lut_index, float pos) {
    int index = clamp(int(pos * 256.0), 0, 255);
    float delta = pos * 256.0 - float(index);
    return LookupLightingLUT(lut_index, index, delta);
}

float LookupLightingLUTSigned(int lut_index, float pos) {
    int index = clamp(int(pos * 128.0), -128, 127);
    float delta = pos * 128.0 - float(index);
    if (index < 0) index += 256;
    return LookupLightingLUT(lut_index, index, delta);
}

float byteround(float x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec2 byteround(vec2 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec3 byteround(vec3 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec4 byteround(vec4 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

// PICA's LOD formula for 2D textures.
// This LOD formula is the same as the LOD lower limit defined in OpenGL.
// f(x, y) >= max{m_u, m_v, m_w}
// (See OpenGL 4.6 spec, 8.14.1 - Scale Factor and Level-of-Detail)
float getLod(vec2 coord) {
    vec2 d = max(abs(dFdx(coord)), abs(dFdy(coord)));
    return log2(max(d.x, d.y));
}

vec4 shadowTexture(vec2 uv, float w) {
    return vec4(1.0);
}

vec4 shadowTextureCube(vec2 uv, float w) {
    return vec4(1.0);
}

void main() {
vec4 rounded_primary_color = byteround(primary_color);
vec4 primary_fragment_color = vec4(0.0);
vec4 secondary_fragment_color = vec4(0.0);
if (!(gl_FragCoord.x >= float(scissor_x1) && gl_FragCoord.y >= float(scissor_y1) && gl_FragCoord.x < float(scissor_x2) && gl_FragCoord.y < float(scissor_y2))) discard;
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));
vec4 texcolor1 = textureLod(tex1, texcoord1, getLod(texcoord1 * vec2(textureSize(tex1, 0))));
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((texcolor0.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.a = last_tex_env_out.a;

vec3 color_output_1 = byteround(clamp((const_color[1].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_1 = byteround(clamp((texcolor0.a) + (texcolor1.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_1, alpha_output_1), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;

vec3 color_output_2 = byteround(clamp((const_color[2].rgb) * (texcolor0.rgb) + (last_tex_env_out.rgb) * (vec3(1.0) - (texcolor0.rgb)), vec3(0.0), vec3(1.0)));
float alpha_output_2 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_2, alpha_output_2), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;

vec3 color_output_3 = byteround(clamp((last_tex_env_out.rgb) * (texcolor0.aaa), vec3(0.0), vec3(1.0)));
float alpha_output_3 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_3, alpha_output_3), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;

vec3 color_output_4 = byteround(clamp((rounded_primary_color.rgb) * (const_color[4].aaa) + (const_color[4].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_4 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_4, alpha_output_4), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_5 = byteround(clamp((last_tex_env_out.rgb) * (texcolor1.rgb) + (combiner_buffer.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_5 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_5, alpha_output_5), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: 133E2C71730914AD, 7B757334736D860F
// program: 4940142D60DA9543, 5D764F9A6220D694, 7B757334736D860F
// shader: 8B30, 790C6C0A707C2BB5

precision highp int;
precision highp float;
precision highp samplerBuffer;
precision highp usampler2D;
precision highp uimage2D;
in vec4 primary_color;
in vec2 texcoord0;
in vec2 texcoord1;
in vec2 texcoord2;
in float texcoord0_w;
in vec4 normquat;
in vec3 view;

#ifndef CITRA_GLES
in vec4 gl_FragCoord;
#endif // CITRA_GLES
out vec4 color;

uniform sampler2D tex0;
uniform sampler2D tex1;
uniform sampler2D tex2;
uniform samplerCube tex_cube;
uniform samplerBuffer texture_buffer_lut_lf;
uniform samplerBuffer texture_buffer_lut_rg;
uniform samplerBuffer texture_buffer_lut_rgba;

#define NUM_TEV_STAGES 6
#define NUM_LIGHTS 8
#define NUM_LIGHTING_SAMPLERS 24

struct LightSrc {
    vec3 specular_0;
    vec3 specular_1;
    vec3 diffuse;
    vec3 ambient;
    vec3 position;
    vec3 spot_direction;
    float dist_atten_bias;
    float dist_atten_scale;
};

layout (std140) uniform shader_data {
    int alphatest_ref;
    float depth_scale;
    float depth_offset;
    float shadow_bias_constant;
    float shadow_bias_linear;
    int scissor_x1;
    int scissor_y1;
    int scissor_x2;
    int scissor_y2;
    int fog_lut_offset;
    int proctex_noise_lut_offset;
    int proctex_color_map_offset;
    int proctex_alpha_map_offset;
    int proctex_lut_offset;
    int proctex_diff_lut_offset;
    float proctex_bias;
    vec3 fog_color;
    vec2 proctex_noise_f;
    vec2 proctex_noise_a;
    vec2 proctex_noise_p;
    vec4 const_color[NUM_TEV_STAGES];
    vec4 tev_combiner_buffer_color;
    vec4 clip_coef;
};

layout (std140) uniform shader_light_data {
    ivec4 lighting_lut_offset[NUM_LIGHTING_SAMPLERS / 4];
    vec3 lighting_global_ambient;
    LightSrc light_src[NUM_LIGHTS];
    float lut_scale_d0;
    float lut_scale_d1;
    float lut_scale_sp;
    float lut_scale_fr;
    float lut_scale_rb;
    float lut_scale_rg;
    float lut_scale_rr;
    int shadow_texture_bias;
};

// Rotate the vector v by the quaternion q
vec3 quaternion_rotate(vec4 q, vec3 v) {
    return v + 2.0 * cross(q.xyz, cross(q.xyz, v) + q.w * v);
}

float LookupLightingLUT(int lut_index, int index, float delta) {
    vec2 entry = texelFetch(texture_buffer_lut_lf, lighting_lut_offset[lut_index >> 2][lut_index & 3] + index).rg;
    return entry.r + entry.g * delta;
}

float LookupLightingLUTUnsigned(int lut_index, float pos) {
    int index = clamp(int(pos * 256.0), 0, 255);
    float delta = pos * 256.0 - float(index);
    return LookupLightingLUT(lut_index, index, delta);
}

float LookupLightingLUTSigned(int lut_index, float pos) {
    int index = clamp(int(pos * 128.0), -128, 127);
    float delta = pos * 128.0 - float(index);
    if (index < 0) index += 256;
    return LookupLightingLUT(lut_index, index, delta);
}

float byteround(float x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec2 byteround(vec2 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec3 byteround(vec3 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec4 byteround(vec4 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

// PICA's LOD formula for 2D textures.
// This LOD formula is the same as the LOD lower limit defined in OpenGL.
// f(x, y) >= max{m_u, m_v, m_w}
// (See OpenGL 4.6 spec, 8.14.1 - Scale Factor and Level-of-Detail)
float getLod(vec2 coord) {
    vec2 d = max(abs(dFdx(coord)), abs(dFdy(coord)));
    return log2(max(d.x, d.y));
}

vec4 shadowTexture(vec2 uv, float w) {
    return vec4(1.0);
}

vec4 shadowTextureCube(vec2 uv, float w) {
    return vec4(1.0);
}

void main() {
vec4 rounded_primary_color = byteround(primary_color);
vec4 primary_fragment_color = vec4(0.0);
vec4 secondary_fragment_color = vec4(0.0);
if (!(gl_FragCoord.x >= float(scissor_x1) && gl_FragCoord.y >= float(scissor_y1) && gl_FragCoord.x < float(scissor_x2) && gl_FragCoord.y < float(scissor_y2))) discard;
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));
vec4 texcolor1 = textureLod(tex1, texcoord1, getLod(texcoord1 * vec2(textureSize(tex1, 0))));
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((texcolor0.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.a = last_tex_env_out.a;

vec3 color_output_1 = byteround(clamp((const_color[1].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_1 = byteround(clamp((texcolor0.a) + (texcolor1.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_1, alpha_output_1), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;

vec3 color_output_2 = byteround(clamp((const_color[2].rgb) * (texcolor0.rgb) + (last_tex_env_out.rgb) * (vec3(1.0) - (texcolor0.rgb)), vec3(0.0), vec3(1.0)));
float alpha_output_2 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_2, alpha_output_2), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;

vec3 color_output_3 = byteround(clamp((vec3(1.0) - texcolor0.rgb) * (const_color[3].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_3 = byteround(clamp((texcolor0.a) * (const_color[3].a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_3, alpha_output_3), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;

vec3 color_output_4 = byteround(clamp((texcolor0.rgb) * (const_color[4].rgb) + (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_4 = byteround(clamp((1.0 - texcolor0.a) * (const_color[4].a) + (last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_4, alpha_output_4), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_5 = byteround(clamp((rounded_primary_color.rgb) * (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_5 = byteround(clamp((rounded_primary_color.a) * (last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_5, alpha_output_5), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: 9D9AD8077358CDAB, 790C6C0A707C2BB5
// program: 4940142D60DA9543, 5D764F9A6220D694, 790C6C0A707C2BB5
// shader: 8B30, 88669612487D229F

precision highp int;
precision highp float;
precision highp samplerBuffer;
precision highp usampler2D;
precision highp uimage2D;
in vec4 primary_color;
in vec2 texcoord0;
in vec2 texcoord1;
in vec2 texcoord2;
in float texcoord0_w;
in vec4 normquat;
in vec3 view;

#ifndef CITRA_GLES
in vec4 gl_FragCoord;
#endif // CITRA_GLES
out vec4 color;

uniform sampler2D tex0;
uniform sampler2D tex1;
uniform sampler2D tex2;
uniform samplerCube tex_cube;
uniform samplerBuffer texture_buffer_lut_lf;
uniform samplerBuffer texture_buffer_lut_rg;
uniform samplerBuffer texture_buffer_lut_rgba;

#define NUM_TEV_STAGES 6
#define NUM_LIGHTS 8
#define NUM_LIGHTING_SAMPLERS 24

struct LightSrc {
    vec3 specular_0;
    vec3 specular_1;
    vec3 diffuse;
    vec3 ambient;
    vec3 position;
    vec3 spot_direction;
    float dist_atten_bias;
    float dist_atten_scale;
};

layout (std140) uniform shader_data {
    int alphatest_ref;
    float depth_scale;
    float depth_offset;
    float shadow_bias_constant;
    float shadow_bias_linear;
    int scissor_x1;
    int scissor_y1;
    int scissor_x2;
    int scissor_y2;
    int fog_lut_offset;
    int proctex_noise_lut_offset;
    int proctex_color_map_offset;
    int proctex_alpha_map_offset;
    int proctex_lut_offset;
    int proctex_diff_lut_offset;
    float proctex_bias;
    vec3 fog_color;
    vec2 proctex_noise_f;
    vec2 proctex_noise_a;
    vec2 proctex_noise_p;
    vec4 const_color[NUM_TEV_STAGES];
    vec4 tev_combiner_buffer_color;
    vec4 clip_coef;
};

layout (std140) uniform shader_light_data {
    ivec4 lighting_lut_offset[NUM_LIGHTING_SAMPLERS / 4];
    vec3 lighting_global_ambient;
    LightSrc light_src[NUM_LIGHTS];
    float lut_scale_d0;
    float lut_scale_d1;
    float lut_scale_sp;
    float lut_scale_fr;
    float lut_scale_rb;
    float lut_scale_rg;
    float lut_scale_rr;
    int shadow_texture_bias;
};

// Rotate the vector v by the quaternion q
vec3 quaternion_rotate(vec4 q, vec3 v) {
    return v + 2.0 * cross(q.xyz, cross(q.xyz, v) + q.w * v);
}

float LookupLightingLUT(int lut_index, int index, float delta) {
    vec2 entry = texelFetch(texture_buffer_lut_lf, lighting_lut_offset[lut_index >> 2][lut_index & 3] + index).rg;
    return entry.r + entry.g * delta;
}

float LookupLightingLUTUnsigned(int lut_index, float pos) {
    int index = clamp(int(pos * 256.0), 0, 255);
    float delta = pos * 256.0 - float(index);
    return LookupLightingLUT(lut_index, index, delta);
}

float LookupLightingLUTSigned(int lut_index, float pos) {
    int index = clamp(int(pos * 128.0), -128, 127);
    float delta = pos * 128.0 - float(index);
    if (index < 0) index += 256;
    return LookupLightingLUT(lut_index, index, delta);
}

float byteround(float x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec2 byteround(vec2 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec3 byteround(vec3 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec4 byteround(vec4 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

// PICA's LOD formula for 2D textures.
// This LOD formula is the same as the LOD lower limit defined in OpenGL.
// f(x, y) >= max{m_u, m_v, m_w}
// (See OpenGL 4.6 spec, 8.14.1 - Scale Factor and Level-of-Detail)
float getLod(vec2 coord) {
    vec2 d = max(abs(dFdx(coord)), abs(dFdy(coord)));
    return log2(max(d.x, d.y));
}

vec4 shadowTexture(vec2 uv, float w) {
    return vec4(1.0);
}

vec4 shadowTextureCube(vec2 uv, float w) {
    return vec4(1.0);
}

void main() {
vec4 rounded_primary_color = byteround(primary_color);
vec4 primary_fragment_color = vec4(0.0);
vec4 secondary_fragment_color = vec4(0.0);
if (!(gl_FragCoord.x >= float(scissor_x1) && gl_FragCoord.y >= float(scissor_y1) && gl_FragCoord.x < float(scissor_x2) && gl_FragCoord.y < float(scissor_y2))) discard;
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));
vec4 texcolor1 = textureLod(tex1, texcoord1, getLod(texcoord1 * vec2(textureSize(tex1, 0))));
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((texcolor0.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.a = last_tex_env_out.a;

vec3 color_output_1 = byteround(clamp((const_color[1].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_1 = byteround(clamp((texcolor0.a) + (texcolor1.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_1, alpha_output_1), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;

vec3 color_output_2 = byteround(clamp((const_color[2].rgb) * (texcolor0.rgb) + (last_tex_env_out.rgb) * (vec3(1.0) - (texcolor0.rgb)), vec3(0.0), vec3(1.0)));
float alpha_output_2 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_2, alpha_output_2), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;

vec3 color_output_3 = byteround(clamp((const_color[3].rgb) * (vec3(1.0) - texcolor0.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_3 = byteround(clamp((const_color[3].a) * (1.0 - texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_3, alpha_output_3), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;

vec3 color_output_4 = byteround(clamp((const_color[4].rgb) * (texcolor0.rgb) + (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_4 = byteround(clamp((const_color[4].a) * (texcolor0.a) + (last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_4, alpha_output_4), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_5 = byteround(clamp((rounded_primary_color.rgb) * (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_5 = byteround(clamp((rounded_primary_color.a) * (last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_5, alpha_output_5), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: 52023CF8F2A7DB11, 88669612487D229F
// program: 4940142D60DA9543, 5D764F9A6220D694, 88669612487D229F
// shader: 8B30, E63DE640059C026B

precision highp int;
precision highp float;
precision highp samplerBuffer;
precision highp usampler2D;
precision highp uimage2D;
in vec4 primary_color;
in vec2 texcoord0;
in vec2 texcoord1;
in vec2 texcoord2;
in float texcoord0_w;
in vec4 normquat;
in vec3 view;

#ifndef CITRA_GLES
in vec4 gl_FragCoord;
#endif // CITRA_GLES
out vec4 color;

uniform sampler2D tex0;
uniform sampler2D tex1;
uniform sampler2D tex2;
uniform samplerCube tex_cube;
uniform samplerBuffer texture_buffer_lut_lf;
uniform samplerBuffer texture_buffer_lut_rg;
uniform samplerBuffer texture_buffer_lut_rgba;

#define NUM_TEV_STAGES 6
#define NUM_LIGHTS 8
#define NUM_LIGHTING_SAMPLERS 24

struct LightSrc {
    vec3 specular_0;
    vec3 specular_1;
    vec3 diffuse;
    vec3 ambient;
    vec3 position;
    vec3 spot_direction;
    float dist_atten_bias;
    float dist_atten_scale;
};

layout (std140) uniform shader_data {
    int alphatest_ref;
    float depth_scale;
    float depth_offset;
    float shadow_bias_constant;
    float shadow_bias_linear;
    int scissor_x1;
    int scissor_y1;
    int scissor_x2;
    int scissor_y2;
    int fog_lut_offset;
    int proctex_noise_lut_offset;
    int proctex_color_map_offset;
    int proctex_alpha_map_offset;
    int proctex_lut_offset;
    int proctex_diff_lut_offset;
    float proctex_bias;
    vec3 fog_color;
    vec2 proctex_noise_f;
    vec2 proctex_noise_a;
    vec2 proctex_noise_p;
    vec4 const_color[NUM_TEV_STAGES];
    vec4 tev_combiner_buffer_color;
    vec4 clip_coef;
};

layout (std140) uniform shader_light_data {
    ivec4 lighting_lut_offset[NUM_LIGHTING_SAMPLERS / 4];
    vec3 lighting_global_ambient;
    LightSrc light_src[NUM_LIGHTS];
    float lut_scale_d0;
    float lut_scale_d1;
    float lut_scale_sp;
    float lut_scale_fr;
    float lut_scale_rb;
    float lut_scale_rg;
    float lut_scale_rr;
    int shadow_texture_bias;
};

// Rotate the vector v by the quaternion q
vec3 quaternion_rotate(vec4 q, vec3 v) {
    return v + 2.0 * cross(q.xyz, cross(q.xyz, v) + q.w * v);
}

float LookupLightingLUT(int lut_index, int index, float delta) {
    vec2 entry = texelFetch(texture_buffer_lut_lf, lighting_lut_offset[lut_index >> 2][lut_index & 3] + index).rg;
    return entry.r + entry.g * delta;
}

float LookupLightingLUTUnsigned(int lut_index, float pos) {
    int index = clamp(int(pos * 256.0), 0, 255);
    float delta = pos * 256.0 - float(index);
    return LookupLightingLUT(lut_index, index, delta);
}

float LookupLightingLUTSigned(int lut_index, float pos) {
    int index = clamp(int(pos * 128.0), -128, 127);
    float delta = pos * 128.0 - float(index);
    if (index < 0) index += 256;
    return LookupLightingLUT(lut_index, index, delta);
}

float byteround(float x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec2 byteround(vec2 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec3 byteround(vec3 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec4 byteround(vec4 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

// PICA's LOD formula for 2D textures.
// This LOD formula is the same as the LOD lower limit defined in OpenGL.
// f(x, y) >= max{m_u, m_v, m_w}
// (See OpenGL 4.6 spec, 8.14.1 - Scale Factor and Level-of-Detail)
float getLod(vec2 coord) {
    vec2 d = max(abs(dFdx(coord)), abs(dFdy(coord)));
    return log2(max(d.x, d.y));
}

vec4 shadowTexture(vec2 uv, float w) {
    return vec4(1.0);
}

vec4 shadowTextureCube(vec2 uv, float w) {
    return vec4(1.0);
}

void main() {
vec4 rounded_primary_color = byteround(primary_color);
vec4 primary_fragment_color = vec4(0.0);
vec4 secondary_fragment_color = vec4(0.0);
if (!(gl_FragCoord.x >= float(scissor_x1) && gl_FragCoord.y >= float(scissor_y1) && gl_FragCoord.x < float(scissor_x2) && gl_FragCoord.y < float(scissor_y2))) discard;
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));
vec4 texcolor1 = textureLod(tex1, texcoord1, getLod(texcoord1 * vec2(textureSize(tex1, 0))));
vec4 texcolor2 = textureLod(tex2, texcoord2, getLod(texcoord2 * vec2(textureSize(tex2, 0))));
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((texcolor0.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.a = last_tex_env_out.a;

vec3 color_output_1 = byteround(clamp((const_color[1].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_1 = byteround(clamp((texcolor2.a) + (texcolor1.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_1, alpha_output_1), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;

vec3 color_output_2 = byteround(clamp((last_tex_env_out.rgb) * (texcolor0.rgb) + (const_color[2].rgb) * (vec3(1.0) - (texcolor0.rgb)), vec3(0.0), vec3(1.0)));
float alpha_output_2 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_2, alpha_output_2), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;

vec3 color_output_3 = byteround(clamp((last_tex_env_out.rgb) * (texcolor2.aaa), vec3(0.0), vec3(1.0)));
float alpha_output_3 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_3, alpha_output_3), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;

vec3 color_output_4 = byteround(clamp((rounded_primary_color.rgb) * (const_color[4].aaa) + (const_color[4].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_4 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_4, alpha_output_4), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_5 = byteround(clamp((last_tex_env_out.rgb) * (texcolor1.rgb) + (combiner_buffer.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_5 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_5, alpha_output_5), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: 133E2C7129C5B508, E63DE640059C026B
// program: 4940142D60DA9543, 5D764F9A6220D694, E63DE640059C026B
// reference: 4296362C766824BB, 4940142D60DA9543
// shader: 8B30, DEAC746E254AC827

precision highp int;
precision highp float;
precision highp samplerBuffer;
precision highp usampler2D;
precision highp uimage2D;
in vec4 primary_color;
in vec2 texcoord0;
in vec2 texcoord1;
in vec2 texcoord2;
in float texcoord0_w;
in vec4 normquat;
in vec3 view;

#ifndef CITRA_GLES
in vec4 gl_FragCoord;
#endif // CITRA_GLES
out vec4 color;

uniform sampler2D tex0;
uniform sampler2D tex1;
uniform sampler2D tex2;
uniform samplerCube tex_cube;
uniform samplerBuffer texture_buffer_lut_lf;
uniform samplerBuffer texture_buffer_lut_rg;
uniform samplerBuffer texture_buffer_lut_rgba;

#define NUM_TEV_STAGES 6
#define NUM_LIGHTS 8
#define NUM_LIGHTING_SAMPLERS 24

struct LightSrc {
    vec3 specular_0;
    vec3 specular_1;
    vec3 diffuse;
    vec3 ambient;
    vec3 position;
    vec3 spot_direction;
    float dist_atten_bias;
    float dist_atten_scale;
};

layout (std140) uniform shader_data {
    int alphatest_ref;
    float depth_scale;
    float depth_offset;
    float shadow_bias_constant;
    float shadow_bias_linear;
    int scissor_x1;
    int scissor_y1;
    int scissor_x2;
    int scissor_y2;
    int fog_lut_offset;
    int proctex_noise_lut_offset;
    int proctex_color_map_offset;
    int proctex_alpha_map_offset;
    int proctex_lut_offset;
    int proctex_diff_lut_offset;
    float proctex_bias;
    vec3 fog_color;
    vec2 proctex_noise_f;
    vec2 proctex_noise_a;
    vec2 proctex_noise_p;
    vec4 const_color[NUM_TEV_STAGES];
    vec4 tev_combiner_buffer_color;
    vec4 clip_coef;
};

layout (std140) uniform shader_light_data {
    ivec4 lighting_lut_offset[NUM_LIGHTING_SAMPLERS / 4];
    vec3 lighting_global_ambient;
    LightSrc light_src[NUM_LIGHTS];
    float lut_scale_d0;
    float lut_scale_d1;
    float lut_scale_sp;
    float lut_scale_fr;
    float lut_scale_rb;
    float lut_scale_rg;
    float lut_scale_rr;
    int shadow_texture_bias;
};

// Rotate the vector v by the quaternion q
vec3 quaternion_rotate(vec4 q, vec3 v) {
    return v + 2.0 * cross(q.xyz, cross(q.xyz, v) + q.w * v);
}

float LookupLightingLUT(int lut_index, int index, float delta) {
    vec2 entry = texelFetch(texture_buffer_lut_lf, lighting_lut_offset[lut_index >> 2][lut_index & 3] + index).rg;
    return entry.r + entry.g * delta;
}

float LookupLightingLUTUnsigned(int lut_index, float pos) {
    int index = clamp(int(pos * 256.0), 0, 255);
    float delta = pos * 256.0 - float(index);
    return LookupLightingLUT(lut_index, index, delta);
}

float LookupLightingLUTSigned(int lut_index, float pos) {
    int index = clamp(int(pos * 128.0), -128, 127);
    float delta = pos * 128.0 - float(index);
    if (index < 0) index += 256;
    return LookupLightingLUT(lut_index, index, delta);
}

float byteround(float x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec2 byteround(vec2 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec3 byteround(vec3 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec4 byteround(vec4 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

// PICA's LOD formula for 2D textures.
// This LOD formula is the same as the LOD lower limit defined in OpenGL.
// f(x, y) >= max{m_u, m_v, m_w}
// (See OpenGL 4.6 spec, 8.14.1 - Scale Factor and Level-of-Detail)
float getLod(vec2 coord) {
    vec2 d = max(abs(dFdx(coord)), abs(dFdy(coord)));
    return log2(max(d.x, d.y));
}

vec4 shadowTexture(vec2 uv, float w) {
    return vec4(1.0);
}

vec4 shadowTextureCube(vec2 uv, float w) {
    return vec4(1.0);
}

void main() {
vec4 rounded_primary_color = byteround(primary_color);
vec4 primary_fragment_color = vec4(0.0);
vec4 secondary_fragment_color = vec4(0.0);
if (!(gl_FragCoord.x >= float(scissor_x1) && gl_FragCoord.y >= float(scissor_y1) && gl_FragCoord.x < float(scissor_x2) && gl_FragCoord.y < float(scissor_y2))) discard;
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));
vec4 texcolor1 = textureLod(tex1, texcoord1, getLod(texcoord1 * vec2(textureSize(tex1, 0))));
vec4 texcolor2 = textureLod(tex2, texcoord2, getLod(texcoord2 * vec2(textureSize(tex2, 0))));
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((texcolor0.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_1 = byteround(clamp((const_color[1].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_1 = byteround(clamp((texcolor2.a) + (texcolor1.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_1, alpha_output_1), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_2 = byteround(clamp((last_tex_env_out.rgb) * (texcolor0.rgb) + (const_color[2].rgb) * (vec3(1.0) - (texcolor0.rgb)), vec3(0.0), vec3(1.0)));
float alpha_output_2 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_2, alpha_output_2), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_3 = byteround(clamp((const_color[3].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_3 = byteround(clamp((texcolor0.a) * (texcolor2.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_3, alpha_output_3), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_4 = byteround(clamp((last_tex_env_out.rgb) * (texcolor0.rgb) + (texcolor1.rgb) * (vec3(1.0) - (texcolor0.rgb)), vec3(0.0), vec3(1.0)));
float alpha_output_4 = byteround(clamp((last_tex_env_out.a) * (const_color[4].a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_4, alpha_output_4), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_5 = byteround(clamp((last_tex_env_out.rgb) + (const_color[5].aaa), vec3(0.0), vec3(1.0)));
float alpha_output_5 = byteround(clamp((last_tex_env_out.a) * (texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_5, alpha_output_5), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

if (int(last_tex_env_out.a * 255.0) == alphatest_ref) discard;
gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: 0B10048870630A42, DEAC746E254AC827
// program: 4940142D60DA9543, 5D764F9A6220D694, DEAC746E254AC827
// reference: 4296362C2DB5D67F, 4940142D60DA9543
// shader: 8B30, 0830BCEB478EC9DD

precision highp int;
precision highp float;
precision highp samplerBuffer;
precision highp usampler2D;
precision highp uimage2D;
in vec4 primary_color;
in vec2 texcoord0;
in vec2 texcoord1;
in vec2 texcoord2;
in float texcoord0_w;
in vec4 normquat;
in vec3 view;

#ifndef CITRA_GLES
in vec4 gl_FragCoord;
#endif // CITRA_GLES
out vec4 color;

uniform sampler2D tex0;
uniform sampler2D tex1;
uniform sampler2D tex2;
uniform samplerCube tex_cube;
uniform samplerBuffer texture_buffer_lut_lf;
uniform samplerBuffer texture_buffer_lut_rg;
uniform samplerBuffer texture_buffer_lut_rgba;

#define NUM_TEV_STAGES 6
#define NUM_LIGHTS 8
#define NUM_LIGHTING_SAMPLERS 24

struct LightSrc {
    vec3 specular_0;
    vec3 specular_1;
    vec3 diffuse;
    vec3 ambient;
    vec3 position;
    vec3 spot_direction;
    float dist_atten_bias;
    float dist_atten_scale;
};

layout (std140) uniform shader_data {
    int alphatest_ref;
    float depth_scale;
    float depth_offset;
    float shadow_bias_constant;
    float shadow_bias_linear;
    int scissor_x1;
    int scissor_y1;
    int scissor_x2;
    int scissor_y2;
    int fog_lut_offset;
    int proctex_noise_lut_offset;
    int proctex_color_map_offset;
    int proctex_alpha_map_offset;
    int proctex_lut_offset;
    int proctex_diff_lut_offset;
    float proctex_bias;
    vec3 fog_color;
    vec2 proctex_noise_f;
    vec2 proctex_noise_a;
    vec2 proctex_noise_p;
    vec4 const_color[NUM_TEV_STAGES];
    vec4 tev_combiner_buffer_color;
    vec4 clip_coef;
};

layout (std140) uniform shader_light_data {
    ivec4 lighting_lut_offset[NUM_LIGHTING_SAMPLERS / 4];
    vec3 lighting_global_ambient;
    LightSrc light_src[NUM_LIGHTS];
    float lut_scale_d0;
    float lut_scale_d1;
    float lut_scale_sp;
    float lut_scale_fr;
    float lut_scale_rb;
    float lut_scale_rg;
    float lut_scale_rr;
    int shadow_texture_bias;
};

// Rotate the vector v by the quaternion q
vec3 quaternion_rotate(vec4 q, vec3 v) {
    return v + 2.0 * cross(q.xyz, cross(q.xyz, v) + q.w * v);
}

float LookupLightingLUT(int lut_index, int index, float delta) {
    vec2 entry = texelFetch(texture_buffer_lut_lf, lighting_lut_offset[lut_index >> 2][lut_index & 3] + index).rg;
    return entry.r + entry.g * delta;
}

float LookupLightingLUTUnsigned(int lut_index, float pos) {
    int index = clamp(int(pos * 256.0), 0, 255);
    float delta = pos * 256.0 - float(index);
    return LookupLightingLUT(lut_index, index, delta);
}

float LookupLightingLUTSigned(int lut_index, float pos) {
    int index = clamp(int(pos * 128.0), -128, 127);
    float delta = pos * 128.0 - float(index);
    if (index < 0) index += 256;
    return LookupLightingLUT(lut_index, index, delta);
}

float byteround(float x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec2 byteround(vec2 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec3 byteround(vec3 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec4 byteround(vec4 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

// PICA's LOD formula for 2D textures.
// This LOD formula is the same as the LOD lower limit defined in OpenGL.
// f(x, y) >= max{m_u, m_v, m_w}
// (See OpenGL 4.6 spec, 8.14.1 - Scale Factor and Level-of-Detail)
float getLod(vec2 coord) {
    vec2 d = max(abs(dFdx(coord)), abs(dFdy(coord)));
    return log2(max(d.x, d.y));
}

vec4 shadowTexture(vec2 uv, float w) {
    return vec4(1.0);
}

vec4 shadowTextureCube(vec2 uv, float w) {
    return vec4(1.0);
}

void main() {
vec4 rounded_primary_color = byteround(primary_color);
vec4 primary_fragment_color = vec4(0.0);
vec4 secondary_fragment_color = vec4(0.0);
if (!(gl_FragCoord.x >= float(scissor_x1) && gl_FragCoord.y >= float(scissor_y1) && gl_FragCoord.x < float(scissor_x2) && gl_FragCoord.y < float(scissor_y2))) discard;
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));
vec4 texcolor1 = textureLod(tex1, texcoord1, getLod(texcoord1 * vec2(textureSize(tex1, 0))));
vec4 texcolor2 = textureLod(tex2, texcoord2, getLod(texcoord2 * vec2(textureSize(tex2, 0))));
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((texcolor0.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_1 = byteround(clamp((const_color[1].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_1 = byteround(clamp((texcolor2.a) + (texcolor1.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_1, alpha_output_1), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_2 = byteround(clamp((last_tex_env_out.rgb) * (texcolor0.rgb) + (const_color[2].rgb) * (vec3(1.0) - (texcolor0.rgb)), vec3(0.0), vec3(1.0)));
float alpha_output_2 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_2, alpha_output_2), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_3 = byteround(clamp((vec3(1.0) - texcolor0.rgb) * (const_color[3].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_3 = byteround(clamp((texcolor0.a) * (const_color[3].a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_3, alpha_output_3), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_4 = byteround(clamp((texcolor0.rgb) * (const_color[4].rgb) + (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_4 = byteround(clamp((1.0 - texcolor0.a) * (const_color[4].a) + (last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_4, alpha_output_4), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_5 = byteround(clamp((rounded_primary_color.rgb) * (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_5 = byteround(clamp((rounded_primary_color.a) * (last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_5, alpha_output_5), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: 9D9AD8077A813661, 0830BCEB478EC9DD
// program: 4940142D60DA9543, 5D764F9A6220D694, 0830BCEB478EC9DD
// shader: 8B30, 2B4ABB8F5912C4B1

precision highp int;
precision highp float;
precision highp samplerBuffer;
precision highp usampler2D;
precision highp uimage2D;
in vec4 primary_color;
in vec2 texcoord0;
in vec2 texcoord1;
in vec2 texcoord2;
in float texcoord0_w;
in vec4 normquat;
in vec3 view;

#ifndef CITRA_GLES
in vec4 gl_FragCoord;
#endif // CITRA_GLES
out vec4 color;

uniform sampler2D tex0;
uniform sampler2D tex1;
uniform sampler2D tex2;
uniform samplerCube tex_cube;
uniform samplerBuffer texture_buffer_lut_lf;
uniform samplerBuffer texture_buffer_lut_rg;
uniform samplerBuffer texture_buffer_lut_rgba;

#define NUM_TEV_STAGES 6
#define NUM_LIGHTS 8
#define NUM_LIGHTING_SAMPLERS 24

struct LightSrc {
    vec3 specular_0;
    vec3 specular_1;
    vec3 diffuse;
    vec3 ambient;
    vec3 position;
    vec3 spot_direction;
    float dist_atten_bias;
    float dist_atten_scale;
};

layout (std140) uniform shader_data {
    int alphatest_ref;
    float depth_scale;
    float depth_offset;
    float shadow_bias_constant;
    float shadow_bias_linear;
    int scissor_x1;
    int scissor_y1;
    int scissor_x2;
    int scissor_y2;
    int fog_lut_offset;
    int proctex_noise_lut_offset;
    int proctex_color_map_offset;
    int proctex_alpha_map_offset;
    int proctex_lut_offset;
    int proctex_diff_lut_offset;
    float proctex_bias;
    vec3 fog_color;
    vec2 proctex_noise_f;
    vec2 proctex_noise_a;
    vec2 proctex_noise_p;
    vec4 const_color[NUM_TEV_STAGES];
    vec4 tev_combiner_buffer_color;
    vec4 clip_coef;
};

layout (std140) uniform shader_light_data {
    ivec4 lighting_lut_offset[NUM_LIGHTING_SAMPLERS / 4];
    vec3 lighting_global_ambient;
    LightSrc light_src[NUM_LIGHTS];
    float lut_scale_d0;
    float lut_scale_d1;
    float lut_scale_sp;
    float lut_scale_fr;
    float lut_scale_rb;
    float lut_scale_rg;
    float lut_scale_rr;
    int shadow_texture_bias;
};

// Rotate the vector v by the quaternion q
vec3 quaternion_rotate(vec4 q, vec3 v) {
    return v + 2.0 * cross(q.xyz, cross(q.xyz, v) + q.w * v);
}

float LookupLightingLUT(int lut_index, int index, float delta) {
    vec2 entry = texelFetch(texture_buffer_lut_lf, lighting_lut_offset[lut_index >> 2][lut_index & 3] + index).rg;
    return entry.r + entry.g * delta;
}

float LookupLightingLUTUnsigned(int lut_index, float pos) {
    int index = clamp(int(pos * 256.0), 0, 255);
    float delta = pos * 256.0 - float(index);
    return LookupLightingLUT(lut_index, index, delta);
}

float LookupLightingLUTSigned(int lut_index, float pos) {
    int index = clamp(int(pos * 128.0), -128, 127);
    float delta = pos * 128.0 - float(index);
    if (index < 0) index += 256;
    return LookupLightingLUT(lut_index, index, delta);
}

float byteround(float x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec2 byteround(vec2 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec3 byteround(vec3 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec4 byteround(vec4 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

// PICA's LOD formula for 2D textures.
// This LOD formula is the same as the LOD lower limit defined in OpenGL.
// f(x, y) >= max{m_u, m_v, m_w}
// (See OpenGL 4.6 spec, 8.14.1 - Scale Factor and Level-of-Detail)
float getLod(vec2 coord) {
    vec2 d = max(abs(dFdx(coord)), abs(dFdy(coord)));
    return log2(max(d.x, d.y));
}

vec4 shadowTexture(vec2 uv, float w) {
    return vec4(1.0);
}

vec4 shadowTextureCube(vec2 uv, float w) {
    return vec4(1.0);
}

void main() {
vec4 rounded_primary_color = byteround(primary_color);
vec4 primary_fragment_color = vec4(0.0);
vec4 secondary_fragment_color = vec4(0.0);
if (!(gl_FragCoord.x >= float(scissor_x1) && gl_FragCoord.y >= float(scissor_y1) && gl_FragCoord.x < float(scissor_x2) && gl_FragCoord.y < float(scissor_y2))) discard;
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));
vec4 texcolor1 = textureLod(tex1, texcoord1, getLod(texcoord1 * vec2(textureSize(tex1, 0))));
vec4 texcolor2 = textureLod(tex2, texcoord2, getLod(texcoord2 * vec2(textureSize(tex2, 0))));
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((texcolor0.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_1 = byteround(clamp((const_color[1].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_1 = byteround(clamp((texcolor2.a) + (texcolor1.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_1, alpha_output_1), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_2 = byteround(clamp((last_tex_env_out.rgb) * (texcolor0.rgb) + (const_color[2].rgb) * (vec3(1.0) - (texcolor0.rgb)), vec3(0.0), vec3(1.0)));
float alpha_output_2 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_2, alpha_output_2), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_3 = byteround(clamp((const_color[3].rgb) * (vec3(1.0) - texcolor0.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_3 = byteround(clamp((const_color[3].a) * (1.0 - texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_3, alpha_output_3), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_4 = byteround(clamp((const_color[4].rgb) * (texcolor0.rgb) + (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_4 = byteround(clamp((const_color[4].a) * (texcolor0.a) + (last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_4, alpha_output_4), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_5 = byteround(clamp((rounded_primary_color.rgb) * (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_5 = byteround(clamp((rounded_primary_color.a) * (last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_5, alpha_output_5), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: 52023CF8FB7E20DB, 2B4ABB8F5912C4B1
// program: 4940142D60DA9543, 5D764F9A6220D694, 2B4ABB8F5912C4B1
// shader: 8B30, 80840241D3DF1FC3

precision highp int;
precision highp float;
precision highp samplerBuffer;
precision highp usampler2D;
precision highp uimage2D;
in vec4 primary_color;
in vec2 texcoord0;
in vec2 texcoord1;
in vec2 texcoord2;
in float texcoord0_w;
in vec4 normquat;
in vec3 view;

#ifndef CITRA_GLES
in vec4 gl_FragCoord;
#endif // CITRA_GLES
out vec4 color;

uniform sampler2D tex0;
uniform sampler2D tex1;
uniform sampler2D tex2;
uniform samplerCube tex_cube;
uniform samplerBuffer texture_buffer_lut_lf;
uniform samplerBuffer texture_buffer_lut_rg;
uniform samplerBuffer texture_buffer_lut_rgba;

#define NUM_TEV_STAGES 6
#define NUM_LIGHTS 8
#define NUM_LIGHTING_SAMPLERS 24

struct LightSrc {
    vec3 specular_0;
    vec3 specular_1;
    vec3 diffuse;
    vec3 ambient;
    vec3 position;
    vec3 spot_direction;
    float dist_atten_bias;
    float dist_atten_scale;
};

layout (std140) uniform shader_data {
    int alphatest_ref;
    float depth_scale;
    float depth_offset;
    float shadow_bias_constant;
    float shadow_bias_linear;
    int scissor_x1;
    int scissor_y1;
    int scissor_x2;
    int scissor_y2;
    int fog_lut_offset;
    int proctex_noise_lut_offset;
    int proctex_color_map_offset;
    int proctex_alpha_map_offset;
    int proctex_lut_offset;
    int proctex_diff_lut_offset;
    float proctex_bias;
    vec3 fog_color;
    vec2 proctex_noise_f;
    vec2 proctex_noise_a;
    vec2 proctex_noise_p;
    vec4 const_color[NUM_TEV_STAGES];
    vec4 tev_combiner_buffer_color;
    vec4 clip_coef;
};

layout (std140) uniform shader_light_data {
    ivec4 lighting_lut_offset[NUM_LIGHTING_SAMPLERS / 4];
    vec3 lighting_global_ambient;
    LightSrc light_src[NUM_LIGHTS];
    float lut_scale_d0;
    float lut_scale_d1;
    float lut_scale_sp;
    float lut_scale_fr;
    float lut_scale_rb;
    float lut_scale_rg;
    float lut_scale_rr;
    int shadow_texture_bias;
};

// Rotate the vector v by the quaternion q
vec3 quaternion_rotate(vec4 q, vec3 v) {
    return v + 2.0 * cross(q.xyz, cross(q.xyz, v) + q.w * v);
}

float LookupLightingLUT(int lut_index, int index, float delta) {
    vec2 entry = texelFetch(texture_buffer_lut_lf, lighting_lut_offset[lut_index >> 2][lut_index & 3] + index).rg;
    return entry.r + entry.g * delta;
}

float LookupLightingLUTUnsigned(int lut_index, float pos) {
    int index = clamp(int(pos * 256.0), 0, 255);
    float delta = pos * 256.0 - float(index);
    return LookupLightingLUT(lut_index, index, delta);
}

float LookupLightingLUTSigned(int lut_index, float pos) {
    int index = clamp(int(pos * 128.0), -128, 127);
    float delta = pos * 128.0 - float(index);
    if (index < 0) index += 256;
    return LookupLightingLUT(lut_index, index, delta);
}

float byteround(float x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec2 byteround(vec2 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec3 byteround(vec3 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec4 byteround(vec4 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

// PICA's LOD formula for 2D textures.
// This LOD formula is the same as the LOD lower limit defined in OpenGL.
// f(x, y) >= max{m_u, m_v, m_w}
// (See OpenGL 4.6 spec, 8.14.1 - Scale Factor and Level-of-Detail)
float getLod(vec2 coord) {
    vec2 d = max(abs(dFdx(coord)), abs(dFdy(coord)));
    return log2(max(d.x, d.y));
}

vec4 shadowTexture(vec2 uv, float w) {
    return vec4(1.0);
}

vec4 shadowTextureCube(vec2 uv, float w) {
    return vec4(1.0);
}

void main() {
vec4 rounded_primary_color = byteround(primary_color);
vec4 primary_fragment_color = vec4(0.0);
vec4 secondary_fragment_color = vec4(0.0);
if (!(gl_FragCoord.x >= float(scissor_x1) && gl_FragCoord.y >= float(scissor_y1) && gl_FragCoord.x < float(scissor_x2) && gl_FragCoord.y < float(scissor_y2))) discard;
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));
vec4 texcolor1 = textureLod(tex1, texcoord1, getLod(texcoord1 * vec2(textureSize(tex1, 0))));
vec4 texcolor2 = textureLod(tex2, texcoord2, getLod(texcoord2 * vec2(textureSize(tex2, 0))));
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((rounded_primary_color.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp(min((texcolor2.a) + (texcolor0.a), 1.0) * (texcolor1.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;

vec3 color_output_3 = byteround(clamp((texcolor0.aaa) + (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_3 = byteround(clamp((last_tex_env_out.a) * (const_color[3].a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_3, alpha_output_3), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;

vec3 color_output_4 = byteround(clamp((texcolor0.aaa) * (const_color[4].rgb) + (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_4 = byteround(clamp((last_tex_env_out.a) * (texcolor1.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_4, alpha_output_4), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_5 = byteround(clamp((last_tex_env_out.rgb) + (const_color[5].aaa), vec3(0.0), vec3(1.0)));
float alpha_output_5 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_5, alpha_output_5), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: 4A41263353422252, 80840241D3DF1FC3
// program: 4940142D60DA9543, 5D764F9A6220D694, 80840241D3DF1FC3
// shader: 8B30, C6E80D60AF8C04C5

precision highp int;
precision highp float;
precision highp samplerBuffer;
precision highp usampler2D;
precision highp uimage2D;
in vec4 primary_color;
in vec2 texcoord0;
in vec2 texcoord1;
in vec2 texcoord2;
in float texcoord0_w;
in vec4 normquat;
in vec3 view;

#ifndef CITRA_GLES
in vec4 gl_FragCoord;
#endif // CITRA_GLES
out vec4 color;

uniform sampler2D tex0;
uniform sampler2D tex1;
uniform sampler2D tex2;
uniform samplerCube tex_cube;
uniform samplerBuffer texture_buffer_lut_lf;
uniform samplerBuffer texture_buffer_lut_rg;
uniform samplerBuffer texture_buffer_lut_rgba;

#define NUM_TEV_STAGES 6
#define NUM_LIGHTS 8
#define NUM_LIGHTING_SAMPLERS 24

struct LightSrc {
    vec3 specular_0;
    vec3 specular_1;
    vec3 diffuse;
    vec3 ambient;
    vec3 position;
    vec3 spot_direction;
    float dist_atten_bias;
    float dist_atten_scale;
};

layout (std140) uniform shader_data {
    int alphatest_ref;
    float depth_scale;
    float depth_offset;
    float shadow_bias_constant;
    float shadow_bias_linear;
    int scissor_x1;
    int scissor_y1;
    int scissor_x2;
    int scissor_y2;
    int fog_lut_offset;
    int proctex_noise_lut_offset;
    int proctex_color_map_offset;
    int proctex_alpha_map_offset;
    int proctex_lut_offset;
    int proctex_diff_lut_offset;
    float proctex_bias;
    vec3 fog_color;
    vec2 proctex_noise_f;
    vec2 proctex_noise_a;
    vec2 proctex_noise_p;
    vec4 const_color[NUM_TEV_STAGES];
    vec4 tev_combiner_buffer_color;
    vec4 clip_coef;
};

layout (std140) uniform shader_light_data {
    ivec4 lighting_lut_offset[NUM_LIGHTING_SAMPLERS / 4];
    vec3 lighting_global_ambient;
    LightSrc light_src[NUM_LIGHTS];
    float lut_scale_d0;
    float lut_scale_d1;
    float lut_scale_sp;
    float lut_scale_fr;
    float lut_scale_rb;
    float lut_scale_rg;
    float lut_scale_rr;
    int shadow_texture_bias;
};

// Rotate the vector v by the quaternion q
vec3 quaternion_rotate(vec4 q, vec3 v) {
    return v + 2.0 * cross(q.xyz, cross(q.xyz, v) + q.w * v);
}

float LookupLightingLUT(int lut_index, int index, float delta) {
    vec2 entry = texelFetch(texture_buffer_lut_lf, lighting_lut_offset[lut_index >> 2][lut_index & 3] + index).rg;
    return entry.r + entry.g * delta;
}

float LookupLightingLUTUnsigned(int lut_index, float pos) {
    int index = clamp(int(pos * 256.0), 0, 255);
    float delta = pos * 256.0 - float(index);
    return LookupLightingLUT(lut_index, index, delta);
}

float LookupLightingLUTSigned(int lut_index, float pos) {
    int index = clamp(int(pos * 128.0), -128, 127);
    float delta = pos * 128.0 - float(index);
    if (index < 0) index += 256;
    return LookupLightingLUT(lut_index, index, delta);
}

float byteround(float x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec2 byteround(vec2 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec3 byteround(vec3 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec4 byteround(vec4 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

// PICA's LOD formula for 2D textures.
// This LOD formula is the same as the LOD lower limit defined in OpenGL.
// f(x, y) >= max{m_u, m_v, m_w}
// (See OpenGL 4.6 spec, 8.14.1 - Scale Factor and Level-of-Detail)
float getLod(vec2 coord) {
    vec2 d = max(abs(dFdx(coord)), abs(dFdy(coord)));
    return log2(max(d.x, d.y));
}

vec4 shadowTexture(vec2 uv, float w) {
    return vec4(1.0);
}

vec4 shadowTextureCube(vec2 uv, float w) {
    return vec4(1.0);
}

void main() {
vec4 rounded_primary_color = byteround(primary_color);
vec4 primary_fragment_color = vec4(0.0);
vec4 secondary_fragment_color = vec4(0.0);
if (!(gl_FragCoord.x >= float(scissor_x1) && gl_FragCoord.y >= float(scissor_y1) && gl_FragCoord.x < float(scissor_x2) && gl_FragCoord.y < float(scissor_y2))) discard;
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));
vec4 texcolor1 = textureLod(tex1, texcoord1, getLod(texcoord1 * vec2(textureSize(tex1, 0))));
vec4 texcolor2 = textureLod(tex2, texcoord2, getLod(texcoord2 * vec2(textureSize(tex2, 0))));
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((rounded_primary_color.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp(min((texcolor2.a) + (texcolor0.a), 1.0) * (texcolor1.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;

vec3 color_output_3 = byteround(clamp((vec3(1.0) - texcolor0.rgb) * (const_color[3].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_3 = byteround(clamp((texcolor0.a) * (const_color[3].a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_3, alpha_output_3), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;

vec3 color_output_4 = byteround(clamp((texcolor0.rgb) * (const_color[4].rgb) + (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_4 = byteround(clamp((1.0 - texcolor0.a) * (const_color[4].a) + (last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_4, alpha_output_4), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_5 = byteround(clamp((rounded_primary_color.rgb) * (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_5 = byteround(clamp((rounded_primary_color.a) * (last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_5, alpha_output_5), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: B83EFB6B9F53B31A, C6E80D60AF8C04C5
// program: 4940142D60DA9543, 5D764F9A6220D694, C6E80D60AF8C04C5
// shader: 8B30, 8FB2FAB1A7C86087

precision highp int;
precision highp float;
precision highp samplerBuffer;
precision highp usampler2D;
precision highp uimage2D;
in vec4 primary_color;
in vec2 texcoord0;
in vec2 texcoord1;
in vec2 texcoord2;
in float texcoord0_w;
in vec4 normquat;
in vec3 view;

#ifndef CITRA_GLES
in vec4 gl_FragCoord;
#endif // CITRA_GLES
out vec4 color;

uniform sampler2D tex0;
uniform sampler2D tex1;
uniform sampler2D tex2;
uniform samplerCube tex_cube;
uniform samplerBuffer texture_buffer_lut_lf;
uniform samplerBuffer texture_buffer_lut_rg;
uniform samplerBuffer texture_buffer_lut_rgba;

#define NUM_TEV_STAGES 6
#define NUM_LIGHTS 8
#define NUM_LIGHTING_SAMPLERS 24

struct LightSrc {
    vec3 specular_0;
    vec3 specular_1;
    vec3 diffuse;
    vec3 ambient;
    vec3 position;
    vec3 spot_direction;
    float dist_atten_bias;
    float dist_atten_scale;
};

layout (std140) uniform shader_data {
    int alphatest_ref;
    float depth_scale;
    float depth_offset;
    float shadow_bias_constant;
    float shadow_bias_linear;
    int scissor_x1;
    int scissor_y1;
    int scissor_x2;
    int scissor_y2;
    int fog_lut_offset;
    int proctex_noise_lut_offset;
    int proctex_color_map_offset;
    int proctex_alpha_map_offset;
    int proctex_lut_offset;
    int proctex_diff_lut_offset;
    float proctex_bias;
    vec3 fog_color;
    vec2 proctex_noise_f;
    vec2 proctex_noise_a;
    vec2 proctex_noise_p;
    vec4 const_color[NUM_TEV_STAGES];
    vec4 tev_combiner_buffer_color;
    vec4 clip_coef;
};

layout (std140) uniform shader_light_data {
    ivec4 lighting_lut_offset[NUM_LIGHTING_SAMPLERS / 4];
    vec3 lighting_global_ambient;
    LightSrc light_src[NUM_LIGHTS];
    float lut_scale_d0;
    float lut_scale_d1;
    float lut_scale_sp;
    float lut_scale_fr;
    float lut_scale_rb;
    float lut_scale_rg;
    float lut_scale_rr;
    int shadow_texture_bias;
};

// Rotate the vector v by the quaternion q
vec3 quaternion_rotate(vec4 q, vec3 v) {
    return v + 2.0 * cross(q.xyz, cross(q.xyz, v) + q.w * v);
}

float LookupLightingLUT(int lut_index, int index, float delta) {
    vec2 entry = texelFetch(texture_buffer_lut_lf, lighting_lut_offset[lut_index >> 2][lut_index & 3] + index).rg;
    return entry.r + entry.g * delta;
}

float LookupLightingLUTUnsigned(int lut_index, float pos) {
    int index = clamp(int(pos * 256.0), 0, 255);
    float delta = pos * 256.0 - float(index);
    return LookupLightingLUT(lut_index, index, delta);
}

float LookupLightingLUTSigned(int lut_index, float pos) {
    int index = clamp(int(pos * 128.0), -128, 127);
    float delta = pos * 128.0 - float(index);
    if (index < 0) index += 256;
    return LookupLightingLUT(lut_index, index, delta);
}

float byteround(float x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec2 byteround(vec2 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec3 byteround(vec3 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec4 byteround(vec4 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

// PICA's LOD formula for 2D textures.
// This LOD formula is the same as the LOD lower limit defined in OpenGL.
// f(x, y) >= max{m_u, m_v, m_w}
// (See OpenGL 4.6 spec, 8.14.1 - Scale Factor and Level-of-Detail)
float getLod(vec2 coord) {
    vec2 d = max(abs(dFdx(coord)), abs(dFdy(coord)));
    return log2(max(d.x, d.y));
}

vec4 shadowTexture(vec2 uv, float w) {
    return vec4(1.0);
}

vec4 shadowTextureCube(vec2 uv, float w) {
    return vec4(1.0);
}

void main() {
vec4 rounded_primary_color = byteround(primary_color);
vec4 primary_fragment_color = vec4(0.0);
vec4 secondary_fragment_color = vec4(0.0);
if (!(gl_FragCoord.x >= float(scissor_x1) && gl_FragCoord.y >= float(scissor_y1) && gl_FragCoord.x < float(scissor_x2) && gl_FragCoord.y < float(scissor_y2))) discard;
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));
vec4 texcolor1 = textureLod(tex1, texcoord1, getLod(texcoord1 * vec2(textureSize(tex1, 0))));
vec4 texcolor2 = textureLod(tex2, texcoord2, getLod(texcoord2 * vec2(textureSize(tex2, 0))));
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((rounded_primary_color.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp(min((texcolor2.a) + (texcolor0.a), 1.0) * (texcolor1.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;

vec3 color_output_3 = byteround(clamp((const_color[3].rgb) * (vec3(1.0) - texcolor0.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_3 = byteround(clamp((const_color[3].a) * (1.0 - texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_3, alpha_output_3), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;

vec3 color_output_4 = byteround(clamp((const_color[4].rgb) * (texcolor0.rgb) + (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_4 = byteround(clamp((const_color[4].a) * (texcolor0.a) + (last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_4, alpha_output_4), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_5 = byteround(clamp((rounded_primary_color.rgb) * (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_5 = byteround(clamp((rounded_primary_color.a) * (last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_5, alpha_output_5), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: 77A61F941EACA5A0, 8FB2FAB1A7C86087
// program: 4940142D60DA9543, 5D764F9A6220D694, 8FB2FAB1A7C86087
// shader: 8B30, 786D7FBA3381D916

precision highp int;
precision highp float;
precision highp samplerBuffer;
precision highp usampler2D;
precision highp uimage2D;
in vec4 primary_color;
in vec2 texcoord0;
in vec2 texcoord1;
in vec2 texcoord2;
in float texcoord0_w;
in vec4 normquat;
in vec3 view;

#ifndef CITRA_GLES
in vec4 gl_FragCoord;
#endif // CITRA_GLES
out vec4 color;

uniform sampler2D tex0;
uniform sampler2D tex1;
uniform sampler2D tex2;
uniform samplerCube tex_cube;
uniform samplerBuffer texture_buffer_lut_lf;
uniform samplerBuffer texture_buffer_lut_rg;
uniform samplerBuffer texture_buffer_lut_rgba;

#define NUM_TEV_STAGES 6
#define NUM_LIGHTS 8
#define NUM_LIGHTING_SAMPLERS 24

struct LightSrc {
    vec3 specular_0;
    vec3 specular_1;
    vec3 diffuse;
    vec3 ambient;
    vec3 position;
    vec3 spot_direction;
    float dist_atten_bias;
    float dist_atten_scale;
};

layout (std140) uniform shader_data {
    int alphatest_ref;
    float depth_scale;
    float depth_offset;
    float shadow_bias_constant;
    float shadow_bias_linear;
    int scissor_x1;
    int scissor_y1;
    int scissor_x2;
    int scissor_y2;
    int fog_lut_offset;
    int proctex_noise_lut_offset;
    int proctex_color_map_offset;
    int proctex_alpha_map_offset;
    int proctex_lut_offset;
    int proctex_diff_lut_offset;
    float proctex_bias;
    vec3 fog_color;
    vec2 proctex_noise_f;
    vec2 proctex_noise_a;
    vec2 proctex_noise_p;
    vec4 const_color[NUM_TEV_STAGES];
    vec4 tev_combiner_buffer_color;
    vec4 clip_coef;
};

layout (std140) uniform shader_light_data {
    ivec4 lighting_lut_offset[NUM_LIGHTING_SAMPLERS / 4];
    vec3 lighting_global_ambient;
    LightSrc light_src[NUM_LIGHTS];
    float lut_scale_d0;
    float lut_scale_d1;
    float lut_scale_sp;
    float lut_scale_fr;
    float lut_scale_rb;
    float lut_scale_rg;
    float lut_scale_rr;
    int shadow_texture_bias;
};

// Rotate the vector v by the quaternion q
vec3 quaternion_rotate(vec4 q, vec3 v) {
    return v + 2.0 * cross(q.xyz, cross(q.xyz, v) + q.w * v);
}

float LookupLightingLUT(int lut_index, int index, float delta) {
    vec2 entry = texelFetch(texture_buffer_lut_lf, lighting_lut_offset[lut_index >> 2][lut_index & 3] + index).rg;
    return entry.r + entry.g * delta;
}

float LookupLightingLUTUnsigned(int lut_index, float pos) {
    int index = clamp(int(pos * 256.0), 0, 255);
    float delta = pos * 256.0 - float(index);
    return LookupLightingLUT(lut_index, index, delta);
}

float LookupLightingLUTSigned(int lut_index, float pos) {
    int index = clamp(int(pos * 128.0), -128, 127);
    float delta = pos * 128.0 - float(index);
    if (index < 0) index += 256;
    return LookupLightingLUT(lut_index, index, delta);
}

float byteround(float x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec2 byteround(vec2 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec3 byteround(vec3 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec4 byteround(vec4 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

// PICA's LOD formula for 2D textures.
// This LOD formula is the same as the LOD lower limit defined in OpenGL.
// f(x, y) >= max{m_u, m_v, m_w}
// (See OpenGL 4.6 spec, 8.14.1 - Scale Factor and Level-of-Detail)
float getLod(vec2 coord) {
    vec2 d = max(abs(dFdx(coord)), abs(dFdy(coord)));
    return log2(max(d.x, d.y));
}

vec4 shadowTexture(vec2 uv, float w) {
    return vec4(1.0);
}

vec4 shadowTextureCube(vec2 uv, float w) {
    return vec4(1.0);
}

void main() {
vec4 rounded_primary_color = byteround(primary_color);
vec4 primary_fragment_color = vec4(0.0);
vec4 secondary_fragment_color = vec4(0.0);
if (!(gl_FragCoord.x >= float(scissor_x1) && gl_FragCoord.y >= float(scissor_y1) && gl_FragCoord.x < float(scissor_x2) && gl_FragCoord.y < float(scissor_y2))) discard;
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));
vec4 texcolor1 = textureLod(tex1, texcoord1, getLod(texcoord1 * vec2(textureSize(tex1, 0))));
vec4 texcolor2 = textureLod(tex2, texcoord2, getLod(texcoord2 * vec2(textureSize(tex2, 0))));
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((rounded_primary_color.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp(min((texcolor2.a) + (texcolor0.a), 1.0) * (texcolor1.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.a = last_tex_env_out.a;

vec3 color_output_1 = byteround(clamp((const_color[1].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_1 = byteround(clamp((texcolor2.a) + (texcolor1.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_1, alpha_output_1), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;

vec3 color_output_2 = byteround(clamp((const_color[2].rgb) * (texcolor0.rgb) + (last_tex_env_out.rgb) * (vec3(1.0) - (texcolor0.rgb)), vec3(0.0), vec3(1.0)));
float alpha_output_2 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_2, alpha_output_2), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;

vec3 color_output_3 = byteround(clamp((last_tex_env_out.rgb) * (texcolor2.aaa), vec3(0.0), vec3(1.0)));
float alpha_output_3 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_3, alpha_output_3), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;

vec3 color_output_4 = byteround(clamp((rounded_primary_color.rgb) * (const_color[4].aaa) + (const_color[4].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_4 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_4, alpha_output_4), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_5 = byteround(clamp((last_tex_env_out.rgb) * (texcolor1.rgb) + (combiner_buffer.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_5 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_5, alpha_output_5), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: A18BA9E1DF1257DC, 786D7FBA3381D916
// program: 4940142D60DA9543, 5D764F9A6220D694, 786D7FBA3381D916
// shader: 8B30, 5E241297D0595DFC

precision highp int;
precision highp float;
precision highp samplerBuffer;
precision highp usampler2D;
precision highp uimage2D;
in vec4 primary_color;
in vec2 texcoord0;
in vec2 texcoord1;
in vec2 texcoord2;
in float texcoord0_w;
in vec4 normquat;
in vec3 view;

#ifndef CITRA_GLES
in vec4 gl_FragCoord;
#endif // CITRA_GLES
out vec4 color;

uniform sampler2D tex0;
uniform sampler2D tex1;
uniform sampler2D tex2;
uniform samplerCube tex_cube;
uniform samplerBuffer texture_buffer_lut_lf;
uniform samplerBuffer texture_buffer_lut_rg;
uniform samplerBuffer texture_buffer_lut_rgba;

#define NUM_TEV_STAGES 6
#define NUM_LIGHTS 8
#define NUM_LIGHTING_SAMPLERS 24

struct LightSrc {
    vec3 specular_0;
    vec3 specular_1;
    vec3 diffuse;
    vec3 ambient;
    vec3 position;
    vec3 spot_direction;
    float dist_atten_bias;
    float dist_atten_scale;
};

layout (std140) uniform shader_data {
    int alphatest_ref;
    float depth_scale;
    float depth_offset;
    float shadow_bias_constant;
    float shadow_bias_linear;
    int scissor_x1;
    int scissor_y1;
    int scissor_x2;
    int scissor_y2;
    int fog_lut_offset;
    int proctex_noise_lut_offset;
    int proctex_color_map_offset;
    int proctex_alpha_map_offset;
    int proctex_lut_offset;
    int proctex_diff_lut_offset;
    float proctex_bias;
    vec3 fog_color;
    vec2 proctex_noise_f;
    vec2 proctex_noise_a;
    vec2 proctex_noise_p;
    vec4 const_color[NUM_TEV_STAGES];
    vec4 tev_combiner_buffer_color;
    vec4 clip_coef;
};

layout (std140) uniform shader_light_data {
    ivec4 lighting_lut_offset[NUM_LIGHTING_SAMPLERS / 4];
    vec3 lighting_global_ambient;
    LightSrc light_src[NUM_LIGHTS];
    float lut_scale_d0;
    float lut_scale_d1;
    float lut_scale_sp;
    float lut_scale_fr;
    float lut_scale_rb;
    float lut_scale_rg;
    float lut_scale_rr;
    int shadow_texture_bias;
};

// Rotate the vector v by the quaternion q
vec3 quaternion_rotate(vec4 q, vec3 v) {
    return v + 2.0 * cross(q.xyz, cross(q.xyz, v) + q.w * v);
}

float LookupLightingLUT(int lut_index, int index, float delta) {
    vec2 entry = texelFetch(texture_buffer_lut_lf, lighting_lut_offset[lut_index >> 2][lut_index & 3] + index).rg;
    return entry.r + entry.g * delta;
}

float LookupLightingLUTUnsigned(int lut_index, float pos) {
    int index = clamp(int(pos * 256.0), 0, 255);
    float delta = pos * 256.0 - float(index);
    return LookupLightingLUT(lut_index, index, delta);
}

float LookupLightingLUTSigned(int lut_index, float pos) {
    int index = clamp(int(pos * 128.0), -128, 127);
    float delta = pos * 128.0 - float(index);
    if (index < 0) index += 256;
    return LookupLightingLUT(lut_index, index, delta);
}

float byteround(float x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec2 byteround(vec2 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec3 byteround(vec3 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec4 byteround(vec4 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

// PICA's LOD formula for 2D textures.
// This LOD formula is the same as the LOD lower limit defined in OpenGL.
// f(x, y) >= max{m_u, m_v, m_w}
// (See OpenGL 4.6 spec, 8.14.1 - Scale Factor and Level-of-Detail)
float getLod(vec2 coord) {
    vec2 d = max(abs(dFdx(coord)), abs(dFdy(coord)));
    return log2(max(d.x, d.y));
}

vec4 shadowTexture(vec2 uv, float w) {
    return vec4(1.0);
}

vec4 shadowTextureCube(vec2 uv, float w) {
    return vec4(1.0);
}

void main() {
vec4 rounded_primary_color = byteround(primary_color);
vec4 primary_fragment_color = vec4(0.0);
vec4 secondary_fragment_color = vec4(0.0);
if (!(gl_FragCoord.x >= float(scissor_x1) && gl_FragCoord.y >= float(scissor_y1) && gl_FragCoord.x < float(scissor_x2) && gl_FragCoord.y < float(scissor_y2))) discard;
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));
vec4 texcolor1 = textureLod(tex1, texcoord1, getLod(texcoord1 * vec2(textureSize(tex1, 0))));
vec4 texcolor2 = textureLod(tex2, texcoord2, getLod(texcoord2 * vec2(textureSize(tex2, 0))));
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((rounded_primary_color.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp(min((texcolor2.a) + (texcolor0.a), 1.0) * (texcolor1.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.a = last_tex_env_out.a;

vec3 color_output_1 = byteround(clamp((const_color[1].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_1 = byteround(clamp((texcolor2.a) + (texcolor1.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_1, alpha_output_1), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;

vec3 color_output_2 = byteround(clamp((const_color[2].rgb) * (texcolor0.rgb) + (last_tex_env_out.rgb) * (vec3(1.0) - (texcolor0.rgb)), vec3(0.0), vec3(1.0)));
float alpha_output_2 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_2, alpha_output_2), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;

vec3 color_output_3 = byteround(clamp((vec3(1.0) - texcolor0.rgb) * (const_color[3].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_3 = byteround(clamp((texcolor0.a) * (const_color[3].a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_3, alpha_output_3), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;

vec3 color_output_4 = byteround(clamp((texcolor0.rgb) * (const_color[4].rgb) + (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_4 = byteround(clamp((1.0 - texcolor0.a) * (const_color[4].a) + (last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_4, alpha_output_4), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_5 = byteround(clamp((rounded_primary_color.rgb) * (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_5 = byteround(clamp((rounded_primary_color.a) * (last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_5, alpha_output_5), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: 2F2F5D9788E0B0BD, 5E241297D0595DFC
// program: 4940142D60DA9543, 5D764F9A6220D694, 5E241297D0595DFC
// shader: 8B30, 566076D59903AA2D

precision highp int;
precision highp float;
precision highp samplerBuffer;
precision highp usampler2D;
precision highp uimage2D;
in vec4 primary_color;
in vec2 texcoord0;
in vec2 texcoord1;
in vec2 texcoord2;
in float texcoord0_w;
in vec4 normquat;
in vec3 view;

#ifndef CITRA_GLES
in vec4 gl_FragCoord;
#endif // CITRA_GLES
out vec4 color;

uniform sampler2D tex0;
uniform sampler2D tex1;
uniform sampler2D tex2;
uniform samplerCube tex_cube;
uniform samplerBuffer texture_buffer_lut_lf;
uniform samplerBuffer texture_buffer_lut_rg;
uniform samplerBuffer texture_buffer_lut_rgba;

#define NUM_TEV_STAGES 6
#define NUM_LIGHTS 8
#define NUM_LIGHTING_SAMPLERS 24

struct LightSrc {
    vec3 specular_0;
    vec3 specular_1;
    vec3 diffuse;
    vec3 ambient;
    vec3 position;
    vec3 spot_direction;
    float dist_atten_bias;
    float dist_atten_scale;
};

layout (std140) uniform shader_data {
    int alphatest_ref;
    float depth_scale;
    float depth_offset;
    float shadow_bias_constant;
    float shadow_bias_linear;
    int scissor_x1;
    int scissor_y1;
    int scissor_x2;
    int scissor_y2;
    int fog_lut_offset;
    int proctex_noise_lut_offset;
    int proctex_color_map_offset;
    int proctex_alpha_map_offset;
    int proctex_lut_offset;
    int proctex_diff_lut_offset;
    float proctex_bias;
    vec3 fog_color;
    vec2 proctex_noise_f;
    vec2 proctex_noise_a;
    vec2 proctex_noise_p;
    vec4 const_color[NUM_TEV_STAGES];
    vec4 tev_combiner_buffer_color;
    vec4 clip_coef;
};

layout (std140) uniform shader_light_data {
    ivec4 lighting_lut_offset[NUM_LIGHTING_SAMPLERS / 4];
    vec3 lighting_global_ambient;
    LightSrc light_src[NUM_LIGHTS];
    float lut_scale_d0;
    float lut_scale_d1;
    float lut_scale_sp;
    float lut_scale_fr;
    float lut_scale_rb;
    float lut_scale_rg;
    float lut_scale_rr;
    int shadow_texture_bias;
};

// Rotate the vector v by the quaternion q
vec3 quaternion_rotate(vec4 q, vec3 v) {
    return v + 2.0 * cross(q.xyz, cross(q.xyz, v) + q.w * v);
}

float LookupLightingLUT(int lut_index, int index, float delta) {
    vec2 entry = texelFetch(texture_buffer_lut_lf, lighting_lut_offset[lut_index >> 2][lut_index & 3] + index).rg;
    return entry.r + entry.g * delta;
}

float LookupLightingLUTUnsigned(int lut_index, float pos) {
    int index = clamp(int(pos * 256.0), 0, 255);
    float delta = pos * 256.0 - float(index);
    return LookupLightingLUT(lut_index, index, delta);
}

float LookupLightingLUTSigned(int lut_index, float pos) {
    int index = clamp(int(pos * 128.0), -128, 127);
    float delta = pos * 128.0 - float(index);
    if (index < 0) index += 256;
    return LookupLightingLUT(lut_index, index, delta);
}

float byteround(float x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec2 byteround(vec2 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec3 byteround(vec3 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec4 byteround(vec4 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

// PICA's LOD formula for 2D textures.
// This LOD formula is the same as the LOD lower limit defined in OpenGL.
// f(x, y) >= max{m_u, m_v, m_w}
// (See OpenGL 4.6 spec, 8.14.1 - Scale Factor and Level-of-Detail)
float getLod(vec2 coord) {
    vec2 d = max(abs(dFdx(coord)), abs(dFdy(coord)));
    return log2(max(d.x, d.y));
}

vec4 shadowTexture(vec2 uv, float w) {
    return vec4(1.0);
}

vec4 shadowTextureCube(vec2 uv, float w) {
    return vec4(1.0);
}

void main() {
vec4 rounded_primary_color = byteround(primary_color);
vec4 primary_fragment_color = vec4(0.0);
vec4 secondary_fragment_color = vec4(0.0);
if (!(gl_FragCoord.x >= float(scissor_x1) && gl_FragCoord.y >= float(scissor_y1) && gl_FragCoord.x < float(scissor_x2) && gl_FragCoord.y < float(scissor_y2))) discard;
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));
vec4 texcolor1 = textureLod(tex1, texcoord1, getLod(texcoord1 * vec2(textureSize(tex1, 0))));
vec4 texcolor2 = textureLod(tex2, texcoord2, getLod(texcoord2 * vec2(textureSize(tex2, 0))));
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((rounded_primary_color.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp(min((texcolor2.a) + (texcolor0.a), 1.0) * (texcolor1.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.a = last_tex_env_out.a;

vec3 color_output_1 = byteround(clamp((const_color[1].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_1 = byteround(clamp((texcolor2.a) + (texcolor1.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_1, alpha_output_1), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;

vec3 color_output_2 = byteround(clamp((const_color[2].rgb) * (texcolor0.rgb) + (last_tex_env_out.rgb) * (vec3(1.0) - (texcolor0.rgb)), vec3(0.0), vec3(1.0)));
float alpha_output_2 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_2, alpha_output_2), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;

vec3 color_output_3 = byteround(clamp((const_color[3].rgb) * (vec3(1.0) - texcolor0.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_3 = byteround(clamp((const_color[3].a) * (1.0 - texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_3, alpha_output_3), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;

vec3 color_output_4 = byteround(clamp((const_color[4].rgb) * (texcolor0.rgb) + (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_4 = byteround(clamp((const_color[4].a) * (texcolor0.a) + (last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_4, alpha_output_4), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_5 = byteround(clamp((rounded_primary_color.rgb) * (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_5 = byteround(clamp((rounded_primary_color.a) * (last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_5, alpha_output_5), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: E0B7B968091FA607, 566076D59903AA2D
// program: 4940142D60DA9543, 5D764F9A6220D694, 566076D59903AA2D
// shader: 8B30, 34F30E1A3AF1949D

precision highp int;
precision highp float;
precision highp samplerBuffer;
precision highp usampler2D;
precision highp uimage2D;
in vec4 primary_color;
in vec2 texcoord0;
in vec2 texcoord1;
in vec2 texcoord2;
in float texcoord0_w;
in vec4 normquat;
in vec3 view;

#ifndef CITRA_GLES
in vec4 gl_FragCoord;
#endif // CITRA_GLES
out vec4 color;

uniform sampler2D tex0;
uniform sampler2D tex1;
uniform sampler2D tex2;
uniform samplerCube tex_cube;
uniform samplerBuffer texture_buffer_lut_lf;
uniform samplerBuffer texture_buffer_lut_rg;
uniform samplerBuffer texture_buffer_lut_rgba;

#define NUM_TEV_STAGES 6
#define NUM_LIGHTS 8
#define NUM_LIGHTING_SAMPLERS 24

struct LightSrc {
    vec3 specular_0;
    vec3 specular_1;
    vec3 diffuse;
    vec3 ambient;
    vec3 position;
    vec3 spot_direction;
    float dist_atten_bias;
    float dist_atten_scale;
};

layout (std140) uniform shader_data {
    int alphatest_ref;
    float depth_scale;
    float depth_offset;
    float shadow_bias_constant;
    float shadow_bias_linear;
    int scissor_x1;
    int scissor_y1;
    int scissor_x2;
    int scissor_y2;
    int fog_lut_offset;
    int proctex_noise_lut_offset;
    int proctex_color_map_offset;
    int proctex_alpha_map_offset;
    int proctex_lut_offset;
    int proctex_diff_lut_offset;
    float proctex_bias;
    vec3 fog_color;
    vec2 proctex_noise_f;
    vec2 proctex_noise_a;
    vec2 proctex_noise_p;
    vec4 const_color[NUM_TEV_STAGES];
    vec4 tev_combiner_buffer_color;
    vec4 clip_coef;
};

layout (std140) uniform shader_light_data {
    ivec4 lighting_lut_offset[NUM_LIGHTING_SAMPLERS / 4];
    vec3 lighting_global_ambient;
    LightSrc light_src[NUM_LIGHTS];
    float lut_scale_d0;
    float lut_scale_d1;
    float lut_scale_sp;
    float lut_scale_fr;
    float lut_scale_rb;
    float lut_scale_rg;
    float lut_scale_rr;
    int shadow_texture_bias;
};

// Rotate the vector v by the quaternion q
vec3 quaternion_rotate(vec4 q, vec3 v) {
    return v + 2.0 * cross(q.xyz, cross(q.xyz, v) + q.w * v);
}

float LookupLightingLUT(int lut_index, int index, float delta) {
    vec2 entry = texelFetch(texture_buffer_lut_lf, lighting_lut_offset[lut_index >> 2][lut_index & 3] + index).rg;
    return entry.r + entry.g * delta;
}

float LookupLightingLUTUnsigned(int lut_index, float pos) {
    int index = clamp(int(pos * 256.0), 0, 255);
    float delta = pos * 256.0 - float(index);
    return LookupLightingLUT(lut_index, index, delta);
}

float LookupLightingLUTSigned(int lut_index, float pos) {
    int index = clamp(int(pos * 128.0), -128, 127);
    float delta = pos * 128.0 - float(index);
    if (index < 0) index += 256;
    return LookupLightingLUT(lut_index, index, delta);
}

float byteround(float x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec2 byteround(vec2 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec3 byteround(vec3 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec4 byteround(vec4 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

// PICA's LOD formula for 2D textures.
// This LOD formula is the same as the LOD lower limit defined in OpenGL.
// f(x, y) >= max{m_u, m_v, m_w}
// (See OpenGL 4.6 spec, 8.14.1 - Scale Factor and Level-of-Detail)
float getLod(vec2 coord) {
    vec2 d = max(abs(dFdx(coord)), abs(dFdy(coord)));
    return log2(max(d.x, d.y));
}

vec4 shadowTexture(vec2 uv, float w) {
    return vec4(1.0);
}

vec4 shadowTextureCube(vec2 uv, float w) {
    return vec4(1.0);
}

void main() {
vec4 rounded_primary_color = byteround(primary_color);
vec4 primary_fragment_color = vec4(0.0);
vec4 secondary_fragment_color = vec4(0.0);
if (!(gl_FragCoord.x >= float(scissor_x1) && gl_FragCoord.y >= float(scissor_y1) && gl_FragCoord.x < float(scissor_x2) && gl_FragCoord.y < float(scissor_y2))) discard;
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));
vec4 texcolor1 = textureLod(tex1, texcoord1, getLod(texcoord1 * vec2(textureSize(tex1, 0))));
vec4 texcolor2 = textureLod(tex2, texcoord2, getLod(texcoord2 * vec2(textureSize(tex2, 0))));
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((rounded_primary_color.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp(min((texcolor2.a) + (texcolor0.a), 1.0) * (texcolor1.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.a = last_tex_env_out.a;

vec3 color_output_1 = byteround(clamp((const_color[1].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_1 = byteround(clamp((texcolor2.a) + (texcolor1.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_1, alpha_output_1), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_2 = byteround(clamp((texcolor0.rgb) + (rounded_primary_color.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_2 = byteround(clamp((texcolor0.a) * (rounded_primary_color.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_2, alpha_output_2), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;

vec3 color_output_3 = byteround(clamp((const_color[3].aaa) * (last_tex_env_out.rgb) + (const_color[3].rgb) * (vec3(1.0) - (last_tex_env_out.rgb)), vec3(0.0), vec3(1.0)));
float alpha_output_3 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_3, alpha_output_3), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;

vec3 color_output_4 = byteround(clamp((const_color[4].aaa) * (rounded_primary_color.rgb) + (const_color[4].rgb) * (vec3(1.0) - (rounded_primary_color.rgb)), vec3(0.0), vec3(1.0)));
float alpha_output_4 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_4, alpha_output_4), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_5 = byteround(clamp((last_tex_env_out.rgb) * (combiner_buffer.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_5 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_5, alpha_output_5), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: A5285391D5973570, 34F30E1A3AF1949D
// program: 4940142D60DA9543, 5D764F9A6220D694, 34F30E1A3AF1949D
// shader: 8B30, 192055C797D85EC4

precision highp int;
precision highp float;
precision highp samplerBuffer;
precision highp usampler2D;
precision highp uimage2D;
in vec4 primary_color;
in vec2 texcoord0;
in vec2 texcoord1;
in vec2 texcoord2;
in float texcoord0_w;
in vec4 normquat;
in vec3 view;

#ifndef CITRA_GLES
in vec4 gl_FragCoord;
#endif // CITRA_GLES
out vec4 color;

uniform sampler2D tex0;
uniform sampler2D tex1;
uniform sampler2D tex2;
uniform samplerCube tex_cube;
uniform samplerBuffer texture_buffer_lut_lf;
uniform samplerBuffer texture_buffer_lut_rg;
uniform samplerBuffer texture_buffer_lut_rgba;

#define NUM_TEV_STAGES 6
#define NUM_LIGHTS 8
#define NUM_LIGHTING_SAMPLERS 24

struct LightSrc {
    vec3 specular_0;
    vec3 specular_1;
    vec3 diffuse;
    vec3 ambient;
    vec3 position;
    vec3 spot_direction;
    float dist_atten_bias;
    float dist_atten_scale;
};

layout (std140) uniform shader_data {
    int alphatest_ref;
    float depth_scale;
    float depth_offset;
    float shadow_bias_constant;
    float shadow_bias_linear;
    int scissor_x1;
    int scissor_y1;
    int scissor_x2;
    int scissor_y2;
    int fog_lut_offset;
    int proctex_noise_lut_offset;
    int proctex_color_map_offset;
    int proctex_alpha_map_offset;
    int proctex_lut_offset;
    int proctex_diff_lut_offset;
    float proctex_bias;
    vec3 fog_color;
    vec2 proctex_noise_f;
    vec2 proctex_noise_a;
    vec2 proctex_noise_p;
    vec4 const_color[NUM_TEV_STAGES];
    vec4 tev_combiner_buffer_color;
    vec4 clip_coef;
};

layout (std140) uniform shader_light_data {
    ivec4 lighting_lut_offset[NUM_LIGHTING_SAMPLERS / 4];
    vec3 lighting_global_ambient;
    LightSrc light_src[NUM_LIGHTS];
    float lut_scale_d0;
    float lut_scale_d1;
    float lut_scale_sp;
    float lut_scale_fr;
    float lut_scale_rb;
    float lut_scale_rg;
    float lut_scale_rr;
    int shadow_texture_bias;
};

// Rotate the vector v by the quaternion q
vec3 quaternion_rotate(vec4 q, vec3 v) {
    return v + 2.0 * cross(q.xyz, cross(q.xyz, v) + q.w * v);
}

float LookupLightingLUT(int lut_index, int index, float delta) {
    vec2 entry = texelFetch(texture_buffer_lut_lf, lighting_lut_offset[lut_index >> 2][lut_index & 3] + index).rg;
    return entry.r + entry.g * delta;
}

float LookupLightingLUTUnsigned(int lut_index, float pos) {
    int index = clamp(int(pos * 256.0), 0, 255);
    float delta = pos * 256.0 - float(index);
    return LookupLightingLUT(lut_index, index, delta);
}

float LookupLightingLUTSigned(int lut_index, float pos) {
    int index = clamp(int(pos * 128.0), -128, 127);
    float delta = pos * 128.0 - float(index);
    if (index < 0) index += 256;
    return LookupLightingLUT(lut_index, index, delta);
}

float byteround(float x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec2 byteround(vec2 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec3 byteround(vec3 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec4 byteround(vec4 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

// PICA's LOD formula for 2D textures.
// This LOD formula is the same as the LOD lower limit defined in OpenGL.
// f(x, y) >= max{m_u, m_v, m_w}
// (See OpenGL 4.6 spec, 8.14.1 - Scale Factor and Level-of-Detail)
float getLod(vec2 coord) {
    vec2 d = max(abs(dFdx(coord)), abs(dFdy(coord)));
    return log2(max(d.x, d.y));
}

vec4 shadowTexture(vec2 uv, float w) {
    return vec4(1.0);
}

vec4 shadowTextureCube(vec2 uv, float w) {
    return vec4(1.0);
}

void main() {
vec4 rounded_primary_color = byteround(primary_color);
vec4 primary_fragment_color = vec4(0.0);
vec4 secondary_fragment_color = vec4(0.0);
if (!(gl_FragCoord.x >= float(scissor_x1) && gl_FragCoord.y >= float(scissor_y1) && gl_FragCoord.x < float(scissor_x2) && gl_FragCoord.y < float(scissor_y2))) discard;
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));
vec4 texcolor1 = textureLod(tex1, texcoord1, getLod(texcoord1 * vec2(textureSize(tex1, 0))));
vec4 texcolor2 = textureLod(tex2, texcoord2, getLod(texcoord2 * vec2(textureSize(tex2, 0))));
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((rounded_primary_color.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp(min((texcolor2.a) + (texcolor0.a), 1.0) * (texcolor1.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.a = last_tex_env_out.a;

vec3 color_output_1 = byteround(clamp((const_color[1].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_1 = byteround(clamp((texcolor2.a) + (texcolor1.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_1, alpha_output_1), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_2 = byteround(clamp((texcolor0.rgb) + (rounded_primary_color.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_2 = byteround(clamp((texcolor0.a) * (rounded_primary_color.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_2, alpha_output_2), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;

vec3 color_output_3 = byteround(clamp((const_color[3].rgb) * (vec3(1.0) - texcolor0.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_3 = byteround(clamp((const_color[3].a) * (1.0 - texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_3, alpha_output_3), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;

vec3 color_output_4 = byteround(clamp((const_color[4].rgb) * (texcolor0.rgb) + (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_4 = byteround(clamp((const_color[4].a) * (texcolor0.a) + (last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_4, alpha_output_4), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_5 = byteround(clamp((rounded_primary_color.rgb) * (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_5 = byteround(clamp((rounded_primary_color.a) * (last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_5, alpha_output_5), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: 5ABD022E76990F3D, 192055C797D85EC4
// program: 4940142D60DA9543, 5D764F9A6220D694, 192055C797D85EC4
// shader: 8B30, 4BC2BF19C08722EB

precision highp int;
precision highp float;
precision highp samplerBuffer;
precision highp usampler2D;
precision highp uimage2D;
in vec4 primary_color;
in vec2 texcoord0;
in vec2 texcoord1;
in vec2 texcoord2;
in float texcoord0_w;
in vec4 normquat;
in vec3 view;

#ifndef CITRA_GLES
in vec4 gl_FragCoord;
#endif // CITRA_GLES
out vec4 color;

uniform sampler2D tex0;
uniform sampler2D tex1;
uniform sampler2D tex2;
uniform samplerCube tex_cube;
uniform samplerBuffer texture_buffer_lut_lf;
uniform samplerBuffer texture_buffer_lut_rg;
uniform samplerBuffer texture_buffer_lut_rgba;

#define NUM_TEV_STAGES 6
#define NUM_LIGHTS 8
#define NUM_LIGHTING_SAMPLERS 24

struct LightSrc {
    vec3 specular_0;
    vec3 specular_1;
    vec3 diffuse;
    vec3 ambient;
    vec3 position;
    vec3 spot_direction;
    float dist_atten_bias;
    float dist_atten_scale;
};

layout (std140) uniform shader_data {
    int alphatest_ref;
    float depth_scale;
    float depth_offset;
    float shadow_bias_constant;
    float shadow_bias_linear;
    int scissor_x1;
    int scissor_y1;
    int scissor_x2;
    int scissor_y2;
    int fog_lut_offset;
    int proctex_noise_lut_offset;
    int proctex_color_map_offset;
    int proctex_alpha_map_offset;
    int proctex_lut_offset;
    int proctex_diff_lut_offset;
    float proctex_bias;
    vec3 fog_color;
    vec2 proctex_noise_f;
    vec2 proctex_noise_a;
    vec2 proctex_noise_p;
    vec4 const_color[NUM_TEV_STAGES];
    vec4 tev_combiner_buffer_color;
    vec4 clip_coef;
};

layout (std140) uniform shader_light_data {
    ivec4 lighting_lut_offset[NUM_LIGHTING_SAMPLERS / 4];
    vec3 lighting_global_ambient;
    LightSrc light_src[NUM_LIGHTS];
    float lut_scale_d0;
    float lut_scale_d1;
    float lut_scale_sp;
    float lut_scale_fr;
    float lut_scale_rb;
    float lut_scale_rg;
    float lut_scale_rr;
    int shadow_texture_bias;
};

// Rotate the vector v by the quaternion q
vec3 quaternion_rotate(vec4 q, vec3 v) {
    return v + 2.0 * cross(q.xyz, cross(q.xyz, v) + q.w * v);
}

float LookupLightingLUT(int lut_index, int index, float delta) {
    vec2 entry = texelFetch(texture_buffer_lut_lf, lighting_lut_offset[lut_index >> 2][lut_index & 3] + index).rg;
    return entry.r + entry.g * delta;
}

float LookupLightingLUTUnsigned(int lut_index, float pos) {
    int index = clamp(int(pos * 256.0), 0, 255);
    float delta = pos * 256.0 - float(index);
    return LookupLightingLUT(lut_index, index, delta);
}

float LookupLightingLUTSigned(int lut_index, float pos) {
    int index = clamp(int(pos * 128.0), -128, 127);
    float delta = pos * 128.0 - float(index);
    if (index < 0) index += 256;
    return LookupLightingLUT(lut_index, index, delta);
}

float byteround(float x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec2 byteround(vec2 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec3 byteround(vec3 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec4 byteround(vec4 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

// PICA's LOD formula for 2D textures.
// This LOD formula is the same as the LOD lower limit defined in OpenGL.
// f(x, y) >= max{m_u, m_v, m_w}
// (See OpenGL 4.6 spec, 8.14.1 - Scale Factor and Level-of-Detail)
float getLod(vec2 coord) {
    vec2 d = max(abs(dFdx(coord)), abs(dFdy(coord)));
    return log2(max(d.x, d.y));
}

vec4 shadowTexture(vec2 uv, float w) {
    return vec4(1.0);
}

vec4 shadowTextureCube(vec2 uv, float w) {
    return vec4(1.0);
}

void main() {
vec4 rounded_primary_color = byteround(primary_color);
vec4 primary_fragment_color = vec4(0.0);
vec4 secondary_fragment_color = vec4(0.0);
if (!(gl_FragCoord.x >= float(scissor_x1) && gl_FragCoord.y >= float(scissor_y1) && gl_FragCoord.x < float(scissor_x2) && gl_FragCoord.y < float(scissor_y2))) discard;
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));
vec4 texcolor1 = textureLod(tex1, texcoord1, getLod(texcoord1 * vec2(textureSize(tex1, 0))));

vec4 diffuse_sum = vec4(0.0, 0.0, 0.0, 1.0);
vec4 specular_sum = vec4(0.0, 0.0, 0.0, 1.0);
vec3 light_vector = vec3(0.0);
vec3 refl_value = vec3(0.0);
vec3 spot_dir = vec3(0.0);
vec3 half_vector = vec3(0.0);
float dot_product = 0.0;
float clamp_highlights = 1.0;
float geo_factor = 1.0;
vec3 surface_normal = 2.0 * (texcolor1).rgb - 1.0;
surface_normal.z = sqrt(max((1.0 - (surface_normal.x*surface_normal.x + surface_normal.y*surface_normal.y)), 0.0));
vec3 surface_tangent = vec3(1.0, 0.0, 0.0);
vec4 normalized_normquat = normalize(normquat);
vec3 normal = quaternion_rotate(normalized_normquat, surface_normal);
vec3 tangent = quaternion_rotate(normalized_normquat, surface_tangent);
vec4 shadow = vec4(1.0);
light_vector = normalize(light_src[0].position);
spot_dir = light_src[0].spot_direction;
half_vector = normalize(view) + light_vector;
dot_product = max(dot(light_vector, normal), 0.0);
refl_value.r = 1.0;
refl_value.g = refl_value.r;
refl_value.b = refl_value.r;
diffuse_sum.rgb += ((light_src[0].diffuse * dot_product) + light_src[0].ambient) * 1.0;
specular_sum.rgb += (((lut_scale_d0 * LookupLightingLUTUnsigned(0, max(dot(normal, normalize(half_vector)), 0.0))) * light_src[0].specular_0) + (light_src[0].specular_1)) * clamp_highlights * 1.0;
diffuse_sum.rgb += lighting_global_ambient;
primary_fragment_color = clamp(diffuse_sum, vec4(0.0), vec4(1.0));
secondary_fragment_color = clamp(specular_sum, vec4(0.0), vec4(1.0));

vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((const_color[0].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((rounded_primary_color.a) * (texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_1 = byteround(clamp((last_tex_env_out.rgb) * (texcolor0.rgb) + (const_color[1].rgb) * (vec3(1.0) - (texcolor0.rgb)), vec3(0.0), vec3(1.0)));
float alpha_output_1 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_1, alpha_output_1), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;

vec3 color_output_2 = byteround(clamp((secondary_fragment_color.rgb) * (last_tex_env_out.rgb) + (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_2 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_2, alpha_output_2), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;

vec3 color_output_3 = byteround(clamp((vec3(1.0) - primary_fragment_color.rgb) * (const_color[3].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_3 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_3, alpha_output_3), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;

vec3 color_output_4 = byteround(clamp((vec3(1.0) - last_tex_env_out.rgb) * (combiner_buffer.rgb) + (secondary_fragment_color.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_4 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_4, alpha_output_4), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: 07E3BEE908628E40, 4BC2BF19C08722EB
// program: CA388C44D4F5C19E, AD7922A63ED54CA7, 4BC2BF19C08722EB
// shader: 8B30, 894D2A97E107BF7E

precision highp int;
precision highp float;
precision highp samplerBuffer;
precision highp usampler2D;
precision highp uimage2D;
in vec4 primary_color;
in vec2 texcoord0;
in vec2 texcoord1;
in vec2 texcoord2;
in float texcoord0_w;
in vec4 normquat;
in vec3 view;

#ifndef CITRA_GLES
in vec4 gl_FragCoord;
#endif // CITRA_GLES
out vec4 color;

uniform sampler2D tex0;
uniform sampler2D tex1;
uniform sampler2D tex2;
uniform samplerCube tex_cube;
uniform samplerBuffer texture_buffer_lut_lf;
uniform samplerBuffer texture_buffer_lut_rg;
uniform samplerBuffer texture_buffer_lut_rgba;

#define NUM_TEV_STAGES 6
#define NUM_LIGHTS 8
#define NUM_LIGHTING_SAMPLERS 24

struct LightSrc {
    vec3 specular_0;
    vec3 specular_1;
    vec3 diffuse;
    vec3 ambient;
    vec3 position;
    vec3 spot_direction;
    float dist_atten_bias;
    float dist_atten_scale;
};

layout (std140) uniform shader_data {
    int alphatest_ref;
    float depth_scale;
    float depth_offset;
    float shadow_bias_constant;
    float shadow_bias_linear;
    int scissor_x1;
    int scissor_y1;
    int scissor_x2;
    int scissor_y2;
    int fog_lut_offset;
    int proctex_noise_lut_offset;
    int proctex_color_map_offset;
    int proctex_alpha_map_offset;
    int proctex_lut_offset;
    int proctex_diff_lut_offset;
    float proctex_bias;
    vec3 fog_color;
    vec2 proctex_noise_f;
    vec2 proctex_noise_a;
    vec2 proctex_noise_p;
    vec4 const_color[NUM_TEV_STAGES];
    vec4 tev_combiner_buffer_color;
    vec4 clip_coef;
};

layout (std140) uniform shader_light_data {
    ivec4 lighting_lut_offset[NUM_LIGHTING_SAMPLERS / 4];
    vec3 lighting_global_ambient;
    LightSrc light_src[NUM_LIGHTS];
    float lut_scale_d0;
    float lut_scale_d1;
    float lut_scale_sp;
    float lut_scale_fr;
    float lut_scale_rb;
    float lut_scale_rg;
    float lut_scale_rr;
    int shadow_texture_bias;
};

// Rotate the vector v by the quaternion q
vec3 quaternion_rotate(vec4 q, vec3 v) {
    return v + 2.0 * cross(q.xyz, cross(q.xyz, v) + q.w * v);
}

float LookupLightingLUT(int lut_index, int index, float delta) {
    vec2 entry = texelFetch(texture_buffer_lut_lf, lighting_lut_offset[lut_index >> 2][lut_index & 3] + index).rg;
    return entry.r + entry.g * delta;
}

float LookupLightingLUTUnsigned(int lut_index, float pos) {
    int index = clamp(int(pos * 256.0), 0, 255);
    float delta = pos * 256.0 - float(index);
    return LookupLightingLUT(lut_index, index, delta);
}

float LookupLightingLUTSigned(int lut_index, float pos) {
    int index = clamp(int(pos * 128.0), -128, 127);
    float delta = pos * 128.0 - float(index);
    if (index < 0) index += 256;
    return LookupLightingLUT(lut_index, index, delta);
}

float byteround(float x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec2 byteround(vec2 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec3 byteround(vec3 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec4 byteround(vec4 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

// PICA's LOD formula for 2D textures.
// This LOD formula is the same as the LOD lower limit defined in OpenGL.
// f(x, y) >= max{m_u, m_v, m_w}
// (See OpenGL 4.6 spec, 8.14.1 - Scale Factor and Level-of-Detail)
float getLod(vec2 coord) {
    vec2 d = max(abs(dFdx(coord)), abs(dFdy(coord)));
    return log2(max(d.x, d.y));
}

vec4 shadowTexture(vec2 uv, float w) {
    return vec4(1.0);
}

vec4 shadowTextureCube(vec2 uv, float w) {
    return vec4(1.0);
}

void main() {
vec4 rounded_primary_color = byteround(primary_color);
vec4 primary_fragment_color = vec4(0.0);
vec4 secondary_fragment_color = vec4(0.0);
if (!(gl_FragCoord.x >= float(scissor_x1) && gl_FragCoord.y >= float(scissor_y1) && gl_FragCoord.x < float(scissor_x2) && gl_FragCoord.y < float(scissor_y2))) discard;
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((const_color[0].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: B3F9190892053736, 894D2A97E107BF7E
// program: CA388C44D4F5C19E, AD7922A63ED54CA7, 894D2A97E107BF7E
// reference: 784DC227D8F04266, 285B3546CEA35D76
// reference: 8ECA464F5A9F5885, 8D616F24C0E25220
// reference: 8ECA464FF27A8A55, 1A58339DCCF6AB5D
// shader: 8B30, 25070A41D4D2F8A2

precision highp int;
precision highp float;
precision highp samplerBuffer;
precision highp usampler2D;
precision highp uimage2D;
in vec4 primary_color;
in vec2 texcoord0;
in vec2 texcoord1;
in vec2 texcoord2;
in float texcoord0_w;
in vec4 normquat;
in vec3 view;

#ifndef CITRA_GLES
in vec4 gl_FragCoord;
#endif // CITRA_GLES
out vec4 color;

uniform sampler2D tex0;
uniform sampler2D tex1;
uniform sampler2D tex2;
uniform samplerCube tex_cube;
uniform samplerBuffer texture_buffer_lut_lf;
uniform samplerBuffer texture_buffer_lut_rg;
uniform samplerBuffer texture_buffer_lut_rgba;

#define NUM_TEV_STAGES 6
#define NUM_LIGHTS 8
#define NUM_LIGHTING_SAMPLERS 24

struct LightSrc {
    vec3 specular_0;
    vec3 specular_1;
    vec3 diffuse;
    vec3 ambient;
    vec3 position;
    vec3 spot_direction;
    float dist_atten_bias;
    float dist_atten_scale;
};

layout (std140) uniform shader_data {
    int alphatest_ref;
    float depth_scale;
    float depth_offset;
    float shadow_bias_constant;
    float shadow_bias_linear;
    int scissor_x1;
    int scissor_y1;
    int scissor_x2;
    int scissor_y2;
    int fog_lut_offset;
    int proctex_noise_lut_offset;
    int proctex_color_map_offset;
    int proctex_alpha_map_offset;
    int proctex_lut_offset;
    int proctex_diff_lut_offset;
    float proctex_bias;
    vec3 fog_color;
    vec2 proctex_noise_f;
    vec2 proctex_noise_a;
    vec2 proctex_noise_p;
    vec4 const_color[NUM_TEV_STAGES];
    vec4 tev_combiner_buffer_color;
    vec4 clip_coef;
};

layout (std140) uniform shader_light_data {
    ivec4 lighting_lut_offset[NUM_LIGHTING_SAMPLERS / 4];
    vec3 lighting_global_ambient;
    LightSrc light_src[NUM_LIGHTS];
    float lut_scale_d0;
    float lut_scale_d1;
    float lut_scale_sp;
    float lut_scale_fr;
    float lut_scale_rb;
    float lut_scale_rg;
    float lut_scale_rr;
    int shadow_texture_bias;
};

// Rotate the vector v by the quaternion q
vec3 quaternion_rotate(vec4 q, vec3 v) {
    return v + 2.0 * cross(q.xyz, cross(q.xyz, v) + q.w * v);
}

float LookupLightingLUT(int lut_index, int index, float delta) {
    vec2 entry = texelFetch(texture_buffer_lut_lf, lighting_lut_offset[lut_index >> 2][lut_index & 3] + index).rg;
    return entry.r + entry.g * delta;
}

float LookupLightingLUTUnsigned(int lut_index, float pos) {
    int index = clamp(int(pos * 256.0), 0, 255);
    float delta = pos * 256.0 - float(index);
    return LookupLightingLUT(lut_index, index, delta);
}

float LookupLightingLUTSigned(int lut_index, float pos) {
    int index = clamp(int(pos * 128.0), -128, 127);
    float delta = pos * 128.0 - float(index);
    if (index < 0) index += 256;
    return LookupLightingLUT(lut_index, index, delta);
}

float byteround(float x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec2 byteround(vec2 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec3 byteround(vec3 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec4 byteround(vec4 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

// PICA's LOD formula for 2D textures.
// This LOD formula is the same as the LOD lower limit defined in OpenGL.
// f(x, y) >= max{m_u, m_v, m_w}
// (See OpenGL 4.6 spec, 8.14.1 - Scale Factor and Level-of-Detail)
float getLod(vec2 coord) {
    vec2 d = max(abs(dFdx(coord)), abs(dFdy(coord)));
    return log2(max(d.x, d.y));
}

vec4 shadowTexture(vec2 uv, float w) {
    return vec4(1.0);
}

vec4 shadowTextureCube(vec2 uv, float w) {
    return vec4(1.0);
}

void main() {
vec4 rounded_primary_color = byteround(primary_color);
vec4 primary_fragment_color = vec4(0.0);
vec4 secondary_fragment_color = vec4(0.0);
if (!(gl_FragCoord.x >= float(scissor_x1) && gl_FragCoord.y >= float(scissor_y1) && gl_FragCoord.x < float(scissor_x2) && gl_FragCoord.y < float(scissor_y2))) discard;
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((texcolor0.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.a = last_tex_env_out.a;

vec3 color_output_1 = byteround(clamp((vec3(1.0) - primary_fragment_color.rgb) * (const_color[1].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_1 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_1, alpha_output_1), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_2 = byteround(clamp((vec3(1.0) - last_tex_env_out.rgb) * (combiner_buffer.rgb) + (secondary_fragment_color.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_2 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_2, alpha_output_2), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_3 = byteround(clamp((texcolor0.rgb) + (rounded_primary_color.aaa), vec3(0.0), vec3(1.0)));
float alpha_output_3 = byteround(clamp((texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_3, alpha_output_3), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;

vec3 color_output_4 = byteround(clamp((const_color[4].aaa) * (last_tex_env_out.rgb) + (const_color[4].rgb) * (vec3(1.0) - (last_tex_env_out.rgb)), vec3(0.0), vec3(1.0)));
float alpha_output_4 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_4, alpha_output_4), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_5 = byteround(clamp((last_tex_env_out.rgb) * (rounded_primary_color.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_5 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_5, alpha_output_5), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: D980C0FD64B23ED4, 25070A41D4D2F8A2
// program: 4940142D60DA9543, 5D764F9A6220D694, 25070A41D4D2F8A2
// shader: 8B30, 3CD89482FB31182E

precision highp int;
precision highp float;
precision highp samplerBuffer;
precision highp usampler2D;
precision highp uimage2D;
in vec4 primary_color;
in vec2 texcoord0;
in vec2 texcoord1;
in vec2 texcoord2;
in float texcoord0_w;
in vec4 normquat;
in vec3 view;

#ifndef CITRA_GLES
in vec4 gl_FragCoord;
#endif // CITRA_GLES
out vec4 color;

uniform sampler2D tex0;
uniform sampler2D tex1;
uniform sampler2D tex2;
uniform samplerCube tex_cube;
uniform samplerBuffer texture_buffer_lut_lf;
uniform samplerBuffer texture_buffer_lut_rg;
uniform samplerBuffer texture_buffer_lut_rgba;

#define NUM_TEV_STAGES 6
#define NUM_LIGHTS 8
#define NUM_LIGHTING_SAMPLERS 24

struct LightSrc {
    vec3 specular_0;
    vec3 specular_1;
    vec3 diffuse;
    vec3 ambient;
    vec3 position;
    vec3 spot_direction;
    float dist_atten_bias;
    float dist_atten_scale;
};

layout (std140) uniform shader_data {
    int alphatest_ref;
    float depth_scale;
    float depth_offset;
    float shadow_bias_constant;
    float shadow_bias_linear;
    int scissor_x1;
    int scissor_y1;
    int scissor_x2;
    int scissor_y2;
    int fog_lut_offset;
    int proctex_noise_lut_offset;
    int proctex_color_map_offset;
    int proctex_alpha_map_offset;
    int proctex_lut_offset;
    int proctex_diff_lut_offset;
    float proctex_bias;
    vec3 fog_color;
    vec2 proctex_noise_f;
    vec2 proctex_noise_a;
    vec2 proctex_noise_p;
    vec4 const_color[NUM_TEV_STAGES];
    vec4 tev_combiner_buffer_color;
    vec4 clip_coef;
};

layout (std140) uniform shader_light_data {
    ivec4 lighting_lut_offset[NUM_LIGHTING_SAMPLERS / 4];
    vec3 lighting_global_ambient;
    LightSrc light_src[NUM_LIGHTS];
    float lut_scale_d0;
    float lut_scale_d1;
    float lut_scale_sp;
    float lut_scale_fr;
    float lut_scale_rb;
    float lut_scale_rg;
    float lut_scale_rr;
    int shadow_texture_bias;
};

// Rotate the vector v by the quaternion q
vec3 quaternion_rotate(vec4 q, vec3 v) {
    return v + 2.0 * cross(q.xyz, cross(q.xyz, v) + q.w * v);
}

float LookupLightingLUT(int lut_index, int index, float delta) {
    vec2 entry = texelFetch(texture_buffer_lut_lf, lighting_lut_offset[lut_index >> 2][lut_index & 3] + index).rg;
    return entry.r + entry.g * delta;
}

float LookupLightingLUTUnsigned(int lut_index, float pos) {
    int index = clamp(int(pos * 256.0), 0, 255);
    float delta = pos * 256.0 - float(index);
    return LookupLightingLUT(lut_index, index, delta);
}

float LookupLightingLUTSigned(int lut_index, float pos) {
    int index = clamp(int(pos * 128.0), -128, 127);
    float delta = pos * 128.0 - float(index);
    if (index < 0) index += 256;
    return LookupLightingLUT(lut_index, index, delta);
}

float byteround(float x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec2 byteround(vec2 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec3 byteround(vec3 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec4 byteround(vec4 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

// PICA's LOD formula for 2D textures.
// This LOD formula is the same as the LOD lower limit defined in OpenGL.
// f(x, y) >= max{m_u, m_v, m_w}
// (See OpenGL 4.6 spec, 8.14.1 - Scale Factor and Level-of-Detail)
float getLod(vec2 coord) {
    vec2 d = max(abs(dFdx(coord)), abs(dFdy(coord)));
    return log2(max(d.x, d.y));
}

vec4 shadowTexture(vec2 uv, float w) {
    return vec4(1.0);
}

vec4 shadowTextureCube(vec2 uv, float w) {
    return vec4(1.0);
}

void main() {
vec4 rounded_primary_color = byteround(primary_color);
vec4 primary_fragment_color = vec4(0.0);
vec4 secondary_fragment_color = vec4(0.0);
if (!(gl_FragCoord.x >= float(scissor_x1) && gl_FragCoord.y >= float(scissor_y1) && gl_FragCoord.x < float(scissor_x2) && gl_FragCoord.y < float(scissor_y2))) discard;
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((texcolor0.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.a = last_tex_env_out.a;

vec3 color_output_1 = byteround(clamp((vec3(1.0) - primary_fragment_color.rgb) * (const_color[1].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_1 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_1, alpha_output_1), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_2 = byteround(clamp((vec3(1.0) - last_tex_env_out.rgb) * (combiner_buffer.rgb) + (secondary_fragment_color.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_2 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_2, alpha_output_2), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_3 = byteround(clamp((const_color[3].rgb) * (vec3(1.0) - texcolor0.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_3 = byteround(clamp((const_color[3].a) * (1.0 - texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_3, alpha_output_3), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;

vec3 color_output_4 = byteround(clamp((const_color[4].rgb) * (texcolor0.rgb) + (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_4 = byteround(clamp((const_color[4].a) * (texcolor0.a) + (last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_4, alpha_output_4), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_5 = byteround(clamp((rounded_primary_color.rgb) * (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_5 = byteround(clamp((rounded_primary_color.a) * (last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_5, alpha_output_5), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: 72E65B0A07CE6A70, 3CD89482FB31182E
// program: 4940142D60DA9543, 5D764F9A6220D694, 3CD89482FB31182E
// shader: 8B30, 56F6CC0A6C0DBE53

precision highp int;
precision highp float;
precision highp samplerBuffer;
precision highp usampler2D;
precision highp uimage2D;
in vec4 primary_color;
in vec2 texcoord0;
in vec2 texcoord1;
in vec2 texcoord2;
in float texcoord0_w;
in vec4 normquat;
in vec3 view;

#ifndef CITRA_GLES
in vec4 gl_FragCoord;
#endif // CITRA_GLES
out vec4 color;

uniform sampler2D tex0;
uniform sampler2D tex1;
uniform sampler2D tex2;
uniform samplerCube tex_cube;
uniform samplerBuffer texture_buffer_lut_lf;
uniform samplerBuffer texture_buffer_lut_rg;
uniform samplerBuffer texture_buffer_lut_rgba;

#define NUM_TEV_STAGES 6
#define NUM_LIGHTS 8
#define NUM_LIGHTING_SAMPLERS 24

struct LightSrc {
    vec3 specular_0;
    vec3 specular_1;
    vec3 diffuse;
    vec3 ambient;
    vec3 position;
    vec3 spot_direction;
    float dist_atten_bias;
    float dist_atten_scale;
};

layout (std140) uniform shader_data {
    int alphatest_ref;
    float depth_scale;
    float depth_offset;
    float shadow_bias_constant;
    float shadow_bias_linear;
    int scissor_x1;
    int scissor_y1;
    int scissor_x2;
    int scissor_y2;
    int fog_lut_offset;
    int proctex_noise_lut_offset;
    int proctex_color_map_offset;
    int proctex_alpha_map_offset;
    int proctex_lut_offset;
    int proctex_diff_lut_offset;
    float proctex_bias;
    vec3 fog_color;
    vec2 proctex_noise_f;
    vec2 proctex_noise_a;
    vec2 proctex_noise_p;
    vec4 const_color[NUM_TEV_STAGES];
    vec4 tev_combiner_buffer_color;
    vec4 clip_coef;
};

layout (std140) uniform shader_light_data {
    ivec4 lighting_lut_offset[NUM_LIGHTING_SAMPLERS / 4];
    vec3 lighting_global_ambient;
    LightSrc light_src[NUM_LIGHTS];
    float lut_scale_d0;
    float lut_scale_d1;
    float lut_scale_sp;
    float lut_scale_fr;
    float lut_scale_rb;
    float lut_scale_rg;
    float lut_scale_rr;
    int shadow_texture_bias;
};

// Rotate the vector v by the quaternion q
vec3 quaternion_rotate(vec4 q, vec3 v) {
    return v + 2.0 * cross(q.xyz, cross(q.xyz, v) + q.w * v);
}

float LookupLightingLUT(int lut_index, int index, float delta) {
    vec2 entry = texelFetch(texture_buffer_lut_lf, lighting_lut_offset[lut_index >> 2][lut_index & 3] + index).rg;
    return entry.r + entry.g * delta;
}

float LookupLightingLUTUnsigned(int lut_index, float pos) {
    int index = clamp(int(pos * 256.0), 0, 255);
    float delta = pos * 256.0 - float(index);
    return LookupLightingLUT(lut_index, index, delta);
}

float LookupLightingLUTSigned(int lut_index, float pos) {
    int index = clamp(int(pos * 128.0), -128, 127);
    float delta = pos * 128.0 - float(index);
    if (index < 0) index += 256;
    return LookupLightingLUT(lut_index, index, delta);
}

float byteround(float x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec2 byteround(vec2 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec3 byteround(vec3 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec4 byteround(vec4 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

// PICA's LOD formula for 2D textures.
// This LOD formula is the same as the LOD lower limit defined in OpenGL.
// f(x, y) >= max{m_u, m_v, m_w}
// (See OpenGL 4.6 spec, 8.14.1 - Scale Factor and Level-of-Detail)
float getLod(vec2 coord) {
    vec2 d = max(abs(dFdx(coord)), abs(dFdy(coord)));
    return log2(max(d.x, d.y));
}

vec4 shadowTexture(vec2 uv, float w) {
    return vec4(1.0);
}

vec4 shadowTextureCube(vec2 uv, float w) {
    return vec4(1.0);
}

void main() {
vec4 rounded_primary_color = byteround(primary_color);
vec4 primary_fragment_color = vec4(0.0);
vec4 secondary_fragment_color = vec4(0.0);
if (!(gl_FragCoord.x >= float(scissor_x1) && gl_FragCoord.y >= float(scissor_y1) && gl_FragCoord.x < float(scissor_x2) && gl_FragCoord.y < float(scissor_y2))) discard;
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((const_color[0].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((rounded_primary_color.a) * (texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_1 = byteround(clamp((const_color[1].rgb) * (texcolor0.rgb) + (last_tex_env_out.rgb) * (vec3(1.0) - (texcolor0.rgb)), vec3(0.0), vec3(1.0)));
float alpha_output_1 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_1, alpha_output_1), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: 640B2A452CDB7C3D, 56F6CC0A6C0DBE53
// program: 0000000000000000, 0000000000000000, 56F6CC0A6C0DBE53
// reference: 259655FB52694E1C, 4940142D60DA9543
// shader: 8B30, 4D21FE9380B6CA8A

precision highp int;
precision highp float;
precision highp samplerBuffer;
precision highp usampler2D;
precision highp uimage2D;
in vec4 primary_color;
in vec2 texcoord0;
in vec2 texcoord1;
in vec2 texcoord2;
in float texcoord0_w;
in vec4 normquat;
in vec3 view;

#ifndef CITRA_GLES
in vec4 gl_FragCoord;
#endif // CITRA_GLES
out vec4 color;

uniform sampler2D tex0;
uniform sampler2D tex1;
uniform sampler2D tex2;
uniform samplerCube tex_cube;
uniform samplerBuffer texture_buffer_lut_lf;
uniform samplerBuffer texture_buffer_lut_rg;
uniform samplerBuffer texture_buffer_lut_rgba;

#define NUM_TEV_STAGES 6
#define NUM_LIGHTS 8
#define NUM_LIGHTING_SAMPLERS 24

struct LightSrc {
    vec3 specular_0;
    vec3 specular_1;
    vec3 diffuse;
    vec3 ambient;
    vec3 position;
    vec3 spot_direction;
    float dist_atten_bias;
    float dist_atten_scale;
};

layout (std140) uniform shader_data {
    int alphatest_ref;
    float depth_scale;
    float depth_offset;
    float shadow_bias_constant;
    float shadow_bias_linear;
    int scissor_x1;
    int scissor_y1;
    int scissor_x2;
    int scissor_y2;
    int fog_lut_offset;
    int proctex_noise_lut_offset;
    int proctex_color_map_offset;
    int proctex_alpha_map_offset;
    int proctex_lut_offset;
    int proctex_diff_lut_offset;
    float proctex_bias;
    vec3 fog_color;
    vec2 proctex_noise_f;
    vec2 proctex_noise_a;
    vec2 proctex_noise_p;
    vec4 const_color[NUM_TEV_STAGES];
    vec4 tev_combiner_buffer_color;
    vec4 clip_coef;
};

layout (std140) uniform shader_light_data {
    ivec4 lighting_lut_offset[NUM_LIGHTING_SAMPLERS / 4];
    vec3 lighting_global_ambient;
    LightSrc light_src[NUM_LIGHTS];
    float lut_scale_d0;
    float lut_scale_d1;
    float lut_scale_sp;
    float lut_scale_fr;
    float lut_scale_rb;
    float lut_scale_rg;
    float lut_scale_rr;
    int shadow_texture_bias;
};

// Rotate the vector v by the quaternion q
vec3 quaternion_rotate(vec4 q, vec3 v) {
    return v + 2.0 * cross(q.xyz, cross(q.xyz, v) + q.w * v);
}

float LookupLightingLUT(int lut_index, int index, float delta) {
    vec2 entry = texelFetch(texture_buffer_lut_lf, lighting_lut_offset[lut_index >> 2][lut_index & 3] + index).rg;
    return entry.r + entry.g * delta;
}

float LookupLightingLUTUnsigned(int lut_index, float pos) {
    int index = clamp(int(pos * 256.0), 0, 255);
    float delta = pos * 256.0 - float(index);
    return LookupLightingLUT(lut_index, index, delta);
}

float LookupLightingLUTSigned(int lut_index, float pos) {
    int index = clamp(int(pos * 128.0), -128, 127);
    float delta = pos * 128.0 - float(index);
    if (index < 0) index += 256;
    return LookupLightingLUT(lut_index, index, delta);
}

float byteround(float x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec2 byteround(vec2 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec3 byteround(vec3 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec4 byteround(vec4 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

// PICA's LOD formula for 2D textures.
// This LOD formula is the same as the LOD lower limit defined in OpenGL.
// f(x, y) >= max{m_u, m_v, m_w}
// (See OpenGL 4.6 spec, 8.14.1 - Scale Factor and Level-of-Detail)
float getLod(vec2 coord) {
    vec2 d = max(abs(dFdx(coord)), abs(dFdy(coord)));
    return log2(max(d.x, d.y));
}

vec4 shadowTexture(vec2 uv, float w) {
    return vec4(1.0);
}

vec4 shadowTextureCube(vec2 uv, float w) {
    return vec4(1.0);
}

void main() {
vec4 rounded_primary_color = byteround(primary_color);
vec4 primary_fragment_color = vec4(0.0);
vec4 secondary_fragment_color = vec4(0.0);
if (!(gl_FragCoord.x >= float(scissor_x1) && gl_FragCoord.y >= float(scissor_y1) && gl_FragCoord.x < float(scissor_x2) && gl_FragCoord.y < float(scissor_y2))) discard;
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((const_color[0].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((rounded_primary_color.a) * (texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_1 = byteround(clamp((const_color[1].rgb) * (texcolor0.rgb) + (last_tex_env_out.rgb) * (vec3(1.0) - (texcolor0.rgb)), vec3(0.0), vec3(1.0)));
float alpha_output_1 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_1, alpha_output_1), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

vec3 color_output_3 = byteround(clamp((vec3(1.0) - texcolor0.rgb) * (const_color[3].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_3 = byteround(clamp((texcolor0.a) * (const_color[3].a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_3, alpha_output_3), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_4 = byteround(clamp((texcolor0.rgb) * (const_color[4].rgb) + (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_4 = byteround(clamp((1.0 - texcolor0.a) * (const_color[4].a) + (last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_4, alpha_output_4), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_5 = byteround(clamp((rounded_primary_color.rgb) * (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_5 = byteround(clamp((rounded_primary_color.a) * (last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_5, alpha_output_5), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: BA74EA4756403455, 4D21FE9380B6CA8A
// program: 4940142D60DA9543, 5D764F9A6220D694, 4D21FE9380B6CA8A
// reference: F615920252694E1C, 4940142D60DA9543
// shader: 8B30, 7AF308C589C1D0BE

precision highp int;
precision highp float;
precision highp samplerBuffer;
precision highp usampler2D;
precision highp uimage2D;
in vec4 primary_color;
in vec2 texcoord0;
in vec2 texcoord1;
in vec2 texcoord2;
in float texcoord0_w;
in vec4 normquat;
in vec3 view;

#ifndef CITRA_GLES
in vec4 gl_FragCoord;
#endif // CITRA_GLES
out vec4 color;

uniform sampler2D tex0;
uniform sampler2D tex1;
uniform sampler2D tex2;
uniform samplerCube tex_cube;
uniform samplerBuffer texture_buffer_lut_lf;
uniform samplerBuffer texture_buffer_lut_rg;
uniform samplerBuffer texture_buffer_lut_rgba;

#define NUM_TEV_STAGES 6
#define NUM_LIGHTS 8
#define NUM_LIGHTING_SAMPLERS 24

struct LightSrc {
    vec3 specular_0;
    vec3 specular_1;
    vec3 diffuse;
    vec3 ambient;
    vec3 position;
    vec3 spot_direction;
    float dist_atten_bias;
    float dist_atten_scale;
};

layout (std140) uniform shader_data {
    int alphatest_ref;
    float depth_scale;
    float depth_offset;
    float shadow_bias_constant;
    float shadow_bias_linear;
    int scissor_x1;
    int scissor_y1;
    int scissor_x2;
    int scissor_y2;
    int fog_lut_offset;
    int proctex_noise_lut_offset;
    int proctex_color_map_offset;
    int proctex_alpha_map_offset;
    int proctex_lut_offset;
    int proctex_diff_lut_offset;
    float proctex_bias;
    vec3 fog_color;
    vec2 proctex_noise_f;
    vec2 proctex_noise_a;
    vec2 proctex_noise_p;
    vec4 const_color[NUM_TEV_STAGES];
    vec4 tev_combiner_buffer_color;
    vec4 clip_coef;
};

layout (std140) uniform shader_light_data {
    ivec4 lighting_lut_offset[NUM_LIGHTING_SAMPLERS / 4];
    vec3 lighting_global_ambient;
    LightSrc light_src[NUM_LIGHTS];
    float lut_scale_d0;
    float lut_scale_d1;
    float lut_scale_sp;
    float lut_scale_fr;
    float lut_scale_rb;
    float lut_scale_rg;
    float lut_scale_rr;
    int shadow_texture_bias;
};

// Rotate the vector v by the quaternion q
vec3 quaternion_rotate(vec4 q, vec3 v) {
    return v + 2.0 * cross(q.xyz, cross(q.xyz, v) + q.w * v);
}

float LookupLightingLUT(int lut_index, int index, float delta) {
    vec2 entry = texelFetch(texture_buffer_lut_lf, lighting_lut_offset[lut_index >> 2][lut_index & 3] + index).rg;
    return entry.r + entry.g * delta;
}

float LookupLightingLUTUnsigned(int lut_index, float pos) {
    int index = clamp(int(pos * 256.0), 0, 255);
    float delta = pos * 256.0 - float(index);
    return LookupLightingLUT(lut_index, index, delta);
}

float LookupLightingLUTSigned(int lut_index, float pos) {
    int index = clamp(int(pos * 128.0), -128, 127);
    float delta = pos * 128.0 - float(index);
    if (index < 0) index += 256;
    return LookupLightingLUT(lut_index, index, delta);
}

float byteround(float x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec2 byteround(vec2 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec3 byteround(vec3 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec4 byteround(vec4 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

// PICA's LOD formula for 2D textures.
// This LOD formula is the same as the LOD lower limit defined in OpenGL.
// f(x, y) >= max{m_u, m_v, m_w}
// (See OpenGL 4.6 spec, 8.14.1 - Scale Factor and Level-of-Detail)
float getLod(vec2 coord) {
    vec2 d = max(abs(dFdx(coord)), abs(dFdy(coord)));
    return log2(max(d.x, d.y));
}

vec4 shadowTexture(vec2 uv, float w) {
    return vec4(1.0);
}

vec4 shadowTextureCube(vec2 uv, float w) {
    return vec4(1.0);
}

void main() {
vec4 rounded_primary_color = byteround(primary_color);
vec4 primary_fragment_color = vec4(0.0);
vec4 secondary_fragment_color = vec4(0.0);
if (!(gl_FragCoord.x >= float(scissor_x1) && gl_FragCoord.y >= float(scissor_y1) && gl_FragCoord.x < float(scissor_x2) && gl_FragCoord.y < float(scissor_y2))) discard;
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((const_color[0].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((rounded_primary_color.a) * (texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_1 = byteround(clamp((const_color[1].rgb) * (texcolor0.rgb) + (last_tex_env_out.rgb) * (vec3(1.0) - (texcolor0.rgb)), vec3(0.0), vec3(1.0)));
float alpha_output_1 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_1, alpha_output_1), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

vec3 color_output_3 = byteround(clamp((const_color[3].rgb) * (vec3(1.0) - texcolor0.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_3 = byteround(clamp((const_color[3].a) * (1.0 - texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_3, alpha_output_3), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_4 = byteround(clamp((const_color[4].rgb) * (texcolor0.rgb) + (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_4 = byteround(clamp((const_color[4].a) * (texcolor0.a) + (last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_4, alpha_output_4), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_5 = byteround(clamp((rounded_primary_color.rgb) * (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_5 = byteround(clamp((rounded_primary_color.a) * (last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_5, alpha_output_5), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: 75EC0EB8D7BF22EF, 7AF308C589C1D0BE
// program: 4940142D60DA9543, 5D764F9A6220D694, 7AF308C589C1D0BE
// shader: 8B30, F6D3FCC29508E85B

precision highp int;
precision highp float;
precision highp samplerBuffer;
precision highp usampler2D;
precision highp uimage2D;
in vec4 primary_color;
in vec2 texcoord0;
in vec2 texcoord1;
in vec2 texcoord2;
in float texcoord0_w;
in vec4 normquat;
in vec3 view;

#ifndef CITRA_GLES
in vec4 gl_FragCoord;
#endif // CITRA_GLES
out vec4 color;

uniform sampler2D tex0;
uniform sampler2D tex1;
uniform sampler2D tex2;
uniform samplerCube tex_cube;
uniform samplerBuffer texture_buffer_lut_lf;
uniform samplerBuffer texture_buffer_lut_rg;
uniform samplerBuffer texture_buffer_lut_rgba;

#define NUM_TEV_STAGES 6
#define NUM_LIGHTS 8
#define NUM_LIGHTING_SAMPLERS 24

struct LightSrc {
    vec3 specular_0;
    vec3 specular_1;
    vec3 diffuse;
    vec3 ambient;
    vec3 position;
    vec3 spot_direction;
    float dist_atten_bias;
    float dist_atten_scale;
};

layout (std140) uniform shader_data {
    int alphatest_ref;
    float depth_scale;
    float depth_offset;
    float shadow_bias_constant;
    float shadow_bias_linear;
    int scissor_x1;
    int scissor_y1;
    int scissor_x2;
    int scissor_y2;
    int fog_lut_offset;
    int proctex_noise_lut_offset;
    int proctex_color_map_offset;
    int proctex_alpha_map_offset;
    int proctex_lut_offset;
    int proctex_diff_lut_offset;
    float proctex_bias;
    vec3 fog_color;
    vec2 proctex_noise_f;
    vec2 proctex_noise_a;
    vec2 proctex_noise_p;
    vec4 const_color[NUM_TEV_STAGES];
    vec4 tev_combiner_buffer_color;
    vec4 clip_coef;
};

layout (std140) uniform shader_light_data {
    ivec4 lighting_lut_offset[NUM_LIGHTING_SAMPLERS / 4];
    vec3 lighting_global_ambient;
    LightSrc light_src[NUM_LIGHTS];
    float lut_scale_d0;
    float lut_scale_d1;
    float lut_scale_sp;
    float lut_scale_fr;
    float lut_scale_rb;
    float lut_scale_rg;
    float lut_scale_rr;
    int shadow_texture_bias;
};

// Rotate the vector v by the quaternion q
vec3 quaternion_rotate(vec4 q, vec3 v) {
    return v + 2.0 * cross(q.xyz, cross(q.xyz, v) + q.w * v);
}

float LookupLightingLUT(int lut_index, int index, float delta) {
    vec2 entry = texelFetch(texture_buffer_lut_lf, lighting_lut_offset[lut_index >> 2][lut_index & 3] + index).rg;
    return entry.r + entry.g * delta;
}

float LookupLightingLUTUnsigned(int lut_index, float pos) {
    int index = clamp(int(pos * 256.0), 0, 255);
    float delta = pos * 256.0 - float(index);
    return LookupLightingLUT(lut_index, index, delta);
}

float LookupLightingLUTSigned(int lut_index, float pos) {
    int index = clamp(int(pos * 128.0), -128, 127);
    float delta = pos * 128.0 - float(index);
    if (index < 0) index += 256;
    return LookupLightingLUT(lut_index, index, delta);
}

float byteround(float x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec2 byteround(vec2 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec3 byteround(vec3 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec4 byteround(vec4 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

// PICA's LOD formula for 2D textures.
// This LOD formula is the same as the LOD lower limit defined in OpenGL.
// f(x, y) >= max{m_u, m_v, m_w}
// (See OpenGL 4.6 spec, 8.14.1 - Scale Factor and Level-of-Detail)
float getLod(vec2 coord) {
    vec2 d = max(abs(dFdx(coord)), abs(dFdy(coord)));
    return log2(max(d.x, d.y));
}

vec4 shadowTexture(vec2 uv, float w) {
    return vec4(1.0);
}

vec4 shadowTextureCube(vec2 uv, float w) {
    return vec4(1.0);
}

void main() {
vec4 rounded_primary_color = byteround(primary_color);
vec4 primary_fragment_color = vec4(0.0);
vec4 secondary_fragment_color = vec4(0.0);
if (!(gl_FragCoord.x >= float(scissor_x1) && gl_FragCoord.y >= float(scissor_y1) && gl_FragCoord.x < float(scissor_x2) && gl_FragCoord.y < float(scissor_y2))) discard;
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((const_color[0].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((rounded_primary_color.a) * (texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.a = last_tex_env_out.a;

vec3 color_output_1 = byteround(clamp((const_color[1].rgb) * (texcolor0.rgb) + (last_tex_env_out.rgb) * (vec3(1.0) - (texcolor0.rgb)), vec3(0.0), vec3(1.0)));
float alpha_output_1 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_1, alpha_output_1), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

vec3 color_output_3 = byteround(clamp((texcolor0.rgb) + (rounded_primary_color.aaa), vec3(0.0), vec3(1.0)));
float alpha_output_3 = byteround(clamp((texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_3, alpha_output_3), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;

vec3 color_output_4 = byteround(clamp((const_color[4].aaa) * (last_tex_env_out.rgb) + (const_color[4].rgb) * (vec3(1.0) - (last_tex_env_out.rgb)), vec3(0.0), vec3(1.0)));
float alpha_output_4 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_4, alpha_output_4), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_5 = byteround(clamp((last_tex_env_out.rgb) * (rounded_primary_color.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_5 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_5, alpha_output_5), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: DE8A954F07D40ED4, F6D3FCC29508E85B
// program: 4940142D60DA9543, 5D764F9A6220D694, F6D3FCC29508E85B
// shader: 8B30, 0B8566ED329AEE0C

precision highp int;
precision highp float;
precision highp samplerBuffer;
precision highp usampler2D;
precision highp uimage2D;
in vec4 primary_color;
in vec2 texcoord0;
in vec2 texcoord1;
in vec2 texcoord2;
in float texcoord0_w;
in vec4 normquat;
in vec3 view;

#ifndef CITRA_GLES
in vec4 gl_FragCoord;
#endif // CITRA_GLES
out vec4 color;

uniform sampler2D tex0;
uniform sampler2D tex1;
uniform sampler2D tex2;
uniform samplerCube tex_cube;
uniform samplerBuffer texture_buffer_lut_lf;
uniform samplerBuffer texture_buffer_lut_rg;
uniform samplerBuffer texture_buffer_lut_rgba;

#define NUM_TEV_STAGES 6
#define NUM_LIGHTS 8
#define NUM_LIGHTING_SAMPLERS 24

struct LightSrc {
    vec3 specular_0;
    vec3 specular_1;
    vec3 diffuse;
    vec3 ambient;
    vec3 position;
    vec3 spot_direction;
    float dist_atten_bias;
    float dist_atten_scale;
};

layout (std140) uniform shader_data {
    int alphatest_ref;
    float depth_scale;
    float depth_offset;
    float shadow_bias_constant;
    float shadow_bias_linear;
    int scissor_x1;
    int scissor_y1;
    int scissor_x2;
    int scissor_y2;
    int fog_lut_offset;
    int proctex_noise_lut_offset;
    int proctex_color_map_offset;
    int proctex_alpha_map_offset;
    int proctex_lut_offset;
    int proctex_diff_lut_offset;
    float proctex_bias;
    vec3 fog_color;
    vec2 proctex_noise_f;
    vec2 proctex_noise_a;
    vec2 proctex_noise_p;
    vec4 const_color[NUM_TEV_STAGES];
    vec4 tev_combiner_buffer_color;
    vec4 clip_coef;
};

layout (std140) uniform shader_light_data {
    ivec4 lighting_lut_offset[NUM_LIGHTING_SAMPLERS / 4];
    vec3 lighting_global_ambient;
    LightSrc light_src[NUM_LIGHTS];
    float lut_scale_d0;
    float lut_scale_d1;
    float lut_scale_sp;
    float lut_scale_fr;
    float lut_scale_rb;
    float lut_scale_rg;
    float lut_scale_rr;
    int shadow_texture_bias;
};

// Rotate the vector v by the quaternion q
vec3 quaternion_rotate(vec4 q, vec3 v) {
    return v + 2.0 * cross(q.xyz, cross(q.xyz, v) + q.w * v);
}

float LookupLightingLUT(int lut_index, int index, float delta) {
    vec2 entry = texelFetch(texture_buffer_lut_lf, lighting_lut_offset[lut_index >> 2][lut_index & 3] + index).rg;
    return entry.r + entry.g * delta;
}

float LookupLightingLUTUnsigned(int lut_index, float pos) {
    int index = clamp(int(pos * 256.0), 0, 255);
    float delta = pos * 256.0 - float(index);
    return LookupLightingLUT(lut_index, index, delta);
}

float LookupLightingLUTSigned(int lut_index, float pos) {
    int index = clamp(int(pos * 128.0), -128, 127);
    float delta = pos * 128.0 - float(index);
    if (index < 0) index += 256;
    return LookupLightingLUT(lut_index, index, delta);
}

float byteround(float x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec2 byteround(vec2 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec3 byteround(vec3 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec4 byteround(vec4 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

// PICA's LOD formula for 2D textures.
// This LOD formula is the same as the LOD lower limit defined in OpenGL.
// f(x, y) >= max{m_u, m_v, m_w}
// (See OpenGL 4.6 spec, 8.14.1 - Scale Factor and Level-of-Detail)
float getLod(vec2 coord) {
    vec2 d = max(abs(dFdx(coord)), abs(dFdy(coord)));
    return log2(max(d.x, d.y));
}

vec4 shadowTexture(vec2 uv, float w) {
    return vec4(1.0);
}

vec4 shadowTextureCube(vec2 uv, float w) {
    return vec4(1.0);
}

void main() {
vec4 rounded_primary_color = byteround(primary_color);
vec4 primary_fragment_color = vec4(0.0);
vec4 secondary_fragment_color = vec4(0.0);
if (!(gl_FragCoord.x >= float(scissor_x1) && gl_FragCoord.y >= float(scissor_y1) && gl_FragCoord.x < float(scissor_x2) && gl_FragCoord.y < float(scissor_y2))) discard;
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((const_color[0].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((rounded_primary_color.a) * (texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.a = last_tex_env_out.a;

vec3 color_output_1 = byteround(clamp((const_color[1].rgb) * (texcolor0.rgb) + (last_tex_env_out.rgb) * (vec3(1.0) - (texcolor0.rgb)), vec3(0.0), vec3(1.0)));
float alpha_output_1 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_1, alpha_output_1), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

vec3 color_output_3 = byteround(clamp((const_color[3].rgb) * (vec3(1.0) - texcolor0.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_3 = byteround(clamp((const_color[3].a) * (1.0 - texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_3, alpha_output_3), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;

vec3 color_output_4 = byteround(clamp((const_color[4].rgb) * (texcolor0.rgb) + (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_4 = byteround(clamp((const_color[4].a) * (texcolor0.a) + (last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_4, alpha_output_4), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_5 = byteround(clamp((rounded_primary_color.rgb) * (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_5 = byteround(clamp((rounded_primary_color.a) * (last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_5, alpha_output_5), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: 75EC0EB864A85A70, 0B8566ED329AEE0C
// program: 4940142D60DA9543, 5D764F9A6220D694, 0B8566ED329AEE0C
// shader: 8B30, 26CD8D45CE4284F7

precision highp int;
precision highp float;
precision highp samplerBuffer;
precision highp usampler2D;
precision highp uimage2D;
in vec4 primary_color;
in vec2 texcoord0;
in vec2 texcoord1;
in vec2 texcoord2;
in float texcoord0_w;
in vec4 normquat;
in vec3 view;

#ifndef CITRA_GLES
in vec4 gl_FragCoord;
#endif // CITRA_GLES
out vec4 color;

uniform sampler2D tex0;
uniform sampler2D tex1;
uniform sampler2D tex2;
uniform samplerCube tex_cube;
uniform samplerBuffer texture_buffer_lut_lf;
uniform samplerBuffer texture_buffer_lut_rg;
uniform samplerBuffer texture_buffer_lut_rgba;

#define NUM_TEV_STAGES 6
#define NUM_LIGHTS 8
#define NUM_LIGHTING_SAMPLERS 24

struct LightSrc {
    vec3 specular_0;
    vec3 specular_1;
    vec3 diffuse;
    vec3 ambient;
    vec3 position;
    vec3 spot_direction;
    float dist_atten_bias;
    float dist_atten_scale;
};

layout (std140) uniform shader_data {
    int alphatest_ref;
    float depth_scale;
    float depth_offset;
    float shadow_bias_constant;
    float shadow_bias_linear;
    int scissor_x1;
    int scissor_y1;
    int scissor_x2;
    int scissor_y2;
    int fog_lut_offset;
    int proctex_noise_lut_offset;
    int proctex_color_map_offset;
    int proctex_alpha_map_offset;
    int proctex_lut_offset;
    int proctex_diff_lut_offset;
    float proctex_bias;
    vec3 fog_color;
    vec2 proctex_noise_f;
    vec2 proctex_noise_a;
    vec2 proctex_noise_p;
    vec4 const_color[NUM_TEV_STAGES];
    vec4 tev_combiner_buffer_color;
    vec4 clip_coef;
};

layout (std140) uniform shader_light_data {
    ivec4 lighting_lut_offset[NUM_LIGHTING_SAMPLERS / 4];
    vec3 lighting_global_ambient;
    LightSrc light_src[NUM_LIGHTS];
    float lut_scale_d0;
    float lut_scale_d1;
    float lut_scale_sp;
    float lut_scale_fr;
    float lut_scale_rb;
    float lut_scale_rg;
    float lut_scale_rr;
    int shadow_texture_bias;
};

// Rotate the vector v by the quaternion q
vec3 quaternion_rotate(vec4 q, vec3 v) {
    return v + 2.0 * cross(q.xyz, cross(q.xyz, v) + q.w * v);
}

float LookupLightingLUT(int lut_index, int index, float delta) {
    vec2 entry = texelFetch(texture_buffer_lut_lf, lighting_lut_offset[lut_index >> 2][lut_index & 3] + index).rg;
    return entry.r + entry.g * delta;
}

float LookupLightingLUTUnsigned(int lut_index, float pos) {
    int index = clamp(int(pos * 256.0), 0, 255);
    float delta = pos * 256.0 - float(index);
    return LookupLightingLUT(lut_index, index, delta);
}

float LookupLightingLUTSigned(int lut_index, float pos) {
    int index = clamp(int(pos * 128.0), -128, 127);
    float delta = pos * 128.0 - float(index);
    if (index < 0) index += 256;
    return LookupLightingLUT(lut_index, index, delta);
}

float byteround(float x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec2 byteround(vec2 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec3 byteround(vec3 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec4 byteround(vec4 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

// PICA's LOD formula for 2D textures.
// This LOD formula is the same as the LOD lower limit defined in OpenGL.
// f(x, y) >= max{m_u, m_v, m_w}
// (See OpenGL 4.6 spec, 8.14.1 - Scale Factor and Level-of-Detail)
float getLod(vec2 coord) {
    vec2 d = max(abs(dFdx(coord)), abs(dFdy(coord)));
    return log2(max(d.x, d.y));
}

vec4 shadowTexture(vec2 uv, float w) {
    return vec4(1.0);
}

vec4 shadowTextureCube(vec2 uv, float w) {
    return vec4(1.0);
}

void main() {
vec4 rounded_primary_color = byteround(primary_color);
vec4 primary_fragment_color = vec4(0.0);
vec4 secondary_fragment_color = vec4(0.0);
if (!(gl_FragCoord.x >= float(scissor_x1) && gl_FragCoord.y >= float(scissor_y1) && gl_FragCoord.x < float(scissor_x2) && gl_FragCoord.y < float(scissor_y2))) discard;
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));
vec4 texcolor1 = textureLod(tex1, texcoord1, getLod(texcoord1 * vec2(textureSize(tex1, 0))));
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((const_color[0].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((rounded_primary_color.a) * (texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.a = last_tex_env_out.a;

vec3 color_output_1 = byteround(clamp((const_color[1].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_1 = byteround(clamp((texcolor0.a) + (texcolor1.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_1, alpha_output_1), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;

vec3 color_output_2 = byteround(clamp((const_color[2].rgb) * (texcolor0.rgb) + (last_tex_env_out.rgb) * (vec3(1.0) - (texcolor0.rgb)), vec3(0.0), vec3(1.0)));
float alpha_output_2 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_2, alpha_output_2), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;

vec3 color_output_3 = byteround(clamp((last_tex_env_out.rgb) * (texcolor0.aaa), vec3(0.0), vec3(1.0)));
float alpha_output_3 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_3, alpha_output_3), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;

vec3 color_output_4 = byteround(clamp((rounded_primary_color.rgb) * (const_color[4].aaa) + (const_color[4].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_4 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_4, alpha_output_4), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_5 = byteround(clamp((last_tex_env_out.rgb) * (texcolor1.rgb) + (combiner_buffer.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_5 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_5, alpha_output_5), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: D74AE6FF8EF91FEA, 26CD8D45CE4284F7
// program: 4940142D60DA9543, 5D764F9A6220D694, 26CD8D45CE4284F7
// shader: 8B30, C762E50E18C1A40D

precision highp int;
precision highp float;
precision highp samplerBuffer;
precision highp usampler2D;
precision highp uimage2D;
in vec4 primary_color;
in vec2 texcoord0;
in vec2 texcoord1;
in vec2 texcoord2;
in float texcoord0_w;
in vec4 normquat;
in vec3 view;

#ifndef CITRA_GLES
in vec4 gl_FragCoord;
#endif // CITRA_GLES
out vec4 color;

uniform sampler2D tex0;
uniform sampler2D tex1;
uniform sampler2D tex2;
uniform samplerCube tex_cube;
uniform samplerBuffer texture_buffer_lut_lf;
uniform samplerBuffer texture_buffer_lut_rg;
uniform samplerBuffer texture_buffer_lut_rgba;

#define NUM_TEV_STAGES 6
#define NUM_LIGHTS 8
#define NUM_LIGHTING_SAMPLERS 24

struct LightSrc {
    vec3 specular_0;
    vec3 specular_1;
    vec3 diffuse;
    vec3 ambient;
    vec3 position;
    vec3 spot_direction;
    float dist_atten_bias;
    float dist_atten_scale;
};

layout (std140) uniform shader_data {
    int alphatest_ref;
    float depth_scale;
    float depth_offset;
    float shadow_bias_constant;
    float shadow_bias_linear;
    int scissor_x1;
    int scissor_y1;
    int scissor_x2;
    int scissor_y2;
    int fog_lut_offset;
    int proctex_noise_lut_offset;
    int proctex_color_map_offset;
    int proctex_alpha_map_offset;
    int proctex_lut_offset;
    int proctex_diff_lut_offset;
    float proctex_bias;
    vec3 fog_color;
    vec2 proctex_noise_f;
    vec2 proctex_noise_a;
    vec2 proctex_noise_p;
    vec4 const_color[NUM_TEV_STAGES];
    vec4 tev_combiner_buffer_color;
    vec4 clip_coef;
};

layout (std140) uniform shader_light_data {
    ivec4 lighting_lut_offset[NUM_LIGHTING_SAMPLERS / 4];
    vec3 lighting_global_ambient;
    LightSrc light_src[NUM_LIGHTS];
    float lut_scale_d0;
    float lut_scale_d1;
    float lut_scale_sp;
    float lut_scale_fr;
    float lut_scale_rb;
    float lut_scale_rg;
    float lut_scale_rr;
    int shadow_texture_bias;
};

// Rotate the vector v by the quaternion q
vec3 quaternion_rotate(vec4 q, vec3 v) {
    return v + 2.0 * cross(q.xyz, cross(q.xyz, v) + q.w * v);
}

float LookupLightingLUT(int lut_index, int index, float delta) {
    vec2 entry = texelFetch(texture_buffer_lut_lf, lighting_lut_offset[lut_index >> 2][lut_index & 3] + index).rg;
    return entry.r + entry.g * delta;
}

float LookupLightingLUTUnsigned(int lut_index, float pos) {
    int index = clamp(int(pos * 256.0), 0, 255);
    float delta = pos * 256.0 - float(index);
    return LookupLightingLUT(lut_index, index, delta);
}

float LookupLightingLUTSigned(int lut_index, float pos) {
    int index = clamp(int(pos * 128.0), -128, 127);
    float delta = pos * 128.0 - float(index);
    if (index < 0) index += 256;
    return LookupLightingLUT(lut_index, index, delta);
}

float byteround(float x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec2 byteround(vec2 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec3 byteround(vec3 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec4 byteround(vec4 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

// PICA's LOD formula for 2D textures.
// This LOD formula is the same as the LOD lower limit defined in OpenGL.
// f(x, y) >= max{m_u, m_v, m_w}
// (See OpenGL 4.6 spec, 8.14.1 - Scale Factor and Level-of-Detail)
float getLod(vec2 coord) {
    vec2 d = max(abs(dFdx(coord)), abs(dFdy(coord)));
    return log2(max(d.x, d.y));
}

vec4 shadowTexture(vec2 uv, float w) {
    return vec4(1.0);
}

vec4 shadowTextureCube(vec2 uv, float w) {
    return vec4(1.0);
}

void main() {
vec4 rounded_primary_color = byteround(primary_color);
vec4 primary_fragment_color = vec4(0.0);
vec4 secondary_fragment_color = vec4(0.0);
if (!(gl_FragCoord.x >= float(scissor_x1) && gl_FragCoord.y >= float(scissor_y1) && gl_FragCoord.x < float(scissor_x2) && gl_FragCoord.y < float(scissor_y2))) discard;
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));
vec4 texcolor1 = textureLod(tex1, texcoord1, getLod(texcoord1 * vec2(textureSize(tex1, 0))));
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((const_color[0].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((rounded_primary_color.a) * (texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.a = last_tex_env_out.a;

vec3 color_output_1 = byteround(clamp((const_color[1].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_1 = byteround(clamp((texcolor0.a) + (texcolor1.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_1, alpha_output_1), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;

vec3 color_output_2 = byteround(clamp((const_color[2].rgb) * (texcolor0.rgb) + (last_tex_env_out.rgb) * (vec3(1.0) - (texcolor0.rgb)), vec3(0.0), vec3(1.0)));
float alpha_output_2 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_2, alpha_output_2), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;

vec3 color_output_3 = byteround(clamp((vec3(1.0) - texcolor0.rgb) * (const_color[3].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_3 = byteround(clamp((texcolor0.a) * (const_color[3].a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_3, alpha_output_3), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;

vec3 color_output_4 = byteround(clamp((texcolor0.rgb) * (const_color[4].rgb) + (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_4 = byteround(clamp((1.0 - texcolor0.a) * (const_color[4].a) + (last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_4, alpha_output_4), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_5 = byteround(clamp((rounded_primary_color.rgb) * (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_5 = byteround(clamp((rounded_primary_color.a) * (last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_5, alpha_output_5), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: 59EE12898EA8C6EC, C762E50E18C1A40D
// program: 4940142D60DA9543, 5D764F9A6220D694, C762E50E18C1A40D
// shader: 8B30, ED1A098F9826BCF3

precision highp int;
precision highp float;
precision highp samplerBuffer;
precision highp usampler2D;
precision highp uimage2D;
in vec4 primary_color;
in vec2 texcoord0;
in vec2 texcoord1;
in vec2 texcoord2;
in float texcoord0_w;
in vec4 normquat;
in vec3 view;

#ifndef CITRA_GLES
in vec4 gl_FragCoord;
#endif // CITRA_GLES
out vec4 color;

uniform sampler2D tex0;
uniform sampler2D tex1;
uniform sampler2D tex2;
uniform samplerCube tex_cube;
uniform samplerBuffer texture_buffer_lut_lf;
uniform samplerBuffer texture_buffer_lut_rg;
uniform samplerBuffer texture_buffer_lut_rgba;

#define NUM_TEV_STAGES 6
#define NUM_LIGHTS 8
#define NUM_LIGHTING_SAMPLERS 24

struct LightSrc {
    vec3 specular_0;
    vec3 specular_1;
    vec3 diffuse;
    vec3 ambient;
    vec3 position;
    vec3 spot_direction;
    float dist_atten_bias;
    float dist_atten_scale;
};

layout (std140) uniform shader_data {
    int alphatest_ref;
    float depth_scale;
    float depth_offset;
    float shadow_bias_constant;
    float shadow_bias_linear;
    int scissor_x1;
    int scissor_y1;
    int scissor_x2;
    int scissor_y2;
    int fog_lut_offset;
    int proctex_noise_lut_offset;
    int proctex_color_map_offset;
    int proctex_alpha_map_offset;
    int proctex_lut_offset;
    int proctex_diff_lut_offset;
    float proctex_bias;
    vec3 fog_color;
    vec2 proctex_noise_f;
    vec2 proctex_noise_a;
    vec2 proctex_noise_p;
    vec4 const_color[NUM_TEV_STAGES];
    vec4 tev_combiner_buffer_color;
    vec4 clip_coef;
};

layout (std140) uniform shader_light_data {
    ivec4 lighting_lut_offset[NUM_LIGHTING_SAMPLERS / 4];
    vec3 lighting_global_ambient;
    LightSrc light_src[NUM_LIGHTS];
    float lut_scale_d0;
    float lut_scale_d1;
    float lut_scale_sp;
    float lut_scale_fr;
    float lut_scale_rb;
    float lut_scale_rg;
    float lut_scale_rr;
    int shadow_texture_bias;
};

// Rotate the vector v by the quaternion q
vec3 quaternion_rotate(vec4 q, vec3 v) {
    return v + 2.0 * cross(q.xyz, cross(q.xyz, v) + q.w * v);
}

float LookupLightingLUT(int lut_index, int index, float delta) {
    vec2 entry = texelFetch(texture_buffer_lut_lf, lighting_lut_offset[lut_index >> 2][lut_index & 3] + index).rg;
    return entry.r + entry.g * delta;
}

float LookupLightingLUTUnsigned(int lut_index, float pos) {
    int index = clamp(int(pos * 256.0), 0, 255);
    float delta = pos * 256.0 - float(index);
    return LookupLightingLUT(lut_index, index, delta);
}

float LookupLightingLUTSigned(int lut_index, float pos) {
    int index = clamp(int(pos * 128.0), -128, 127);
    float delta = pos * 128.0 - float(index);
    if (index < 0) index += 256;
    return LookupLightingLUT(lut_index, index, delta);
}

float byteround(float x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec2 byteround(vec2 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec3 byteround(vec3 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec4 byteround(vec4 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

// PICA's LOD formula for 2D textures.
// This LOD formula is the same as the LOD lower limit defined in OpenGL.
// f(x, y) >= max{m_u, m_v, m_w}
// (See OpenGL 4.6 spec, 8.14.1 - Scale Factor and Level-of-Detail)
float getLod(vec2 coord) {
    vec2 d = max(abs(dFdx(coord)), abs(dFdy(coord)));
    return log2(max(d.x, d.y));
}

vec4 shadowTexture(vec2 uv, float w) {
    return vec4(1.0);
}

vec4 shadowTextureCube(vec2 uv, float w) {
    return vec4(1.0);
}

void main() {
vec4 rounded_primary_color = byteround(primary_color);
vec4 primary_fragment_color = vec4(0.0);
vec4 secondary_fragment_color = vec4(0.0);
if (!(gl_FragCoord.x >= float(scissor_x1) && gl_FragCoord.y >= float(scissor_y1) && gl_FragCoord.x < float(scissor_x2) && gl_FragCoord.y < float(scissor_y2))) discard;
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));
vec4 texcolor1 = textureLod(tex1, texcoord1, getLod(texcoord1 * vec2(textureSize(tex1, 0))));
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((const_color[0].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((rounded_primary_color.a) * (texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.a = last_tex_env_out.a;

vec3 color_output_1 = byteround(clamp((const_color[1].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_1 = byteround(clamp((texcolor0.a) + (texcolor1.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_1, alpha_output_1), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;

vec3 color_output_2 = byteround(clamp((const_color[2].rgb) * (texcolor0.rgb) + (last_tex_env_out.rgb) * (vec3(1.0) - (texcolor0.rgb)), vec3(0.0), vec3(1.0)));
float alpha_output_2 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_2, alpha_output_2), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;

vec3 color_output_3 = byteround(clamp((const_color[3].rgb) * (vec3(1.0) - texcolor0.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_3 = byteround(clamp((const_color[3].a) * (1.0 - texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_3, alpha_output_3), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;

vec3 color_output_4 = byteround(clamp((const_color[4].rgb) * (texcolor0.rgb) + (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_4 = byteround(clamp((const_color[4].a) * (texcolor0.a) + (last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_4, alpha_output_4), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_5 = byteround(clamp((rounded_primary_color.rgb) * (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_5 = byteround(clamp((rounded_primary_color.a) * (last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_5, alpha_output_5), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: 9676F6760F57D056, ED1A098F9826BCF3
// program: 4940142D60DA9543, 5D764F9A6220D694, ED1A098F9826BCF3
// shader: 8B30, 3A95132A29F0C1F5

precision highp int;
precision highp float;
precision highp samplerBuffer;
precision highp usampler2D;
precision highp uimage2D;
in vec4 primary_color;
in vec2 texcoord0;
in vec2 texcoord1;
in vec2 texcoord2;
in float texcoord0_w;
in vec4 normquat;
in vec3 view;

#ifndef CITRA_GLES
in vec4 gl_FragCoord;
#endif // CITRA_GLES
out vec4 color;

uniform sampler2D tex0;
uniform sampler2D tex1;
uniform sampler2D tex2;
uniform samplerCube tex_cube;
uniform samplerBuffer texture_buffer_lut_lf;
uniform samplerBuffer texture_buffer_lut_rg;
uniform samplerBuffer texture_buffer_lut_rgba;

#define NUM_TEV_STAGES 6
#define NUM_LIGHTS 8
#define NUM_LIGHTING_SAMPLERS 24

struct LightSrc {
    vec3 specular_0;
    vec3 specular_1;
    vec3 diffuse;
    vec3 ambient;
    vec3 position;
    vec3 spot_direction;
    float dist_atten_bias;
    float dist_atten_scale;
};

layout (std140) uniform shader_data {
    int alphatest_ref;
    float depth_scale;
    float depth_offset;
    float shadow_bias_constant;
    float shadow_bias_linear;
    int scissor_x1;
    int scissor_y1;
    int scissor_x2;
    int scissor_y2;
    int fog_lut_offset;
    int proctex_noise_lut_offset;
    int proctex_color_map_offset;
    int proctex_alpha_map_offset;
    int proctex_lut_offset;
    int proctex_diff_lut_offset;
    float proctex_bias;
    vec3 fog_color;
    vec2 proctex_noise_f;
    vec2 proctex_noise_a;
    vec2 proctex_noise_p;
    vec4 const_color[NUM_TEV_STAGES];
    vec4 tev_combiner_buffer_color;
    vec4 clip_coef;
};

layout (std140) uniform shader_light_data {
    ivec4 lighting_lut_offset[NUM_LIGHTING_SAMPLERS / 4];
    vec3 lighting_global_ambient;
    LightSrc light_src[NUM_LIGHTS];
    float lut_scale_d0;
    float lut_scale_d1;
    float lut_scale_sp;
    float lut_scale_fr;
    float lut_scale_rb;
    float lut_scale_rg;
    float lut_scale_rr;
    int shadow_texture_bias;
};

// Rotate the vector v by the quaternion q
vec3 quaternion_rotate(vec4 q, vec3 v) {
    return v + 2.0 * cross(q.xyz, cross(q.xyz, v) + q.w * v);
}

float LookupLightingLUT(int lut_index, int index, float delta) {
    vec2 entry = texelFetch(texture_buffer_lut_lf, lighting_lut_offset[lut_index >> 2][lut_index & 3] + index).rg;
    return entry.r + entry.g * delta;
}

float LookupLightingLUTUnsigned(int lut_index, float pos) {
    int index = clamp(int(pos * 256.0), 0, 255);
    float delta = pos * 256.0 - float(index);
    return LookupLightingLUT(lut_index, index, delta);
}

float LookupLightingLUTSigned(int lut_index, float pos) {
    int index = clamp(int(pos * 128.0), -128, 127);
    float delta = pos * 128.0 - float(index);
    if (index < 0) index += 256;
    return LookupLightingLUT(lut_index, index, delta);
}

float byteround(float x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec2 byteround(vec2 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec3 byteround(vec3 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec4 byteround(vec4 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

// PICA's LOD formula for 2D textures.
// This LOD formula is the same as the LOD lower limit defined in OpenGL.
// f(x, y) >= max{m_u, m_v, m_w}
// (See OpenGL 4.6 spec, 8.14.1 - Scale Factor and Level-of-Detail)
float getLod(vec2 coord) {
    vec2 d = max(abs(dFdx(coord)), abs(dFdy(coord)));
    return log2(max(d.x, d.y));
}

vec4 shadowTexture(vec2 uv, float w) {
    return vec4(1.0);
}

vec4 shadowTextureCube(vec2 uv, float w) {
    return vec4(1.0);
}

void main() {
vec4 rounded_primary_color = byteround(primary_color);
vec4 primary_fragment_color = vec4(0.0);
vec4 secondary_fragment_color = vec4(0.0);
if (!(gl_FragCoord.x >= float(scissor_x1) && gl_FragCoord.y >= float(scissor_y1) && gl_FragCoord.x < float(scissor_x2) && gl_FragCoord.y < float(scissor_y2))) discard;
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));
vec4 texcolor1 = textureLod(tex1, texcoord1, getLod(texcoord1 * vec2(textureSize(tex1, 0))));
vec4 texcolor2 = textureLod(tex2, texcoord2, getLod(texcoord2 * vec2(textureSize(tex2, 0))));
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((const_color[0].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((rounded_primary_color.a) * (texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.a = last_tex_env_out.a;

vec3 color_output_1 = byteround(clamp((const_color[1].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_1 = byteround(clamp((texcolor2.a) + (texcolor1.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_1, alpha_output_1), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;

vec3 color_output_2 = byteround(clamp((last_tex_env_out.rgb) * (texcolor0.rgb) + (const_color[2].rgb) * (vec3(1.0) - (texcolor0.rgb)), vec3(0.0), vec3(1.0)));
float alpha_output_2 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_2, alpha_output_2), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;

vec3 color_output_3 = byteround(clamp((last_tex_env_out.rgb) * (texcolor2.aaa), vec3(0.0), vec3(1.0)));
float alpha_output_3 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_3, alpha_output_3), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;

vec3 color_output_4 = byteround(clamp((rounded_primary_color.rgb) * (const_color[4].aaa) + (const_color[4].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_4 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_4, alpha_output_4), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_5 = byteround(clamp((last_tex_env_out.rgb) * (texcolor1.rgb) + (combiner_buffer.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_5 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_5, alpha_output_5), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: D74AE6FFD435BE4F, 3A95132A29F0C1F5
// program: 4940142D60DA9543, 5D764F9A6220D694, 3A95132A29F0C1F5
// reference: 259655FBD9BA7005, 4940142D60DA9543
// shader: 8B30, CE85FBCA71FAA47F

precision highp int;
precision highp float;
precision highp samplerBuffer;
precision highp usampler2D;
precision highp uimage2D;
in vec4 primary_color;
in vec2 texcoord0;
in vec2 texcoord1;
in vec2 texcoord2;
in float texcoord0_w;
in vec4 normquat;
in vec3 view;

#ifndef CITRA_GLES
in vec4 gl_FragCoord;
#endif // CITRA_GLES
out vec4 color;

uniform sampler2D tex0;
uniform sampler2D tex1;
uniform sampler2D tex2;
uniform samplerCube tex_cube;
uniform samplerBuffer texture_buffer_lut_lf;
uniform samplerBuffer texture_buffer_lut_rg;
uniform samplerBuffer texture_buffer_lut_rgba;

#define NUM_TEV_STAGES 6
#define NUM_LIGHTS 8
#define NUM_LIGHTING_SAMPLERS 24

struct LightSrc {
    vec3 specular_0;
    vec3 specular_1;
    vec3 diffuse;
    vec3 ambient;
    vec3 position;
    vec3 spot_direction;
    float dist_atten_bias;
    float dist_atten_scale;
};

layout (std140) uniform shader_data {
    int alphatest_ref;
    float depth_scale;
    float depth_offset;
    float shadow_bias_constant;
    float shadow_bias_linear;
    int scissor_x1;
    int scissor_y1;
    int scissor_x2;
    int scissor_y2;
    int fog_lut_offset;
    int proctex_noise_lut_offset;
    int proctex_color_map_offset;
    int proctex_alpha_map_offset;
    int proctex_lut_offset;
    int proctex_diff_lut_offset;
    float proctex_bias;
    vec3 fog_color;
    vec2 proctex_noise_f;
    vec2 proctex_noise_a;
    vec2 proctex_noise_p;
    vec4 const_color[NUM_TEV_STAGES];
    vec4 tev_combiner_buffer_color;
    vec4 clip_coef;
};

layout (std140) uniform shader_light_data {
    ivec4 lighting_lut_offset[NUM_LIGHTING_SAMPLERS / 4];
    vec3 lighting_global_ambient;
    LightSrc light_src[NUM_LIGHTS];
    float lut_scale_d0;
    float lut_scale_d1;
    float lut_scale_sp;
    float lut_scale_fr;
    float lut_scale_rb;
    float lut_scale_rg;
    float lut_scale_rr;
    int shadow_texture_bias;
};

// Rotate the vector v by the quaternion q
vec3 quaternion_rotate(vec4 q, vec3 v) {
    return v + 2.0 * cross(q.xyz, cross(q.xyz, v) + q.w * v);
}

float LookupLightingLUT(int lut_index, int index, float delta) {
    vec2 entry = texelFetch(texture_buffer_lut_lf, lighting_lut_offset[lut_index >> 2][lut_index & 3] + index).rg;
    return entry.r + entry.g * delta;
}

float LookupLightingLUTUnsigned(int lut_index, float pos) {
    int index = clamp(int(pos * 256.0), 0, 255);
    float delta = pos * 256.0 - float(index);
    return LookupLightingLUT(lut_index, index, delta);
}

float LookupLightingLUTSigned(int lut_index, float pos) {
    int index = clamp(int(pos * 128.0), -128, 127);
    float delta = pos * 128.0 - float(index);
    if (index < 0) index += 256;
    return LookupLightingLUT(lut_index, index, delta);
}

float byteround(float x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec2 byteround(vec2 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec3 byteround(vec3 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec4 byteround(vec4 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

// PICA's LOD formula for 2D textures.
// This LOD formula is the same as the LOD lower limit defined in OpenGL.
// f(x, y) >= max{m_u, m_v, m_w}
// (See OpenGL 4.6 spec, 8.14.1 - Scale Factor and Level-of-Detail)
float getLod(vec2 coord) {
    vec2 d = max(abs(dFdx(coord)), abs(dFdy(coord)));
    return log2(max(d.x, d.y));
}

vec4 shadowTexture(vec2 uv, float w) {
    return vec4(1.0);
}

vec4 shadowTextureCube(vec2 uv, float w) {
    return vec4(1.0);
}

void main() {
vec4 rounded_primary_color = byteround(primary_color);
vec4 primary_fragment_color = vec4(0.0);
vec4 secondary_fragment_color = vec4(0.0);
if (!(gl_FragCoord.x >= float(scissor_x1) && gl_FragCoord.y >= float(scissor_y1) && gl_FragCoord.x < float(scissor_x2) && gl_FragCoord.y < float(scissor_y2))) discard;
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));
vec4 texcolor1 = textureLod(tex1, texcoord1, getLod(texcoord1 * vec2(textureSize(tex1, 0))));
vec4 texcolor2 = textureLod(tex2, texcoord2, getLod(texcoord2 * vec2(textureSize(tex2, 0))));
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((const_color[0].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((rounded_primary_color.a) * (texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_1 = byteround(clamp((const_color[1].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_1 = byteround(clamp((texcolor2.a) + (texcolor1.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_1, alpha_output_1), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_2 = byteround(clamp((last_tex_env_out.rgb) * (texcolor0.rgb) + (const_color[2].rgb) * (vec3(1.0) - (texcolor0.rgb)), vec3(0.0), vec3(1.0)));
float alpha_output_2 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_2, alpha_output_2), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_3 = byteround(clamp((const_color[3].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_3 = byteround(clamp((texcolor0.a) * (texcolor2.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_3, alpha_output_3), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_4 = byteround(clamp((last_tex_env_out.rgb) * (texcolor0.rgb) + (texcolor1.rgb) * (vec3(1.0) - (texcolor0.rgb)), vec3(0.0), vec3(1.0)));
float alpha_output_4 = byteround(clamp((last_tex_env_out.a) * (const_color[4].a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_4, alpha_output_4), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_5 = byteround(clamp((last_tex_env_out.rgb) + (const_color[5].aaa), vec3(0.0), vec3(1.0)));
float alpha_output_5 = byteround(clamp((last_tex_env_out.a) * (texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_5, alpha_output_5), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

if (int(last_tex_env_out.a * 255.0) == alphatest_ref) discard;
gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: CF64CE068D930105, CE85FBCA71FAA47F
// program: 4940142D60DA9543, 5D764F9A6220D694, CE85FBCA71FAA47F
// reference: 259655FB826782C1, 4940142D60DA9543
// shader: 8B30, 3F00374DFDA649F7

precision highp int;
precision highp float;
precision highp samplerBuffer;
precision highp usampler2D;
precision highp uimage2D;
in vec4 primary_color;
in vec2 texcoord0;
in vec2 texcoord1;
in vec2 texcoord2;
in float texcoord0_w;
in vec4 normquat;
in vec3 view;

#ifndef CITRA_GLES
in vec4 gl_FragCoord;
#endif // CITRA_GLES
out vec4 color;

uniform sampler2D tex0;
uniform sampler2D tex1;
uniform sampler2D tex2;
uniform samplerCube tex_cube;
uniform samplerBuffer texture_buffer_lut_lf;
uniform samplerBuffer texture_buffer_lut_rg;
uniform samplerBuffer texture_buffer_lut_rgba;

#define NUM_TEV_STAGES 6
#define NUM_LIGHTS 8
#define NUM_LIGHTING_SAMPLERS 24

struct LightSrc {
    vec3 specular_0;
    vec3 specular_1;
    vec3 diffuse;
    vec3 ambient;
    vec3 position;
    vec3 spot_direction;
    float dist_atten_bias;
    float dist_atten_scale;
};

layout (std140) uniform shader_data {
    int alphatest_ref;
    float depth_scale;
    float depth_offset;
    float shadow_bias_constant;
    float shadow_bias_linear;
    int scissor_x1;
    int scissor_y1;
    int scissor_x2;
    int scissor_y2;
    int fog_lut_offset;
    int proctex_noise_lut_offset;
    int proctex_color_map_offset;
    int proctex_alpha_map_offset;
    int proctex_lut_offset;
    int proctex_diff_lut_offset;
    float proctex_bias;
    vec3 fog_color;
    vec2 proctex_noise_f;
    vec2 proctex_noise_a;
    vec2 proctex_noise_p;
    vec4 const_color[NUM_TEV_STAGES];
    vec4 tev_combiner_buffer_color;
    vec4 clip_coef;
};

layout (std140) uniform shader_light_data {
    ivec4 lighting_lut_offset[NUM_LIGHTING_SAMPLERS / 4];
    vec3 lighting_global_ambient;
    LightSrc light_src[NUM_LIGHTS];
    float lut_scale_d0;
    float lut_scale_d1;
    float lut_scale_sp;
    float lut_scale_fr;
    float lut_scale_rb;
    float lut_scale_rg;
    float lut_scale_rr;
    int shadow_texture_bias;
};

// Rotate the vector v by the quaternion q
vec3 quaternion_rotate(vec4 q, vec3 v) {
    return v + 2.0 * cross(q.xyz, cross(q.xyz, v) + q.w * v);
}

float LookupLightingLUT(int lut_index, int index, float delta) {
    vec2 entry = texelFetch(texture_buffer_lut_lf, lighting_lut_offset[lut_index >> 2][lut_index & 3] + index).rg;
    return entry.r + entry.g * delta;
}

float LookupLightingLUTUnsigned(int lut_index, float pos) {
    int index = clamp(int(pos * 256.0), 0, 255);
    float delta = pos * 256.0 - float(index);
    return LookupLightingLUT(lut_index, index, delta);
}

float LookupLightingLUTSigned(int lut_index, float pos) {
    int index = clamp(int(pos * 128.0), -128, 127);
    float delta = pos * 128.0 - float(index);
    if (index < 0) index += 256;
    return LookupLightingLUT(lut_index, index, delta);
}

float byteround(float x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec2 byteround(vec2 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec3 byteround(vec3 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec4 byteround(vec4 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

// PICA's LOD formula for 2D textures.
// This LOD formula is the same as the LOD lower limit defined in OpenGL.
// f(x, y) >= max{m_u, m_v, m_w}
// (See OpenGL 4.6 spec, 8.14.1 - Scale Factor and Level-of-Detail)
float getLod(vec2 coord) {
    vec2 d = max(abs(dFdx(coord)), abs(dFdy(coord)));
    return log2(max(d.x, d.y));
}

vec4 shadowTexture(vec2 uv, float w) {
    return vec4(1.0);
}

vec4 shadowTextureCube(vec2 uv, float w) {
    return vec4(1.0);
}

void main() {
vec4 rounded_primary_color = byteround(primary_color);
vec4 primary_fragment_color = vec4(0.0);
vec4 secondary_fragment_color = vec4(0.0);
if (!(gl_FragCoord.x >= float(scissor_x1) && gl_FragCoord.y >= float(scissor_y1) && gl_FragCoord.x < float(scissor_x2) && gl_FragCoord.y < float(scissor_y2))) discard;
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));
vec4 texcolor1 = textureLod(tex1, texcoord1, getLod(texcoord1 * vec2(textureSize(tex1, 0))));
vec4 texcolor2 = textureLod(tex2, texcoord2, getLod(texcoord2 * vec2(textureSize(tex2, 0))));
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((const_color[0].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((rounded_primary_color.a) * (texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_1 = byteround(clamp((const_color[1].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_1 = byteround(clamp((texcolor2.a) + (texcolor1.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_1, alpha_output_1), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_2 = byteround(clamp((last_tex_env_out.rgb) * (texcolor0.rgb) + (const_color[2].rgb) * (vec3(1.0) - (texcolor0.rgb)), vec3(0.0), vec3(1.0)));
float alpha_output_2 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_2, alpha_output_2), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_3 = byteround(clamp((vec3(1.0) - texcolor0.rgb) * (const_color[3].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_3 = byteround(clamp((texcolor0.a) * (const_color[3].a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_3, alpha_output_3), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_4 = byteround(clamp((texcolor0.rgb) * (const_color[4].rgb) + (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_4 = byteround(clamp((1.0 - texcolor0.a) * (const_color[4].a) + (last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_4, alpha_output_4), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_5 = byteround(clamp((rounded_primary_color.rgb) * (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_5 = byteround(clamp((rounded_primary_color.a) * (last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_5, alpha_output_5), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: 59EE128987713D26, 3F00374DFDA649F7
// program: 4940142D60DA9543, 5D764F9A6220D694, 3F00374DFDA649F7
// shader: 8B30, 36772D79CA74BFA1

precision highp int;
precision highp float;
precision highp samplerBuffer;
precision highp usampler2D;
precision highp uimage2D;
in vec4 primary_color;
in vec2 texcoord0;
in vec2 texcoord1;
in vec2 texcoord2;
in float texcoord0_w;
in vec4 normquat;
in vec3 view;

#ifndef CITRA_GLES
in vec4 gl_FragCoord;
#endif // CITRA_GLES
out vec4 color;

uniform sampler2D tex0;
uniform sampler2D tex1;
uniform sampler2D tex2;
uniform samplerCube tex_cube;
uniform samplerBuffer texture_buffer_lut_lf;
uniform samplerBuffer texture_buffer_lut_rg;
uniform samplerBuffer texture_buffer_lut_rgba;

#define NUM_TEV_STAGES 6
#define NUM_LIGHTS 8
#define NUM_LIGHTING_SAMPLERS 24

struct LightSrc {
    vec3 specular_0;
    vec3 specular_1;
    vec3 diffuse;
    vec3 ambient;
    vec3 position;
    vec3 spot_direction;
    float dist_atten_bias;
    float dist_atten_scale;
};

layout (std140) uniform shader_data {
    int alphatest_ref;
    float depth_scale;
    float depth_offset;
    float shadow_bias_constant;
    float shadow_bias_linear;
    int scissor_x1;
    int scissor_y1;
    int scissor_x2;
    int scissor_y2;
    int fog_lut_offset;
    int proctex_noise_lut_offset;
    int proctex_color_map_offset;
    int proctex_alpha_map_offset;
    int proctex_lut_offset;
    int proctex_diff_lut_offset;
    float proctex_bias;
    vec3 fog_color;
    vec2 proctex_noise_f;
    vec2 proctex_noise_a;
    vec2 proctex_noise_p;
    vec4 const_color[NUM_TEV_STAGES];
    vec4 tev_combiner_buffer_color;
    vec4 clip_coef;
};

layout (std140) uniform shader_light_data {
    ivec4 lighting_lut_offset[NUM_LIGHTING_SAMPLERS / 4];
    vec3 lighting_global_ambient;
    LightSrc light_src[NUM_LIGHTS];
    float lut_scale_d0;
    float lut_scale_d1;
    float lut_scale_sp;
    float lut_scale_fr;
    float lut_scale_rb;
    float lut_scale_rg;
    float lut_scale_rr;
    int shadow_texture_bias;
};

// Rotate the vector v by the quaternion q
vec3 quaternion_rotate(vec4 q, vec3 v) {
    return v + 2.0 * cross(q.xyz, cross(q.xyz, v) + q.w * v);
}

float LookupLightingLUT(int lut_index, int index, float delta) {
    vec2 entry = texelFetch(texture_buffer_lut_lf, lighting_lut_offset[lut_index >> 2][lut_index & 3] + index).rg;
    return entry.r + entry.g * delta;
}

float LookupLightingLUTUnsigned(int lut_index, float pos) {
    int index = clamp(int(pos * 256.0), 0, 255);
    float delta = pos * 256.0 - float(index);
    return LookupLightingLUT(lut_index, index, delta);
}

float LookupLightingLUTSigned(int lut_index, float pos) {
    int index = clamp(int(pos * 128.0), -128, 127);
    float delta = pos * 128.0 - float(index);
    if (index < 0) index += 256;
    return LookupLightingLUT(lut_index, index, delta);
}

float byteround(float x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec2 byteround(vec2 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec3 byteround(vec3 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec4 byteround(vec4 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

// PICA's LOD formula for 2D textures.
// This LOD formula is the same as the LOD lower limit defined in OpenGL.
// f(x, y) >= max{m_u, m_v, m_w}
// (See OpenGL 4.6 spec, 8.14.1 - Scale Factor and Level-of-Detail)
float getLod(vec2 coord) {
    vec2 d = max(abs(dFdx(coord)), abs(dFdy(coord)));
    return log2(max(d.x, d.y));
}

vec4 shadowTexture(vec2 uv, float w) {
    return vec4(1.0);
}

vec4 shadowTextureCube(vec2 uv, float w) {
    return vec4(1.0);
}

void main() {
vec4 rounded_primary_color = byteround(primary_color);
vec4 primary_fragment_color = vec4(0.0);
vec4 secondary_fragment_color = vec4(0.0);
if (!(gl_FragCoord.x >= float(scissor_x1) && gl_FragCoord.y >= float(scissor_y1) && gl_FragCoord.x < float(scissor_x2) && gl_FragCoord.y < float(scissor_y2))) discard;
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));
vec4 texcolor1 = textureLod(tex1, texcoord1, getLod(texcoord1 * vec2(textureSize(tex1, 0))));
vec4 texcolor2 = textureLod(tex2, texcoord2, getLod(texcoord2 * vec2(textureSize(tex2, 0))));
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((const_color[0].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((rounded_primary_color.a) * (texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_1 = byteround(clamp((const_color[1].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_1 = byteround(clamp((texcolor2.a) + (texcolor1.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_1, alpha_output_1), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_2 = byteround(clamp((last_tex_env_out.rgb) * (texcolor0.rgb) + (const_color[2].rgb) * (vec3(1.0) - (texcolor0.rgb)), vec3(0.0), vec3(1.0)));
float alpha_output_2 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_2, alpha_output_2), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_3 = byteround(clamp((const_color[3].rgb) * (vec3(1.0) - texcolor0.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_3 = byteround(clamp((const_color[3].a) * (1.0 - texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_3, alpha_output_3), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_4 = byteround(clamp((const_color[4].rgb) * (texcolor0.rgb) + (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_4 = byteround(clamp((const_color[4].a) * (texcolor0.a) + (last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_4, alpha_output_4), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_5 = byteround(clamp((rounded_primary_color.rgb) * (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_5 = byteround(clamp((rounded_primary_color.a) * (last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_5, alpha_output_5), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: 9676F676068E2B9C, 36772D79CA74BFA1
// program: 4940142D60DA9543, 5D764F9A6220D694, 36772D79CA74BFA1
// program: 4940142D60DA9543, 5D764F9A6220D694, 566076D59903AA2D
// program: 4940142D60DA9543, 5D764F9A6220D694, 34F30E1A3AF1949D
// program: 4940142D60DA9543, 5D764F9A6220D694, 192055C797D85EC4
// program: CA388C44D4F5C19E, AD7922A63ED54CA7, 4BC2BF19C08722EB
// program: CA388C44D4F5C19E, AD7922A63ED54CA7, 894D2A97E107BF7E
// program: 4940142D60DA9543, 5D764F9A6220D694, 25070A41D4D2F8A2
// program: 4940142D60DA9543, 5D764F9A6220D694, 3CD89482FB31182E
// shader: 8B30, 30DFA7C88443BB52

precision highp int;
precision highp float;
precision highp samplerBuffer;
precision highp usampler2D;
precision highp uimage2D;
in vec4 primary_color;
in vec2 texcoord0;
in vec2 texcoord1;
in vec2 texcoord2;
in float texcoord0_w;
in vec4 normquat;
in vec3 view;

#ifndef CITRA_GLES
in vec4 gl_FragCoord;
#endif // CITRA_GLES
out vec4 color;

uniform sampler2D tex0;
uniform sampler2D tex1;
uniform sampler2D tex2;
uniform samplerCube tex_cube;
uniform samplerBuffer texture_buffer_lut_lf;
uniform samplerBuffer texture_buffer_lut_rg;
uniform samplerBuffer texture_buffer_lut_rgba;

#define NUM_TEV_STAGES 6
#define NUM_LIGHTS 8
#define NUM_LIGHTING_SAMPLERS 24

struct LightSrc {
    vec3 specular_0;
    vec3 specular_1;
    vec3 diffuse;
    vec3 ambient;
    vec3 position;
    vec3 spot_direction;
    float dist_atten_bias;
    float dist_atten_scale;
};

layout (std140) uniform shader_data {
    int alphatest_ref;
    float depth_scale;
    float depth_offset;
    float shadow_bias_constant;
    float shadow_bias_linear;
    int scissor_x1;
    int scissor_y1;
    int scissor_x2;
    int scissor_y2;
    int fog_lut_offset;
    int proctex_noise_lut_offset;
    int proctex_color_map_offset;
    int proctex_alpha_map_offset;
    int proctex_lut_offset;
    int proctex_diff_lut_offset;
    float proctex_bias;
    vec3 fog_color;
    vec2 proctex_noise_f;
    vec2 proctex_noise_a;
    vec2 proctex_noise_p;
    vec4 const_color[NUM_TEV_STAGES];
    vec4 tev_combiner_buffer_color;
    vec4 clip_coef;
};

layout (std140) uniform shader_light_data {
    ivec4 lighting_lut_offset[NUM_LIGHTING_SAMPLERS / 4];
    vec3 lighting_global_ambient;
    LightSrc light_src[NUM_LIGHTS];
    float lut_scale_d0;
    float lut_scale_d1;
    float lut_scale_sp;
    float lut_scale_fr;
    float lut_scale_rb;
    float lut_scale_rg;
    float lut_scale_rr;
    int shadow_texture_bias;
};

// Rotate the vector v by the quaternion q
vec3 quaternion_rotate(vec4 q, vec3 v) {
    return v + 2.0 * cross(q.xyz, cross(q.xyz, v) + q.w * v);
}

float LookupLightingLUT(int lut_index, int index, float delta) {
    vec2 entry = texelFetch(texture_buffer_lut_lf, lighting_lut_offset[lut_index >> 2][lut_index & 3] + index).rg;
    return entry.r + entry.g * delta;
}

float LookupLightingLUTUnsigned(int lut_index, float pos) {
    int index = clamp(int(pos * 256.0), 0, 255);
    float delta = pos * 256.0 - float(index);
    return LookupLightingLUT(lut_index, index, delta);
}

float LookupLightingLUTSigned(int lut_index, float pos) {
    int index = clamp(int(pos * 128.0), -128, 127);
    float delta = pos * 128.0 - float(index);
    if (index < 0) index += 256;
    return LookupLightingLUT(lut_index, index, delta);
}

float byteround(float x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec2 byteround(vec2 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec3 byteround(vec3 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec4 byteround(vec4 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

// PICA's LOD formula for 2D textures.
// This LOD formula is the same as the LOD lower limit defined in OpenGL.
// f(x, y) >= max{m_u, m_v, m_w}
// (See OpenGL 4.6 spec, 8.14.1 - Scale Factor and Level-of-Detail)
float getLod(vec2 coord) {
    vec2 d = max(abs(dFdx(coord)), abs(dFdy(coord)));
    return log2(max(d.x, d.y));
}

vec4 shadowTexture(vec2 uv, float w) {
    return vec4(1.0);
}

vec4 shadowTextureCube(vec2 uv, float w) {
    return vec4(1.0);
}

void main() {
vec4 rounded_primary_color = byteround(primary_color);
vec4 primary_fragment_color = vec4(0.0);
vec4 secondary_fragment_color = vec4(0.0);
if (!(gl_FragCoord.x >= float(scissor_x1) && gl_FragCoord.y >= float(scissor_y1) && gl_FragCoord.x < float(scissor_x2) && gl_FragCoord.y < float(scissor_y2))) discard;
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));
vec4 texcolor1 = textureLod(tex1, texcoord1, getLod(texcoord1 * vec2(textureSize(tex1, 0))));
vec4 texcolor2 = textureLod(tex2, texcoord2, getLod(texcoord2 * vec2(textureSize(tex2, 0))));
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((rounded_primary_color.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp(min((texcolor2.a) + (texcolor0.a), 1.0) * (texcolor1.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.a = last_tex_env_out.a;

vec3 color_output_1 = byteround(clamp((const_color[1].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_1 = byteround(clamp((texcolor2.a) + (texcolor1.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_1, alpha_output_1), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_2 = byteround(clamp((const_color[2].rgb) * (texcolor0.rgb) + (last_tex_env_out.rgb) * (vec3(1.0) - (texcolor0.rgb)), vec3(0.0), vec3(1.0)));
float alpha_output_2 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_2, alpha_output_2), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_3 = byteround(clamp((texcolor0.rgb) + (rounded_primary_color.aaa), vec3(0.0), vec3(1.0)));
float alpha_output_3 = byteround(clamp((texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_3, alpha_output_3), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;

vec3 color_output_4 = byteround(clamp((const_color[4].aaa) * (last_tex_env_out.rgb) + (const_color[4].rgb) * (vec3(1.0) - (last_tex_env_out.rgb)), vec3(0.0), vec3(1.0)));
float alpha_output_4 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_4, alpha_output_4), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_5 = byteround(clamp((last_tex_env_out.rgb) * (rounded_primary_color.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_5 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_5, alpha_output_5), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: 4BD1229FDDC2EE34, 30DFA7C88443BB52
// program: 4940142D60DA9543, 5D764F9A6220D694, 30DFA7C88443BB52
// shader: 8B30, 4538E17A2CA79416

precision highp int;
precision highp float;
precision highp samplerBuffer;
precision highp usampler2D;
precision highp uimage2D;
in vec4 primary_color;
in vec2 texcoord0;
in vec2 texcoord1;
in vec2 texcoord2;
in float texcoord0_w;
in vec4 normquat;
in vec3 view;

#ifndef CITRA_GLES
in vec4 gl_FragCoord;
#endif // CITRA_GLES
out vec4 color;

uniform sampler2D tex0;
uniform sampler2D tex1;
uniform sampler2D tex2;
uniform samplerCube tex_cube;
uniform samplerBuffer texture_buffer_lut_lf;
uniform samplerBuffer texture_buffer_lut_rg;
uniform samplerBuffer texture_buffer_lut_rgba;

#define NUM_TEV_STAGES 6
#define NUM_LIGHTS 8
#define NUM_LIGHTING_SAMPLERS 24

struct LightSrc {
    vec3 specular_0;
    vec3 specular_1;
    vec3 diffuse;
    vec3 ambient;
    vec3 position;
    vec3 spot_direction;
    float dist_atten_bias;
    float dist_atten_scale;
};

layout (std140) uniform shader_data {
    int alphatest_ref;
    float depth_scale;
    float depth_offset;
    float shadow_bias_constant;
    float shadow_bias_linear;
    int scissor_x1;
    int scissor_y1;
    int scissor_x2;
    int scissor_y2;
    int fog_lut_offset;
    int proctex_noise_lut_offset;
    int proctex_color_map_offset;
    int proctex_alpha_map_offset;
    int proctex_lut_offset;
    int proctex_diff_lut_offset;
    float proctex_bias;
    vec3 fog_color;
    vec2 proctex_noise_f;
    vec2 proctex_noise_a;
    vec2 proctex_noise_p;
    vec4 const_color[NUM_TEV_STAGES];
    vec4 tev_combiner_buffer_color;
    vec4 clip_coef;
};

layout (std140) uniform shader_light_data {
    ivec4 lighting_lut_offset[NUM_LIGHTING_SAMPLERS / 4];
    vec3 lighting_global_ambient;
    LightSrc light_src[NUM_LIGHTS];
    float lut_scale_d0;
    float lut_scale_d1;
    float lut_scale_sp;
    float lut_scale_fr;
    float lut_scale_rb;
    float lut_scale_rg;
    float lut_scale_rr;
    int shadow_texture_bias;
};

// Rotate the vector v by the quaternion q
vec3 quaternion_rotate(vec4 q, vec3 v) {
    return v + 2.0 * cross(q.xyz, cross(q.xyz, v) + q.w * v);
}

float LookupLightingLUT(int lut_index, int index, float delta) {
    vec2 entry = texelFetch(texture_buffer_lut_lf, lighting_lut_offset[lut_index >> 2][lut_index & 3] + index).rg;
    return entry.r + entry.g * delta;
}

float LookupLightingLUTUnsigned(int lut_index, float pos) {
    int index = clamp(int(pos * 256.0), 0, 255);
    float delta = pos * 256.0 - float(index);
    return LookupLightingLUT(lut_index, index, delta);
}

float LookupLightingLUTSigned(int lut_index, float pos) {
    int index = clamp(int(pos * 128.0), -128, 127);
    float delta = pos * 128.0 - float(index);
    if (index < 0) index += 256;
    return LookupLightingLUT(lut_index, index, delta);
}

float byteround(float x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec2 byteround(vec2 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec3 byteround(vec3 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec4 byteround(vec4 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

// PICA's LOD formula for 2D textures.
// This LOD formula is the same as the LOD lower limit defined in OpenGL.
// f(x, y) >= max{m_u, m_v, m_w}
// (See OpenGL 4.6 spec, 8.14.1 - Scale Factor and Level-of-Detail)
float getLod(vec2 coord) {
    vec2 d = max(abs(dFdx(coord)), abs(dFdy(coord)));
    return log2(max(d.x, d.y));
}

vec4 shadowTexture(vec2 uv, float w) {
    return vec4(1.0);
}

vec4 shadowTextureCube(vec2 uv, float w) {
    return vec4(1.0);
}

void main() {
vec4 rounded_primary_color = byteround(primary_color);
vec4 primary_fragment_color = vec4(0.0);
vec4 secondary_fragment_color = vec4(0.0);
if (!(gl_FragCoord.x >= float(scissor_x1) && gl_FragCoord.y >= float(scissor_y1) && gl_FragCoord.x < float(scissor_x2) && gl_FragCoord.y < float(scissor_y2))) discard;
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));
vec4 texcolor1 = textureLod(tex1, texcoord1, getLod(texcoord1 * vec2(textureSize(tex1, 0))));
vec4 texcolor2 = textureLod(tex2, texcoord2, getLod(texcoord2 * vec2(textureSize(tex2, 0))));
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((rounded_primary_color.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp(min((texcolor2.a) + (texcolor0.a), 1.0) * (texcolor1.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.a = last_tex_env_out.a;

vec3 color_output_1 = byteround(clamp((const_color[1].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_1 = byteround(clamp((texcolor2.a) + (texcolor1.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_1, alpha_output_1), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_2 = byteround(clamp((const_color[2].rgb) * (texcolor0.rgb) + (last_tex_env_out.rgb) * (vec3(1.0) - (texcolor0.rgb)), vec3(0.0), vec3(1.0)));
float alpha_output_2 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_2, alpha_output_2), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_3 = byteround(clamp((const_color[3].rgb) * (vec3(1.0) - texcolor0.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_3 = byteround(clamp((const_color[3].a) * (1.0 - texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_3, alpha_output_3), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;

vec3 color_output_4 = byteround(clamp((const_color[4].rgb) * (texcolor0.rgb) + (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_4 = byteround(clamp((const_color[4].a) * (texcolor0.a) + (last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_4, alpha_output_4), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_5 = byteround(clamp((rounded_primary_color.rgb) * (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_5 = byteround(clamp((rounded_primary_color.a) * (last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_5, alpha_output_5), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: E0B7B968BEBEBA90, 4538E17A2CA79416
// program: 4940142D60DA9543, 5D764F9A6220D694, 4538E17A2CA79416
// shader: 8B30, AEC0326D0FF8012B

precision highp int;
precision highp float;
precision highp samplerBuffer;
precision highp usampler2D;
precision highp uimage2D;
in vec4 primary_color;
in vec2 texcoord0;
in vec2 texcoord1;
in vec2 texcoord2;
in float texcoord0_w;
in vec4 normquat;
in vec3 view;

#ifndef CITRA_GLES
in vec4 gl_FragCoord;
#endif // CITRA_GLES
out vec4 color;

uniform sampler2D tex0;
uniform sampler2D tex1;
uniform sampler2D tex2;
uniform samplerCube tex_cube;
uniform samplerBuffer texture_buffer_lut_lf;
uniform samplerBuffer texture_buffer_lut_rg;
uniform samplerBuffer texture_buffer_lut_rgba;

#define NUM_TEV_STAGES 6
#define NUM_LIGHTS 8
#define NUM_LIGHTING_SAMPLERS 24

struct LightSrc {
    vec3 specular_0;
    vec3 specular_1;
    vec3 diffuse;
    vec3 ambient;
    vec3 position;
    vec3 spot_direction;
    float dist_atten_bias;
    float dist_atten_scale;
};

layout (std140) uniform shader_data {
    int alphatest_ref;
    float depth_scale;
    float depth_offset;
    float shadow_bias_constant;
    float shadow_bias_linear;
    int scissor_x1;
    int scissor_y1;
    int scissor_x2;
    int scissor_y2;
    int fog_lut_offset;
    int proctex_noise_lut_offset;
    int proctex_color_map_offset;
    int proctex_alpha_map_offset;
    int proctex_lut_offset;
    int proctex_diff_lut_offset;
    float proctex_bias;
    vec3 fog_color;
    vec2 proctex_noise_f;
    vec2 proctex_noise_a;
    vec2 proctex_noise_p;
    vec4 const_color[NUM_TEV_STAGES];
    vec4 tev_combiner_buffer_color;
    vec4 clip_coef;
};

layout (std140) uniform shader_light_data {
    ivec4 lighting_lut_offset[NUM_LIGHTING_SAMPLERS / 4];
    vec3 lighting_global_ambient;
    LightSrc light_src[NUM_LIGHTS];
    float lut_scale_d0;
    float lut_scale_d1;
    float lut_scale_sp;
    float lut_scale_fr;
    float lut_scale_rb;
    float lut_scale_rg;
    float lut_scale_rr;
    int shadow_texture_bias;
};

// Rotate the vector v by the quaternion q
vec3 quaternion_rotate(vec4 q, vec3 v) {
    return v + 2.0 * cross(q.xyz, cross(q.xyz, v) + q.w * v);
}

float LookupLightingLUT(int lut_index, int index, float delta) {
    vec2 entry = texelFetch(texture_buffer_lut_lf, lighting_lut_offset[lut_index >> 2][lut_index & 3] + index).rg;
    return entry.r + entry.g * delta;
}

float LookupLightingLUTUnsigned(int lut_index, float pos) {
    int index = clamp(int(pos * 256.0), 0, 255);
    float delta = pos * 256.0 - float(index);
    return LookupLightingLUT(lut_index, index, delta);
}

float LookupLightingLUTSigned(int lut_index, float pos) {
    int index = clamp(int(pos * 128.0), -128, 127);
    float delta = pos * 128.0 - float(index);
    if (index < 0) index += 256;
    return LookupLightingLUT(lut_index, index, delta);
}

float byteround(float x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec2 byteround(vec2 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec3 byteround(vec3 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec4 byteround(vec4 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

// PICA's LOD formula for 2D textures.
// This LOD formula is the same as the LOD lower limit defined in OpenGL.
// f(x, y) >= max{m_u, m_v, m_w}
// (See OpenGL 4.6 spec, 8.14.1 - Scale Factor and Level-of-Detail)
float getLod(vec2 coord) {
    vec2 d = max(abs(dFdx(coord)), abs(dFdy(coord)));
    return log2(max(d.x, d.y));
}

vec4 shadowTexture(vec2 uv, float w) {
    return vec4(1.0);
}

vec4 shadowTextureCube(vec2 uv, float w) {
    return vec4(1.0);
}

void main() {
vec4 rounded_primary_color = byteround(primary_color);
vec4 primary_fragment_color = vec4(0.0);
vec4 secondary_fragment_color = vec4(0.0);
if (!(gl_FragCoord.x >= float(scissor_x1) && gl_FragCoord.y >= float(scissor_y1) && gl_FragCoord.x < float(scissor_x2) && gl_FragCoord.y < float(scissor_y2))) discard;
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));
vec4 texcolor1 = textureLod(tex1, texcoord1, getLod(texcoord1 * vec2(textureSize(tex1, 0))));
vec4 texcolor2 = textureLod(tex2, texcoord2, getLod(texcoord2 * vec2(textureSize(tex2, 0))));
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((rounded_primary_color.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp(min((texcolor2.a) + (texcolor0.a), 1.0) * (texcolor1.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.a = last_tex_env_out.a;

vec3 color_output_1 = byteround(clamp((const_color[1].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_1 = byteround(clamp((texcolor0.a) + (texcolor1.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_1, alpha_output_1), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;

vec3 color_output_2 = byteround(clamp((const_color[2].rgb) * (texcolor0.rgb) + (last_tex_env_out.rgb) * (vec3(1.0) - (texcolor0.rgb)), vec3(0.0), vec3(1.0)));
float alpha_output_2 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_2, alpha_output_2), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;

vec3 color_output_3 = byteround(clamp((last_tex_env_out.rgb) * (texcolor0.aaa), vec3(0.0), vec3(1.0)));
float alpha_output_3 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_3, alpha_output_3), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;

vec3 color_output_4 = byteround(clamp((rounded_primary_color.rgb) * (const_color[4].aaa) + (const_color[4].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_4 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_4, alpha_output_4), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_5 = byteround(clamp((last_tex_env_out.rgb) * (texcolor1.rgb) + (combiner_buffer.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_5 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_5, alpha_output_5), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: A18BA9E17C18DC5C, AEC0326D0FF8012B
// program: 4940142D60DA9543, 5D764F9A6220D694, AEC0326D0FF8012B
// shader: 8B30, 5E24129746B84A11

precision highp int;
precision highp float;
precision highp samplerBuffer;
precision highp usampler2D;
precision highp uimage2D;
in vec4 primary_color;
in vec2 texcoord0;
in vec2 texcoord1;
in vec2 texcoord2;
in float texcoord0_w;
in vec4 normquat;
in vec3 view;

#ifndef CITRA_GLES
in vec4 gl_FragCoord;
#endif // CITRA_GLES
out vec4 color;

uniform sampler2D tex0;
uniform sampler2D tex1;
uniform sampler2D tex2;
uniform samplerCube tex_cube;
uniform samplerBuffer texture_buffer_lut_lf;
uniform samplerBuffer texture_buffer_lut_rg;
uniform samplerBuffer texture_buffer_lut_rgba;

#define NUM_TEV_STAGES 6
#define NUM_LIGHTS 8
#define NUM_LIGHTING_SAMPLERS 24

struct LightSrc {
    vec3 specular_0;
    vec3 specular_1;
    vec3 diffuse;
    vec3 ambient;
    vec3 position;
    vec3 spot_direction;
    float dist_atten_bias;
    float dist_atten_scale;
};

layout (std140) uniform shader_data {
    int alphatest_ref;
    float depth_scale;
    float depth_offset;
    float shadow_bias_constant;
    float shadow_bias_linear;
    int scissor_x1;
    int scissor_y1;
    int scissor_x2;
    int scissor_y2;
    int fog_lut_offset;
    int proctex_noise_lut_offset;
    int proctex_color_map_offset;
    int proctex_alpha_map_offset;
    int proctex_lut_offset;
    int proctex_diff_lut_offset;
    float proctex_bias;
    vec3 fog_color;
    vec2 proctex_noise_f;
    vec2 proctex_noise_a;
    vec2 proctex_noise_p;
    vec4 const_color[NUM_TEV_STAGES];
    vec4 tev_combiner_buffer_color;
    vec4 clip_coef;
};

layout (std140) uniform shader_light_data {
    ivec4 lighting_lut_offset[NUM_LIGHTING_SAMPLERS / 4];
    vec3 lighting_global_ambient;
    LightSrc light_src[NUM_LIGHTS];
    float lut_scale_d0;
    float lut_scale_d1;
    float lut_scale_sp;
    float lut_scale_fr;
    float lut_scale_rb;
    float lut_scale_rg;
    float lut_scale_rr;
    int shadow_texture_bias;
};

// Rotate the vector v by the quaternion q
vec3 quaternion_rotate(vec4 q, vec3 v) {
    return v + 2.0 * cross(q.xyz, cross(q.xyz, v) + q.w * v);
}

float LookupLightingLUT(int lut_index, int index, float delta) {
    vec2 entry = texelFetch(texture_buffer_lut_lf, lighting_lut_offset[lut_index >> 2][lut_index & 3] + index).rg;
    return entry.r + entry.g * delta;
}

float LookupLightingLUTUnsigned(int lut_index, float pos) {
    int index = clamp(int(pos * 256.0), 0, 255);
    float delta = pos * 256.0 - float(index);
    return LookupLightingLUT(lut_index, index, delta);
}

float LookupLightingLUTSigned(int lut_index, float pos) {
    int index = clamp(int(pos * 128.0), -128, 127);
    float delta = pos * 128.0 - float(index);
    if (index < 0) index += 256;
    return LookupLightingLUT(lut_index, index, delta);
}

float byteround(float x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec2 byteround(vec2 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec3 byteround(vec3 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec4 byteround(vec4 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

// PICA's LOD formula for 2D textures.
// This LOD formula is the same as the LOD lower limit defined in OpenGL.
// f(x, y) >= max{m_u, m_v, m_w}
// (See OpenGL 4.6 spec, 8.14.1 - Scale Factor and Level-of-Detail)
float getLod(vec2 coord) {
    vec2 d = max(abs(dFdx(coord)), abs(dFdy(coord)));
    return log2(max(d.x, d.y));
}

vec4 shadowTexture(vec2 uv, float w) {
    return vec4(1.0);
}

vec4 shadowTextureCube(vec2 uv, float w) {
    return vec4(1.0);
}

void main() {
vec4 rounded_primary_color = byteround(primary_color);
vec4 primary_fragment_color = vec4(0.0);
vec4 secondary_fragment_color = vec4(0.0);
if (!(gl_FragCoord.x >= float(scissor_x1) && gl_FragCoord.y >= float(scissor_y1) && gl_FragCoord.x < float(scissor_x2) && gl_FragCoord.y < float(scissor_y2))) discard;
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));
vec4 texcolor1 = textureLod(tex1, texcoord1, getLod(texcoord1 * vec2(textureSize(tex1, 0))));
vec4 texcolor2 = textureLod(tex2, texcoord2, getLod(texcoord2 * vec2(textureSize(tex2, 0))));
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((rounded_primary_color.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp(min((texcolor2.a) + (texcolor0.a), 1.0) * (texcolor1.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.a = last_tex_env_out.a;

vec3 color_output_1 = byteround(clamp((const_color[1].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_1 = byteround(clamp((texcolor0.a) + (texcolor1.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_1, alpha_output_1), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;

vec3 color_output_2 = byteround(clamp((const_color[2].rgb) * (texcolor0.rgb) + (last_tex_env_out.rgb) * (vec3(1.0) - (texcolor0.rgb)), vec3(0.0), vec3(1.0)));
float alpha_output_2 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_2, alpha_output_2), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;

vec3 color_output_3 = byteround(clamp((vec3(1.0) - texcolor0.rgb) * (const_color[3].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_3 = byteround(clamp((texcolor0.a) * (const_color[3].a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_3, alpha_output_3), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;

vec3 color_output_4 = byteround(clamp((texcolor0.rgb) * (const_color[4].rgb) + (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_4 = byteround(clamp((1.0 - texcolor0.a) * (const_color[4].a) + (last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_4, alpha_output_4), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_5 = byteround(clamp((rounded_primary_color.rgb) * (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_5 = byteround(clamp((rounded_primary_color.a) * (last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_5, alpha_output_5), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: 2F2F5D977C49055A, 5E24129746B84A11
// program: 4940142D60DA9543, 5D764F9A6220D694, 5E24129746B84A11
// shader: 8B30, 566076D50FE2BDC0

precision highp int;
precision highp float;
precision highp samplerBuffer;
precision highp usampler2D;
precision highp uimage2D;
in vec4 primary_color;
in vec2 texcoord0;
in vec2 texcoord1;
in vec2 texcoord2;
in float texcoord0_w;
in vec4 normquat;
in vec3 view;

#ifndef CITRA_GLES
in vec4 gl_FragCoord;
#endif // CITRA_GLES
out vec4 color;

uniform sampler2D tex0;
uniform sampler2D tex1;
uniform sampler2D tex2;
uniform samplerCube tex_cube;
uniform samplerBuffer texture_buffer_lut_lf;
uniform samplerBuffer texture_buffer_lut_rg;
uniform samplerBuffer texture_buffer_lut_rgba;

#define NUM_TEV_STAGES 6
#define NUM_LIGHTS 8
#define NUM_LIGHTING_SAMPLERS 24

struct LightSrc {
    vec3 specular_0;
    vec3 specular_1;
    vec3 diffuse;
    vec3 ambient;
    vec3 position;
    vec3 spot_direction;
    float dist_atten_bias;
    float dist_atten_scale;
};

layout (std140) uniform shader_data {
    int alphatest_ref;
    float depth_scale;
    float depth_offset;
    float shadow_bias_constant;
    float shadow_bias_linear;
    int scissor_x1;
    int scissor_y1;
    int scissor_x2;
    int scissor_y2;
    int fog_lut_offset;
    int proctex_noise_lut_offset;
    int proctex_color_map_offset;
    int proctex_alpha_map_offset;
    int proctex_lut_offset;
    int proctex_diff_lut_offset;
    float proctex_bias;
    vec3 fog_color;
    vec2 proctex_noise_f;
    vec2 proctex_noise_a;
    vec2 proctex_noise_p;
    vec4 const_color[NUM_TEV_STAGES];
    vec4 tev_combiner_buffer_color;
    vec4 clip_coef;
};

layout (std140) uniform shader_light_data {
    ivec4 lighting_lut_offset[NUM_LIGHTING_SAMPLERS / 4];
    vec3 lighting_global_ambient;
    LightSrc light_src[NUM_LIGHTS];
    float lut_scale_d0;
    float lut_scale_d1;
    float lut_scale_sp;
    float lut_scale_fr;
    float lut_scale_rb;
    float lut_scale_rg;
    float lut_scale_rr;
    int shadow_texture_bias;
};

// Rotate the vector v by the quaternion q
vec3 quaternion_rotate(vec4 q, vec3 v) {
    return v + 2.0 * cross(q.xyz, cross(q.xyz, v) + q.w * v);
}

float LookupLightingLUT(int lut_index, int index, float delta) {
    vec2 entry = texelFetch(texture_buffer_lut_lf, lighting_lut_offset[lut_index >> 2][lut_index & 3] + index).rg;
    return entry.r + entry.g * delta;
}

float LookupLightingLUTUnsigned(int lut_index, float pos) {
    int index = clamp(int(pos * 256.0), 0, 255);
    float delta = pos * 256.0 - float(index);
    return LookupLightingLUT(lut_index, index, delta);
}

float LookupLightingLUTSigned(int lut_index, float pos) {
    int index = clamp(int(pos * 128.0), -128, 127);
    float delta = pos * 128.0 - float(index);
    if (index < 0) index += 256;
    return LookupLightingLUT(lut_index, index, delta);
}

float byteround(float x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec2 byteround(vec2 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec3 byteround(vec3 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec4 byteround(vec4 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

// PICA's LOD formula for 2D textures.
// This LOD formula is the same as the LOD lower limit defined in OpenGL.
// f(x, y) >= max{m_u, m_v, m_w}
// (See OpenGL 4.6 spec, 8.14.1 - Scale Factor and Level-of-Detail)
float getLod(vec2 coord) {
    vec2 d = max(abs(dFdx(coord)), abs(dFdy(coord)));
    return log2(max(d.x, d.y));
}

vec4 shadowTexture(vec2 uv, float w) {
    return vec4(1.0);
}

vec4 shadowTextureCube(vec2 uv, float w) {
    return vec4(1.0);
}

void main() {
vec4 rounded_primary_color = byteround(primary_color);
vec4 primary_fragment_color = vec4(0.0);
vec4 secondary_fragment_color = vec4(0.0);
if (!(gl_FragCoord.x >= float(scissor_x1) && gl_FragCoord.y >= float(scissor_y1) && gl_FragCoord.x < float(scissor_x2) && gl_FragCoord.y < float(scissor_y2))) discard;
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));
vec4 texcolor1 = textureLod(tex1, texcoord1, getLod(texcoord1 * vec2(textureSize(tex1, 0))));
vec4 texcolor2 = textureLod(tex2, texcoord2, getLod(texcoord2 * vec2(textureSize(tex2, 0))));
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((rounded_primary_color.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp(min((texcolor2.a) + (texcolor0.a), 1.0) * (texcolor1.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.a = last_tex_env_out.a;

vec3 color_output_1 = byteround(clamp((const_color[1].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_1 = byteround(clamp((texcolor0.a) + (texcolor1.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_1, alpha_output_1), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;

vec3 color_output_2 = byteround(clamp((const_color[2].rgb) * (texcolor0.rgb) + (last_tex_env_out.rgb) * (vec3(1.0) - (texcolor0.rgb)), vec3(0.0), vec3(1.0)));
float alpha_output_2 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_2, alpha_output_2), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;

vec3 color_output_3 = byteround(clamp((const_color[3].rgb) * (vec3(1.0) - texcolor0.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_3 = byteround(clamp((const_color[3].a) * (1.0 - texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_3, alpha_output_3), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;

vec3 color_output_4 = byteround(clamp((const_color[4].rgb) * (texcolor0.rgb) + (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_4 = byteround(clamp((const_color[4].a) * (texcolor0.a) + (last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_4, alpha_output_4), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_5 = byteround(clamp((rounded_primary_color.rgb) * (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_5 = byteround(clamp((rounded_primary_color.a) * (last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_5, alpha_output_5), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: E0B7B968FDB613E0, 566076D50FE2BDC0
// program: 4940142D60DA9543, 5D764F9A6220D694, 566076D50FE2BDC0
// shader: 8B30, 81DB2153F69E5EB8

precision highp int;
precision highp float;
precision highp samplerBuffer;
precision highp usampler2D;
precision highp uimage2D;
in vec4 primary_color;
in vec2 texcoord0;
in vec2 texcoord1;
in vec2 texcoord2;
in float texcoord0_w;
in vec4 normquat;
in vec3 view;

#ifndef CITRA_GLES
in vec4 gl_FragCoord;
#endif // CITRA_GLES
out vec4 color;

uniform sampler2D tex0;
uniform sampler2D tex1;
uniform sampler2D tex2;
uniform samplerCube tex_cube;
uniform samplerBuffer texture_buffer_lut_lf;
uniform samplerBuffer texture_buffer_lut_rg;
uniform samplerBuffer texture_buffer_lut_rgba;

#define NUM_TEV_STAGES 6
#define NUM_LIGHTS 8
#define NUM_LIGHTING_SAMPLERS 24

struct LightSrc {
    vec3 specular_0;
    vec3 specular_1;
    vec3 diffuse;
    vec3 ambient;
    vec3 position;
    vec3 spot_direction;
    float dist_atten_bias;
    float dist_atten_scale;
};

layout (std140) uniform shader_data {
    int alphatest_ref;
    float depth_scale;
    float depth_offset;
    float shadow_bias_constant;
    float shadow_bias_linear;
    int scissor_x1;
    int scissor_y1;
    int scissor_x2;
    int scissor_y2;
    int fog_lut_offset;
    int proctex_noise_lut_offset;
    int proctex_color_map_offset;
    int proctex_alpha_map_offset;
    int proctex_lut_offset;
    int proctex_diff_lut_offset;
    float proctex_bias;
    vec3 fog_color;
    vec2 proctex_noise_f;
    vec2 proctex_noise_a;
    vec2 proctex_noise_p;
    vec4 const_color[NUM_TEV_STAGES];
    vec4 tev_combiner_buffer_color;
    vec4 clip_coef;
};

layout (std140) uniform shader_light_data {
    ivec4 lighting_lut_offset[NUM_LIGHTING_SAMPLERS / 4];
    vec3 lighting_global_ambient;
    LightSrc light_src[NUM_LIGHTS];
    float lut_scale_d0;
    float lut_scale_d1;
    float lut_scale_sp;
    float lut_scale_fr;
    float lut_scale_rb;
    float lut_scale_rg;
    float lut_scale_rr;
    int shadow_texture_bias;
};

// Rotate the vector v by the quaternion q
vec3 quaternion_rotate(vec4 q, vec3 v) {
    return v + 2.0 * cross(q.xyz, cross(q.xyz, v) + q.w * v);
}

float LookupLightingLUT(int lut_index, int index, float delta) {
    vec2 entry = texelFetch(texture_buffer_lut_lf, lighting_lut_offset[lut_index >> 2][lut_index & 3] + index).rg;
    return entry.r + entry.g * delta;
}

float LookupLightingLUTUnsigned(int lut_index, float pos) {
    int index = clamp(int(pos * 256.0), 0, 255);
    float delta = pos * 256.0 - float(index);
    return LookupLightingLUT(lut_index, index, delta);
}

float LookupLightingLUTSigned(int lut_index, float pos) {
    int index = clamp(int(pos * 128.0), -128, 127);
    float delta = pos * 128.0 - float(index);
    if (index < 0) index += 256;
    return LookupLightingLUT(lut_index, index, delta);
}

float byteround(float x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec2 byteround(vec2 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec3 byteround(vec3 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec4 byteround(vec4 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

// PICA's LOD formula for 2D textures.
// This LOD formula is the same as the LOD lower limit defined in OpenGL.
// f(x, y) >= max{m_u, m_v, m_w}
// (See OpenGL 4.6 spec, 8.14.1 - Scale Factor and Level-of-Detail)
float getLod(vec2 coord) {
    vec2 d = max(abs(dFdx(coord)), abs(dFdy(coord)));
    return log2(max(d.x, d.y));
}

vec4 shadowTexture(vec2 uv, float w) {
    return vec4(1.0);
}

vec4 shadowTextureCube(vec2 uv, float w) {
    return vec4(1.0);
}

void main() {
vec4 rounded_primary_color = byteround(primary_color);
vec4 primary_fragment_color = vec4(0.0);
vec4 secondary_fragment_color = vec4(0.0);
if (!(gl_FragCoord.x >= float(scissor_x1) && gl_FragCoord.y >= float(scissor_y1) && gl_FragCoord.x < float(scissor_x2) && gl_FragCoord.y < float(scissor_y2))) discard;
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));
vec4 texcolor1 = textureLod(tex1, texcoord1, getLod(texcoord1 * vec2(textureSize(tex1, 0))));
vec4 texcolor2 = textureLod(tex2, texcoord2, getLod(texcoord2 * vec2(textureSize(tex2, 0))));
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((rounded_primary_color.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp(min((texcolor2.a) + (texcolor0.a), 1.0) * (texcolor1.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.a = last_tex_env_out.a;

vec3 color_output_1 = byteround(clamp((const_color[1].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_1 = byteround(clamp((texcolor2.a) + (texcolor1.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_1, alpha_output_1), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;

vec3 color_output_2 = byteround(clamp((last_tex_env_out.rgb) * (texcolor0.rgb) + (const_color[2].rgb) * (vec3(1.0) - (texcolor0.rgb)), vec3(0.0), vec3(1.0)));
float alpha_output_2 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_2, alpha_output_2), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;

vec3 color_output_3 = byteround(clamp((last_tex_env_out.rgb) * (texcolor2.aaa), vec3(0.0), vec3(1.0)));
float alpha_output_3 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_3, alpha_output_3), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;

vec3 color_output_4 = byteround(clamp((rounded_primary_color.rgb) * (const_color[4].aaa) + (const_color[4].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_4 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_4, alpha_output_4), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_5 = byteround(clamp((last_tex_env_out.rgb) * (texcolor1.rgb) + (combiner_buffer.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_5 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_5, alpha_output_5), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: A18BA9E126D47DF9, 81DB2153F69E5EB8
// program: 4940142D60DA9543, 5D764F9A6220D694, 81DB2153F69E5EB8
// shader: 8B30, 5EC5994C11A4625E

precision highp int;
precision highp float;
precision highp samplerBuffer;
precision highp usampler2D;
precision highp uimage2D;
in vec4 primary_color;
in vec2 texcoord0;
in vec2 texcoord1;
in vec2 texcoord2;
in float texcoord0_w;
in vec4 normquat;
in vec3 view;

#ifndef CITRA_GLES
in vec4 gl_FragCoord;
#endif // CITRA_GLES
out vec4 color;

uniform sampler2D tex0;
uniform sampler2D tex1;
uniform sampler2D tex2;
uniform samplerCube tex_cube;
uniform samplerBuffer texture_buffer_lut_lf;
uniform samplerBuffer texture_buffer_lut_rg;
uniform samplerBuffer texture_buffer_lut_rgba;

#define NUM_TEV_STAGES 6
#define NUM_LIGHTS 8
#define NUM_LIGHTING_SAMPLERS 24

struct LightSrc {
    vec3 specular_0;
    vec3 specular_1;
    vec3 diffuse;
    vec3 ambient;
    vec3 position;
    vec3 spot_direction;
    float dist_atten_bias;
    float dist_atten_scale;
};

layout (std140) uniform shader_data {
    int alphatest_ref;
    float depth_scale;
    float depth_offset;
    float shadow_bias_constant;
    float shadow_bias_linear;
    int scissor_x1;
    int scissor_y1;
    int scissor_x2;
    int scissor_y2;
    int fog_lut_offset;
    int proctex_noise_lut_offset;
    int proctex_color_map_offset;
    int proctex_alpha_map_offset;
    int proctex_lut_offset;
    int proctex_diff_lut_offset;
    float proctex_bias;
    vec3 fog_color;
    vec2 proctex_noise_f;
    vec2 proctex_noise_a;
    vec2 proctex_noise_p;
    vec4 const_color[NUM_TEV_STAGES];
    vec4 tev_combiner_buffer_color;
    vec4 clip_coef;
};

layout (std140) uniform shader_light_data {
    ivec4 lighting_lut_offset[NUM_LIGHTING_SAMPLERS / 4];
    vec3 lighting_global_ambient;
    LightSrc light_src[NUM_LIGHTS];
    float lut_scale_d0;
    float lut_scale_d1;
    float lut_scale_sp;
    float lut_scale_fr;
    float lut_scale_rb;
    float lut_scale_rg;
    float lut_scale_rr;
    int shadow_texture_bias;
};

// Rotate the vector v by the quaternion q
vec3 quaternion_rotate(vec4 q, vec3 v) {
    return v + 2.0 * cross(q.xyz, cross(q.xyz, v) + q.w * v);
}

float LookupLightingLUT(int lut_index, int index, float delta) {
    vec2 entry = texelFetch(texture_buffer_lut_lf, lighting_lut_offset[lut_index >> 2][lut_index & 3] + index).rg;
    return entry.r + entry.g * delta;
}

float LookupLightingLUTUnsigned(int lut_index, float pos) {
    int index = clamp(int(pos * 256.0), 0, 255);
    float delta = pos * 256.0 - float(index);
    return LookupLightingLUT(lut_index, index, delta);
}

float LookupLightingLUTSigned(int lut_index, float pos) {
    int index = clamp(int(pos * 128.0), -128, 127);
    float delta = pos * 128.0 - float(index);
    if (index < 0) index += 256;
    return LookupLightingLUT(lut_index, index, delta);
}

float byteround(float x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec2 byteround(vec2 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec3 byteround(vec3 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec4 byteround(vec4 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

// PICA's LOD formula for 2D textures.
// This LOD formula is the same as the LOD lower limit defined in OpenGL.
// f(x, y) >= max{m_u, m_v, m_w}
// (See OpenGL 4.6 spec, 8.14.1 - Scale Factor and Level-of-Detail)
float getLod(vec2 coord) {
    vec2 d = max(abs(dFdx(coord)), abs(dFdy(coord)));
    return log2(max(d.x, d.y));
}

vec4 shadowTexture(vec2 uv, float w) {
    return vec4(1.0);
}

vec4 shadowTextureCube(vec2 uv, float w) {
    return vec4(1.0);
}

void main() {
vec4 rounded_primary_color = byteround(primary_color);
vec4 primary_fragment_color = vec4(0.0);
vec4 secondary_fragment_color = vec4(0.0);
if (!(gl_FragCoord.x >= float(scissor_x1) && gl_FragCoord.y >= float(scissor_y1) && gl_FragCoord.x < float(scissor_x2) && gl_FragCoord.y < float(scissor_y2))) discard;
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));
vec4 texcolor1 = textureLod(tex1, texcoord1, getLod(texcoord1 * vec2(textureSize(tex1, 0))));
vec4 texcolor2 = textureLod(tex2, texcoord2, getLod(texcoord2 * vec2(textureSize(tex2, 0))));
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((rounded_primary_color.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp(min((texcolor2.a) + (texcolor0.a), 1.0) * (texcolor1.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_1 = byteround(clamp((const_color[1].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_1 = byteround(clamp((texcolor2.a) + (texcolor1.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_1, alpha_output_1), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_2 = byteround(clamp((last_tex_env_out.rgb) * (texcolor0.rgb) + (const_color[2].rgb) * (vec3(1.0) - (texcolor0.rgb)), vec3(0.0), vec3(1.0)));
float alpha_output_2 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_2, alpha_output_2), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_3 = byteround(clamp((const_color[3].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_3 = byteround(clamp((texcolor0.a) * (texcolor2.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_3, alpha_output_3), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_4 = byteround(clamp((last_tex_env_out.rgb) * (texcolor0.rgb) + (texcolor1.rgb) * (vec3(1.0) - (texcolor0.rgb)), vec3(0.0), vec3(1.0)));
float alpha_output_4 = byteround(clamp((last_tex_env_out.a) * (const_color[4].a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_4, alpha_output_4), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_5 = byteround(clamp((last_tex_env_out.rgb) + (const_color[5].aaa), vec3(0.0), vec3(1.0)));
float alpha_output_5 = byteround(clamp((last_tex_env_out.a) * (texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_5, alpha_output_5), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

if (int(last_tex_env_out.a * 255.0) == alphatest_ref) discard;
gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: B9A581187F72C2B3, 5EC5994C11A4625E
// program: 4940142D60DA9543, 5D764F9A6220D694, 5EC5994C11A4625E
// shader: 8B30, DC301417737DEC74

precision highp int;
precision highp float;
precision highp samplerBuffer;
precision highp usampler2D;
precision highp uimage2D;
in vec4 primary_color;
in vec2 texcoord0;
in vec2 texcoord1;
in vec2 texcoord2;
in float texcoord0_w;
in vec4 normquat;
in vec3 view;

#ifndef CITRA_GLES
in vec4 gl_FragCoord;
#endif // CITRA_GLES
out vec4 color;

uniform sampler2D tex0;
uniform sampler2D tex1;
uniform sampler2D tex2;
uniform samplerCube tex_cube;
uniform samplerBuffer texture_buffer_lut_lf;
uniform samplerBuffer texture_buffer_lut_rg;
uniform samplerBuffer texture_buffer_lut_rgba;

#define NUM_TEV_STAGES 6
#define NUM_LIGHTS 8
#define NUM_LIGHTING_SAMPLERS 24

struct LightSrc {
    vec3 specular_0;
    vec3 specular_1;
    vec3 diffuse;
    vec3 ambient;
    vec3 position;
    vec3 spot_direction;
    float dist_atten_bias;
    float dist_atten_scale;
};

layout (std140) uniform shader_data {
    int alphatest_ref;
    float depth_scale;
    float depth_offset;
    float shadow_bias_constant;
    float shadow_bias_linear;
    int scissor_x1;
    int scissor_y1;
    int scissor_x2;
    int scissor_y2;
    int fog_lut_offset;
    int proctex_noise_lut_offset;
    int proctex_color_map_offset;
    int proctex_alpha_map_offset;
    int proctex_lut_offset;
    int proctex_diff_lut_offset;
    float proctex_bias;
    vec3 fog_color;
    vec2 proctex_noise_f;
    vec2 proctex_noise_a;
    vec2 proctex_noise_p;
    vec4 const_color[NUM_TEV_STAGES];
    vec4 tev_combiner_buffer_color;
    vec4 clip_coef;
};

layout (std140) uniform shader_light_data {
    ivec4 lighting_lut_offset[NUM_LIGHTING_SAMPLERS / 4];
    vec3 lighting_global_ambient;
    LightSrc light_src[NUM_LIGHTS];
    float lut_scale_d0;
    float lut_scale_d1;
    float lut_scale_sp;
    float lut_scale_fr;
    float lut_scale_rb;
    float lut_scale_rg;
    float lut_scale_rr;
    int shadow_texture_bias;
};

// Rotate the vector v by the quaternion q
vec3 quaternion_rotate(vec4 q, vec3 v) {
    return v + 2.0 * cross(q.xyz, cross(q.xyz, v) + q.w * v);
}

float LookupLightingLUT(int lut_index, int index, float delta) {
    vec2 entry = texelFetch(texture_buffer_lut_lf, lighting_lut_offset[lut_index >> 2][lut_index & 3] + index).rg;
    return entry.r + entry.g * delta;
}

float LookupLightingLUTUnsigned(int lut_index, float pos) {
    int index = clamp(int(pos * 256.0), 0, 255);
    float delta = pos * 256.0 - float(index);
    return LookupLightingLUT(lut_index, index, delta);
}

float LookupLightingLUTSigned(int lut_index, float pos) {
    int index = clamp(int(pos * 128.0), -128, 127);
    float delta = pos * 128.0 - float(index);
    if (index < 0) index += 256;
    return LookupLightingLUT(lut_index, index, delta);
}

float byteround(float x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec2 byteround(vec2 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec3 byteround(vec3 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec4 byteround(vec4 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

// PICA's LOD formula for 2D textures.
// This LOD formula is the same as the LOD lower limit defined in OpenGL.
// f(x, y) >= max{m_u, m_v, m_w}
// (See OpenGL 4.6 spec, 8.14.1 - Scale Factor and Level-of-Detail)
float getLod(vec2 coord) {
    vec2 d = max(abs(dFdx(coord)), abs(dFdy(coord)));
    return log2(max(d.x, d.y));
}

vec4 shadowTexture(vec2 uv, float w) {
    return vec4(1.0);
}

vec4 shadowTextureCube(vec2 uv, float w) {
    return vec4(1.0);
}

void main() {
vec4 rounded_primary_color = byteround(primary_color);
vec4 primary_fragment_color = vec4(0.0);
vec4 secondary_fragment_color = vec4(0.0);
if (!(gl_FragCoord.x >= float(scissor_x1) && gl_FragCoord.y >= float(scissor_y1) && gl_FragCoord.x < float(scissor_x2) && gl_FragCoord.y < float(scissor_y2))) discard;
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));
vec4 texcolor1 = textureLod(tex1, texcoord1, getLod(texcoord1 * vec2(textureSize(tex1, 0))));
vec4 texcolor2 = textureLod(tex2, texcoord2, getLod(texcoord2 * vec2(textureSize(tex2, 0))));
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((rounded_primary_color.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp(min((texcolor2.a) + (texcolor0.a), 1.0) * (texcolor1.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_1 = byteround(clamp((const_color[1].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_1 = byteround(clamp((texcolor2.a) + (texcolor1.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_1, alpha_output_1), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_2 = byteround(clamp((last_tex_env_out.rgb) * (texcolor0.rgb) + (const_color[2].rgb) * (vec3(1.0) - (texcolor0.rgb)), vec3(0.0), vec3(1.0)));
float alpha_output_2 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_2, alpha_output_2), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_3 = byteround(clamp((vec3(1.0) - texcolor0.rgb) * (const_color[3].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_3 = byteround(clamp((texcolor0.a) * (const_color[3].a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_3, alpha_output_3), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_4 = byteround(clamp((texcolor0.rgb) * (const_color[4].rgb) + (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_4 = byteround(clamp((1.0 - texcolor0.a) * (const_color[4].a) + (last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_4, alpha_output_4), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_5 = byteround(clamp((rounded_primary_color.rgb) * (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_5 = byteround(clamp((rounded_primary_color.a) * (last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_5, alpha_output_5), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: 2F2F5D977590FE90, DC301417737DEC74
// program: 4940142D60DA9543, 5D764F9A6220D694, DC301417737DEC74
// shader: 8B30, 29159B1496B07349

precision highp int;
precision highp float;
precision highp samplerBuffer;
precision highp usampler2D;
precision highp uimage2D;
in vec4 primary_color;
in vec2 texcoord0;
in vec2 texcoord1;
in vec2 texcoord2;
in float texcoord0_w;
in vec4 normquat;
in vec3 view;

#ifndef CITRA_GLES
in vec4 gl_FragCoord;
#endif // CITRA_GLES
out vec4 color;

uniform sampler2D tex0;
uniform sampler2D tex1;
uniform sampler2D tex2;
uniform samplerCube tex_cube;
uniform samplerBuffer texture_buffer_lut_lf;
uniform samplerBuffer texture_buffer_lut_rg;
uniform samplerBuffer texture_buffer_lut_rgba;

#define NUM_TEV_STAGES 6
#define NUM_LIGHTS 8
#define NUM_LIGHTING_SAMPLERS 24

struct LightSrc {
    vec3 specular_0;
    vec3 specular_1;
    vec3 diffuse;
    vec3 ambient;
    vec3 position;
    vec3 spot_direction;
    float dist_atten_bias;
    float dist_atten_scale;
};

layout (std140) uniform shader_data {
    int alphatest_ref;
    float depth_scale;
    float depth_offset;
    float shadow_bias_constant;
    float shadow_bias_linear;
    int scissor_x1;
    int scissor_y1;
    int scissor_x2;
    int scissor_y2;
    int fog_lut_offset;
    int proctex_noise_lut_offset;
    int proctex_color_map_offset;
    int proctex_alpha_map_offset;
    int proctex_lut_offset;
    int proctex_diff_lut_offset;
    float proctex_bias;
    vec3 fog_color;
    vec2 proctex_noise_f;
    vec2 proctex_noise_a;
    vec2 proctex_noise_p;
    vec4 const_color[NUM_TEV_STAGES];
    vec4 tev_combiner_buffer_color;
    vec4 clip_coef;
};

layout (std140) uniform shader_light_data {
    ivec4 lighting_lut_offset[NUM_LIGHTING_SAMPLERS / 4];
    vec3 lighting_global_ambient;
    LightSrc light_src[NUM_LIGHTS];
    float lut_scale_d0;
    float lut_scale_d1;
    float lut_scale_sp;
    float lut_scale_fr;
    float lut_scale_rb;
    float lut_scale_rg;
    float lut_scale_rr;
    int shadow_texture_bias;
};

// Rotate the vector v by the quaternion q
vec3 quaternion_rotate(vec4 q, vec3 v) {
    return v + 2.0 * cross(q.xyz, cross(q.xyz, v) + q.w * v);
}

float LookupLightingLUT(int lut_index, int index, float delta) {
    vec2 entry = texelFetch(texture_buffer_lut_lf, lighting_lut_offset[lut_index >> 2][lut_index & 3] + index).rg;
    return entry.r + entry.g * delta;
}

float LookupLightingLUTUnsigned(int lut_index, float pos) {
    int index = clamp(int(pos * 256.0), 0, 255);
    float delta = pos * 256.0 - float(index);
    return LookupLightingLUT(lut_index, index, delta);
}

float LookupLightingLUTSigned(int lut_index, float pos) {
    int index = clamp(int(pos * 128.0), -128, 127);
    float delta = pos * 128.0 - float(index);
    if (index < 0) index += 256;
    return LookupLightingLUT(lut_index, index, delta);
}

float byteround(float x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec2 byteround(vec2 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec3 byteround(vec3 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec4 byteround(vec4 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

// PICA's LOD formula for 2D textures.
// This LOD formula is the same as the LOD lower limit defined in OpenGL.
// f(x, y) >= max{m_u, m_v, m_w}
// (See OpenGL 4.6 spec, 8.14.1 - Scale Factor and Level-of-Detail)
float getLod(vec2 coord) {
    vec2 d = max(abs(dFdx(coord)), abs(dFdy(coord)));
    return log2(max(d.x, d.y));
}

vec4 shadowTexture(vec2 uv, float w) {
    return vec4(1.0);
}

vec4 shadowTextureCube(vec2 uv, float w) {
    return vec4(1.0);
}

void main() {
vec4 rounded_primary_color = byteround(primary_color);
vec4 primary_fragment_color = vec4(0.0);
vec4 secondary_fragment_color = vec4(0.0);
if (!(gl_FragCoord.x >= float(scissor_x1) && gl_FragCoord.y >= float(scissor_y1) && gl_FragCoord.x < float(scissor_x2) && gl_FragCoord.y < float(scissor_y2))) discard;
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));
vec4 texcolor1 = textureLod(tex1, texcoord1, getLod(texcoord1 * vec2(textureSize(tex1, 0))));
vec4 texcolor2 = textureLod(tex2, texcoord2, getLod(texcoord2 * vec2(textureSize(tex2, 0))));
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((rounded_primary_color.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp(min((texcolor2.a) + (texcolor0.a), 1.0) * (texcolor1.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_1 = byteround(clamp((const_color[1].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_1 = byteround(clamp((texcolor2.a) + (texcolor1.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_1, alpha_output_1), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_2 = byteround(clamp((last_tex_env_out.rgb) * (texcolor0.rgb) + (const_color[2].rgb) * (vec3(1.0) - (texcolor0.rgb)), vec3(0.0), vec3(1.0)));
float alpha_output_2 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_2, alpha_output_2), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_3 = byteround(clamp((const_color[3].rgb) * (vec3(1.0) - texcolor0.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_3 = byteround(clamp((const_color[3].a) * (1.0 - texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_3, alpha_output_3), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_4 = byteround(clamp((const_color[4].rgb) * (texcolor0.rgb) + (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_4 = byteround(clamp((const_color[4].a) * (texcolor0.a) + (last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_4, alpha_output_4), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_5 = byteround(clamp((rounded_primary_color.rgb) * (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_5 = byteround(clamp((rounded_primary_color.a) * (last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_5, alpha_output_5), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: E0B7B968F46FE82A, 29159B1496B07349
// program: 4940142D60DA9543, 5D764F9A6220D694, 29159B1496B07349
// shader: 8B30, 01C735B23904D409

precision highp int;
precision highp float;
precision highp samplerBuffer;
precision highp usampler2D;
precision highp uimage2D;
in vec4 primary_color;
in vec2 texcoord0;
in vec2 texcoord1;
in vec2 texcoord2;
in float texcoord0_w;
in vec4 normquat;
in vec3 view;

#ifndef CITRA_GLES
in vec4 gl_FragCoord;
#endif // CITRA_GLES
out vec4 color;

uniform sampler2D tex0;
uniform sampler2D tex1;
uniform sampler2D tex2;
uniform samplerCube tex_cube;
uniform samplerBuffer texture_buffer_lut_lf;
uniform samplerBuffer texture_buffer_lut_rg;
uniform samplerBuffer texture_buffer_lut_rgba;

#define NUM_TEV_STAGES 6
#define NUM_LIGHTS 8
#define NUM_LIGHTING_SAMPLERS 24

struct LightSrc {
    vec3 specular_0;
    vec3 specular_1;
    vec3 diffuse;
    vec3 ambient;
    vec3 position;
    vec3 spot_direction;
    float dist_atten_bias;
    float dist_atten_scale;
};

layout (std140) uniform shader_data {
    int alphatest_ref;
    float depth_scale;
    float depth_offset;
    float shadow_bias_constant;
    float shadow_bias_linear;
    int scissor_x1;
    int scissor_y1;
    int scissor_x2;
    int scissor_y2;
    int fog_lut_offset;
    int proctex_noise_lut_offset;
    int proctex_color_map_offset;
    int proctex_alpha_map_offset;
    int proctex_lut_offset;
    int proctex_diff_lut_offset;
    float proctex_bias;
    vec3 fog_color;
    vec2 proctex_noise_f;
    vec2 proctex_noise_a;
    vec2 proctex_noise_p;
    vec4 const_color[NUM_TEV_STAGES];
    vec4 tev_combiner_buffer_color;
    vec4 clip_coef;
};

layout (std140) uniform shader_light_data {
    ivec4 lighting_lut_offset[NUM_LIGHTING_SAMPLERS / 4];
    vec3 lighting_global_ambient;
    LightSrc light_src[NUM_LIGHTS];
    float lut_scale_d0;
    float lut_scale_d1;
    float lut_scale_sp;
    float lut_scale_fr;
    float lut_scale_rb;
    float lut_scale_rg;
    float lut_scale_rr;
    int shadow_texture_bias;
};

// Rotate the vector v by the quaternion q
vec3 quaternion_rotate(vec4 q, vec3 v) {
    return v + 2.0 * cross(q.xyz, cross(q.xyz, v) + q.w * v);
}

float LookupLightingLUT(int lut_index, int index, float delta) {
    vec2 entry = texelFetch(texture_buffer_lut_lf, lighting_lut_offset[lut_index >> 2][lut_index & 3] + index).rg;
    return entry.r + entry.g * delta;
}

float LookupLightingLUTUnsigned(int lut_index, float pos) {
    int index = clamp(int(pos * 256.0), 0, 255);
    float delta = pos * 256.0 - float(index);
    return LookupLightingLUT(lut_index, index, delta);
}

float LookupLightingLUTSigned(int lut_index, float pos) {
    int index = clamp(int(pos * 128.0), -128, 127);
    float delta = pos * 128.0 - float(index);
    if (index < 0) index += 256;
    return LookupLightingLUT(lut_index, index, delta);
}

float byteround(float x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec2 byteround(vec2 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec3 byteround(vec3 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec4 byteround(vec4 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

// PICA's LOD formula for 2D textures.
// This LOD formula is the same as the LOD lower limit defined in OpenGL.
// f(x, y) >= max{m_u, m_v, m_w}
// (See OpenGL 4.6 spec, 8.14.1 - Scale Factor and Level-of-Detail)
float getLod(vec2 coord) {
    vec2 d = max(abs(dFdx(coord)), abs(dFdy(coord)));
    return log2(max(d.x, d.y));
}

vec4 shadowTexture(vec2 uv, float w) {
    return vec4(1.0);
}

vec4 shadowTextureCube(vec2 uv, float w) {
    return vec4(1.0);
}

void main() {
vec4 rounded_primary_color = byteround(primary_color);
vec4 primary_fragment_color = vec4(0.0);
vec4 secondary_fragment_color = vec4(0.0);
if (!(gl_FragCoord.x >= float(scissor_x1) && gl_FragCoord.y >= float(scissor_y1) && gl_FragCoord.x < float(scissor_x2) && gl_FragCoord.y < float(scissor_y2))) discard;
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((const_color[0].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp(min((const_color[0].a) + (const_color[0].a), 1.0) * (const_color[0].a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;
next_combiner_buffer.a = last_tex_env_out.a;

vec3 color_output_1 = byteround(clamp((vec3(1.0) - last_tex_env_out.rgb) * (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_1 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_1, alpha_output_1), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;
next_combiner_buffer.a = last_tex_env_out.a;

vec3 color_output_2 = byteround(clamp((vec3(1.0) - last_tex_env_out.rgb) * (last_tex_env_out.rgb) + (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_2 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_2, alpha_output_2), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;
next_combiner_buffer.a = last_tex_env_out.a;

vec3 color_output_3 = byteround(clamp((last_tex_env_out.rgb) * (vec3(1.0) - last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_3 = byteround(clamp((last_tex_env_out.a) * (1.0 - last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_3, alpha_output_3), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;
next_combiner_buffer.a = last_tex_env_out.a;

vec3 color_output_4 = byteround(clamp((last_tex_env_out.rgb) * (last_tex_env_out.rgb) + (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_4 = byteround(clamp((last_tex_env_out.a) * (last_tex_env_out.a) + (last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_4, alpha_output_4), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_5 = byteround(clamp((const_color[5].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_5 = byteround(clamp((const_color[5].a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_5, alpha_output_5), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: A025E53CBF4B4934, 01C735B23904D409
// program: 0000000000000000, 0000000000000000, 01C735B23904D409
// shader: 8B30, 32C1D520BD833D5A

precision highp int;
precision highp float;
precision highp samplerBuffer;
precision highp usampler2D;
precision highp uimage2D;
in vec4 primary_color;
in vec2 texcoord0;
in vec2 texcoord1;
in vec2 texcoord2;
in float texcoord0_w;
in vec4 normquat;
in vec3 view;

#ifndef CITRA_GLES
in vec4 gl_FragCoord;
#endif // CITRA_GLES
out vec4 color;

uniform sampler2D tex0;
uniform sampler2D tex1;
uniform sampler2D tex2;
uniform samplerCube tex_cube;
uniform samplerBuffer texture_buffer_lut_lf;
uniform samplerBuffer texture_buffer_lut_rg;
uniform samplerBuffer texture_buffer_lut_rgba;

#define NUM_TEV_STAGES 6
#define NUM_LIGHTS 8
#define NUM_LIGHTING_SAMPLERS 24

struct LightSrc {
    vec3 specular_0;
    vec3 specular_1;
    vec3 diffuse;
    vec3 ambient;
    vec3 position;
    vec3 spot_direction;
    float dist_atten_bias;
    float dist_atten_scale;
};

layout (std140) uniform shader_data {
    int alphatest_ref;
    float depth_scale;
    float depth_offset;
    float shadow_bias_constant;
    float shadow_bias_linear;
    int scissor_x1;
    int scissor_y1;
    int scissor_x2;
    int scissor_y2;
    int fog_lut_offset;
    int proctex_noise_lut_offset;
    int proctex_color_map_offset;
    int proctex_alpha_map_offset;
    int proctex_lut_offset;
    int proctex_diff_lut_offset;
    float proctex_bias;
    vec3 fog_color;
    vec2 proctex_noise_f;
    vec2 proctex_noise_a;
    vec2 proctex_noise_p;
    vec4 const_color[NUM_TEV_STAGES];
    vec4 tev_combiner_buffer_color;
    vec4 clip_coef;
};

layout (std140) uniform shader_light_data {
    ivec4 lighting_lut_offset[NUM_LIGHTING_SAMPLERS / 4];
    vec3 lighting_global_ambient;
    LightSrc light_src[NUM_LIGHTS];
    float lut_scale_d0;
    float lut_scale_d1;
    float lut_scale_sp;
    float lut_scale_fr;
    float lut_scale_rb;
    float lut_scale_rg;
    float lut_scale_rr;
    int shadow_texture_bias;
};

// Rotate the vector v by the quaternion q
vec3 quaternion_rotate(vec4 q, vec3 v) {
    return v + 2.0 * cross(q.xyz, cross(q.xyz, v) + q.w * v);
}

float LookupLightingLUT(int lut_index, int index, float delta) {
    vec2 entry = texelFetch(texture_buffer_lut_lf, lighting_lut_offset[lut_index >> 2][lut_index & 3] + index).rg;
    return entry.r + entry.g * delta;
}

float LookupLightingLUTUnsigned(int lut_index, float pos) {
    int index = clamp(int(pos * 256.0), 0, 255);
    float delta = pos * 256.0 - float(index);
    return LookupLightingLUT(lut_index, index, delta);
}

float LookupLightingLUTSigned(int lut_index, float pos) {
    int index = clamp(int(pos * 128.0), -128, 127);
    float delta = pos * 128.0 - float(index);
    if (index < 0) index += 256;
    return LookupLightingLUT(lut_index, index, delta);
}

float byteround(float x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec2 byteround(vec2 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec3 byteround(vec3 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec4 byteround(vec4 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

// PICA's LOD formula for 2D textures.
// This LOD formula is the same as the LOD lower limit defined in OpenGL.
// f(x, y) >= max{m_u, m_v, m_w}
// (See OpenGL 4.6 spec, 8.14.1 - Scale Factor and Level-of-Detail)
float getLod(vec2 coord) {
    vec2 d = max(abs(dFdx(coord)), abs(dFdy(coord)));
    return log2(max(d.x, d.y));
}

vec4 shadowTexture(vec2 uv, float w) {
    return vec4(1.0);
}

vec4 shadowTextureCube(vec2 uv, float w) {
    return vec4(1.0);
}

void main() {
vec4 rounded_primary_color = byteround(primary_color);
vec4 primary_fragment_color = vec4(0.0);
vec4 secondary_fragment_color = vec4(0.0);
if (!(gl_FragCoord.x >= float(scissor_x1) && gl_FragCoord.y >= float(scissor_y1) && gl_FragCoord.x < float(scissor_x2) && gl_FragCoord.y < float(scissor_y2))) discard;
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((const_color[0].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((const_color[0].a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

vec3 color_output_5 = byteround(clamp((const_color[5].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_5 = byteround(clamp((const_color[5].a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_5, alpha_output_5), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: 393F874199613147, 32C1D520BD833D5A
// program: 0000000000000000, 0000000000000000, 32C1D520BD833D5A
// shader: 8B30, 42C06BDE37F868CC

precision highp int;
precision highp float;
precision highp samplerBuffer;
precision highp usampler2D;
precision highp uimage2D;
in vec4 primary_color;
in vec2 texcoord0;
in vec2 texcoord1;
in vec2 texcoord2;
in float texcoord0_w;
in vec4 normquat;
in vec3 view;

#ifndef CITRA_GLES
in vec4 gl_FragCoord;
#endif // CITRA_GLES
out vec4 color;

uniform sampler2D tex0;
uniform sampler2D tex1;
uniform sampler2D tex2;
uniform samplerCube tex_cube;
uniform samplerBuffer texture_buffer_lut_lf;
uniform samplerBuffer texture_buffer_lut_rg;
uniform samplerBuffer texture_buffer_lut_rgba;

#define NUM_TEV_STAGES 6
#define NUM_LIGHTS 8
#define NUM_LIGHTING_SAMPLERS 24

struct LightSrc {
    vec3 specular_0;
    vec3 specular_1;
    vec3 diffuse;
    vec3 ambient;
    vec3 position;
    vec3 spot_direction;
    float dist_atten_bias;
    float dist_atten_scale;
};

layout (std140) uniform shader_data {
    int alphatest_ref;
    float depth_scale;
    float depth_offset;
    float shadow_bias_constant;
    float shadow_bias_linear;
    int scissor_x1;
    int scissor_y1;
    int scissor_x2;
    int scissor_y2;
    int fog_lut_offset;
    int proctex_noise_lut_offset;
    int proctex_color_map_offset;
    int proctex_alpha_map_offset;
    int proctex_lut_offset;
    int proctex_diff_lut_offset;
    float proctex_bias;
    vec3 fog_color;
    vec2 proctex_noise_f;
    vec2 proctex_noise_a;
    vec2 proctex_noise_p;
    vec4 const_color[NUM_TEV_STAGES];
    vec4 tev_combiner_buffer_color;
    vec4 clip_coef;
};

layout (std140) uniform shader_light_data {
    ivec4 lighting_lut_offset[NUM_LIGHTING_SAMPLERS / 4];
    vec3 lighting_global_ambient;
    LightSrc light_src[NUM_LIGHTS];
    float lut_scale_d0;
    float lut_scale_d1;
    float lut_scale_sp;
    float lut_scale_fr;
    float lut_scale_rb;
    float lut_scale_rg;
    float lut_scale_rr;
    int shadow_texture_bias;
};

// Rotate the vector v by the quaternion q
vec3 quaternion_rotate(vec4 q, vec3 v) {
    return v + 2.0 * cross(q.xyz, cross(q.xyz, v) + q.w * v);
}

float LookupLightingLUT(int lut_index, int index, float delta) {
    vec2 entry = texelFetch(texture_buffer_lut_lf, lighting_lut_offset[lut_index >> 2][lut_index & 3] + index).rg;
    return entry.r + entry.g * delta;
}

float LookupLightingLUTUnsigned(int lut_index, float pos) {
    int index = clamp(int(pos * 256.0), 0, 255);
    float delta = pos * 256.0 - float(index);
    return LookupLightingLUT(lut_index, index, delta);
}

float LookupLightingLUTSigned(int lut_index, float pos) {
    int index = clamp(int(pos * 128.0), -128, 127);
    float delta = pos * 128.0 - float(index);
    if (index < 0) index += 256;
    return LookupLightingLUT(lut_index, index, delta);
}

float byteround(float x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec2 byteround(vec2 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec3 byteround(vec3 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec4 byteround(vec4 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

// PICA's LOD formula for 2D textures.
// This LOD formula is the same as the LOD lower limit defined in OpenGL.
// f(x, y) >= max{m_u, m_v, m_w}
// (See OpenGL 4.6 spec, 8.14.1 - Scale Factor and Level-of-Detail)
float getLod(vec2 coord) {
    vec2 d = max(abs(dFdx(coord)), abs(dFdy(coord)));
    return log2(max(d.x, d.y));
}

vec4 shadowTexture(vec2 uv, float w) {
    return vec4(1.0);
}

vec4 shadowTextureCube(vec2 uv, float w) {
    return vec4(1.0);
}

void main() {
vec4 rounded_primary_color = byteround(primary_color);
vec4 primary_fragment_color = vec4(0.0);
vec4 secondary_fragment_color = vec4(0.0);
if (!(gl_FragCoord.x >= float(scissor_x1) && gl_FragCoord.y >= float(scissor_y1) && gl_FragCoord.x < float(scissor_x2) && gl_FragCoord.y < float(scissor_y2))) discard;
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((const_color[0].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

if (int(last_tex_env_out.a * 255.0) <= alphatest_ref) discard;
gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: 393F874179A7B68F, 42C06BDE37F868CC
// program: 0000000000000000, 0000000000000000, 42C06BDE37F868CC
// shader: 8B30, A6CF906801B4C84C

precision highp int;
precision highp float;
precision highp samplerBuffer;
precision highp usampler2D;
precision highp uimage2D;
in vec4 primary_color;
in vec2 texcoord0;
in vec2 texcoord1;
in vec2 texcoord2;
in float texcoord0_w;
in vec4 normquat;
in vec3 view;

#ifndef CITRA_GLES
in vec4 gl_FragCoord;
#endif // CITRA_GLES
out vec4 color;

uniform sampler2D tex0;
uniform sampler2D tex1;
uniform sampler2D tex2;
uniform samplerCube tex_cube;
uniform samplerBuffer texture_buffer_lut_lf;
uniform samplerBuffer texture_buffer_lut_rg;
uniform samplerBuffer texture_buffer_lut_rgba;

#define NUM_TEV_STAGES 6
#define NUM_LIGHTS 8
#define NUM_LIGHTING_SAMPLERS 24

struct LightSrc {
    vec3 specular_0;
    vec3 specular_1;
    vec3 diffuse;
    vec3 ambient;
    vec3 position;
    vec3 spot_direction;
    float dist_atten_bias;
    float dist_atten_scale;
};

layout (std140) uniform shader_data {
    int alphatest_ref;
    float depth_scale;
    float depth_offset;
    float shadow_bias_constant;
    float shadow_bias_linear;
    int scissor_x1;
    int scissor_y1;
    int scissor_x2;
    int scissor_y2;
    int fog_lut_offset;
    int proctex_noise_lut_offset;
    int proctex_color_map_offset;
    int proctex_alpha_map_offset;
    int proctex_lut_offset;
    int proctex_diff_lut_offset;
    float proctex_bias;
    vec3 fog_color;
    vec2 proctex_noise_f;
    vec2 proctex_noise_a;
    vec2 proctex_noise_p;
    vec4 const_color[NUM_TEV_STAGES];
    vec4 tev_combiner_buffer_color;
    vec4 clip_coef;
};

layout (std140) uniform shader_light_data {
    ivec4 lighting_lut_offset[NUM_LIGHTING_SAMPLERS / 4];
    vec3 lighting_global_ambient;
    LightSrc light_src[NUM_LIGHTS];
    float lut_scale_d0;
    float lut_scale_d1;
    float lut_scale_sp;
    float lut_scale_fr;
    float lut_scale_rb;
    float lut_scale_rg;
    float lut_scale_rr;
    int shadow_texture_bias;
};

// Rotate the vector v by the quaternion q
vec3 quaternion_rotate(vec4 q, vec3 v) {
    return v + 2.0 * cross(q.xyz, cross(q.xyz, v) + q.w * v);
}

float LookupLightingLUT(int lut_index, int index, float delta) {
    vec2 entry = texelFetch(texture_buffer_lut_lf, lighting_lut_offset[lut_index >> 2][lut_index & 3] + index).rg;
    return entry.r + entry.g * delta;
}

float LookupLightingLUTUnsigned(int lut_index, float pos) {
    int index = clamp(int(pos * 256.0), 0, 255);
    float delta = pos * 256.0 - float(index);
    return LookupLightingLUT(lut_index, index, delta);
}

float LookupLightingLUTSigned(int lut_index, float pos) {
    int index = clamp(int(pos * 128.0), -128, 127);
    float delta = pos * 128.0 - float(index);
    if (index < 0) index += 256;
    return LookupLightingLUT(lut_index, index, delta);
}

float byteround(float x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec2 byteround(vec2 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec3 byteround(vec3 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec4 byteround(vec4 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

// PICA's LOD formula for 2D textures.
// This LOD formula is the same as the LOD lower limit defined in OpenGL.
// f(x, y) >= max{m_u, m_v, m_w}
// (See OpenGL 4.6 spec, 8.14.1 - Scale Factor and Level-of-Detail)
float getLod(vec2 coord) {
    vec2 d = max(abs(dFdx(coord)), abs(dFdy(coord)));
    return log2(max(d.x, d.y));
}

vec4 shadowTexture(vec2 uv, float w) {
    return vec4(1.0);
}

vec4 shadowTextureCube(vec2 uv, float w) {
    return vec4(1.0);
}

void main() {
vec4 rounded_primary_color = byteround(primary_color);
vec4 primary_fragment_color = vec4(0.0);
vec4 secondary_fragment_color = vec4(0.0);
if (!(gl_FragCoord.x >= float(scissor_x1) && gl_FragCoord.y >= float(scissor_y1) && gl_FragCoord.x < float(scissor_x2) && gl_FragCoord.y < float(scissor_y2))) discard;
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((texcolor0.rrr) * (const_color[0].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_1 = byteround(clamp((texcolor0.ggg) * (const_color[1].rgb) + (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_1 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_1, alpha_output_1), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_2 = byteround(clamp((texcolor0.bbb) * (const_color[2].rgb) + (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_2 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_2, alpha_output_2), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

if (int(last_tex_env_out.a * 255.0) <= alphatest_ref) discard;
gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: D7DF573C1FE16FD0, A6CF906801B4C84C
// program: 0000000000000000, 0000000000000000, A6CF906801B4C84C
// shader: 8B30, 47C12CB4EFB88BF9

precision highp int;
precision highp float;
precision highp samplerBuffer;
precision highp usampler2D;
precision highp uimage2D;
in vec4 primary_color;
in vec2 texcoord0;
in vec2 texcoord1;
in vec2 texcoord2;
in float texcoord0_w;
in vec4 normquat;
in vec3 view;

#ifndef CITRA_GLES
in vec4 gl_FragCoord;
#endif // CITRA_GLES
out vec4 color;

uniform sampler2D tex0;
uniform sampler2D tex1;
uniform sampler2D tex2;
uniform samplerCube tex_cube;
uniform samplerBuffer texture_buffer_lut_lf;
uniform samplerBuffer texture_buffer_lut_rg;
uniform samplerBuffer texture_buffer_lut_rgba;

#define NUM_TEV_STAGES 6
#define NUM_LIGHTS 8
#define NUM_LIGHTING_SAMPLERS 24

struct LightSrc {
    vec3 specular_0;
    vec3 specular_1;
    vec3 diffuse;
    vec3 ambient;
    vec3 position;
    vec3 spot_direction;
    float dist_atten_bias;
    float dist_atten_scale;
};

layout (std140) uniform shader_data {
    int alphatest_ref;
    float depth_scale;
    float depth_offset;
    float shadow_bias_constant;
    float shadow_bias_linear;
    int scissor_x1;
    int scissor_y1;
    int scissor_x2;
    int scissor_y2;
    int fog_lut_offset;
    int proctex_noise_lut_offset;
    int proctex_color_map_offset;
    int proctex_alpha_map_offset;
    int proctex_lut_offset;
    int proctex_diff_lut_offset;
    float proctex_bias;
    vec3 fog_color;
    vec2 proctex_noise_f;
    vec2 proctex_noise_a;
    vec2 proctex_noise_p;
    vec4 const_color[NUM_TEV_STAGES];
    vec4 tev_combiner_buffer_color;
    vec4 clip_coef;
};

layout (std140) uniform shader_light_data {
    ivec4 lighting_lut_offset[NUM_LIGHTING_SAMPLERS / 4];
    vec3 lighting_global_ambient;
    LightSrc light_src[NUM_LIGHTS];
    float lut_scale_d0;
    float lut_scale_d1;
    float lut_scale_sp;
    float lut_scale_fr;
    float lut_scale_rb;
    float lut_scale_rg;
    float lut_scale_rr;
    int shadow_texture_bias;
};

// Rotate the vector v by the quaternion q
vec3 quaternion_rotate(vec4 q, vec3 v) {
    return v + 2.0 * cross(q.xyz, cross(q.xyz, v) + q.w * v);
}

float LookupLightingLUT(int lut_index, int index, float delta) {
    vec2 entry = texelFetch(texture_buffer_lut_lf, lighting_lut_offset[lut_index >> 2][lut_index & 3] + index).rg;
    return entry.r + entry.g * delta;
}

float LookupLightingLUTUnsigned(int lut_index, float pos) {
    int index = clamp(int(pos * 256.0), 0, 255);
    float delta = pos * 256.0 - float(index);
    return LookupLightingLUT(lut_index, index, delta);
}

float LookupLightingLUTSigned(int lut_index, float pos) {
    int index = clamp(int(pos * 128.0), -128, 127);
    float delta = pos * 128.0 - float(index);
    if (index < 0) index += 256;
    return LookupLightingLUT(lut_index, index, delta);
}

float byteround(float x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec2 byteround(vec2 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec3 byteround(vec3 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec4 byteround(vec4 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

// PICA's LOD formula for 2D textures.
// This LOD formula is the same as the LOD lower limit defined in OpenGL.
// f(x, y) >= max{m_u, m_v, m_w}
// (See OpenGL 4.6 spec, 8.14.1 - Scale Factor and Level-of-Detail)
float getLod(vec2 coord) {
    vec2 d = max(abs(dFdx(coord)), abs(dFdy(coord)));
    return log2(max(d.x, d.y));
}

vec4 shadowTexture(vec2 uv, float w) {
    return vec4(1.0);
}

vec4 shadowTextureCube(vec2 uv, float w) {
    return vec4(1.0);
}

void main() {
vec4 rounded_primary_color = byteround(primary_color);
vec4 primary_fragment_color = vec4(0.0);
vec4 secondary_fragment_color = vec4(0.0);
if (!(gl_FragCoord.x >= float(scissor_x1) && gl_FragCoord.y >= float(scissor_y1) && gl_FragCoord.x < float(scissor_x2) && gl_FragCoord.y < float(scissor_y2))) discard;
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((const_color[0].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((const_color[0].a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: 393F8741C615FEE5, 47C12CB4EFB88BF9
// program: 0000000000000000, 0000000000000000, 47C12CB4EFB88BF9
// shader: 8B30, BE595F2A0F068639

precision highp int;
precision highp float;
precision highp samplerBuffer;
precision highp usampler2D;
precision highp uimage2D;
in vec4 primary_color;
in vec2 texcoord0;
in vec2 texcoord1;
in vec2 texcoord2;
in float texcoord0_w;
in vec4 normquat;
in vec3 view;

#ifndef CITRA_GLES
in vec4 gl_FragCoord;
#endif // CITRA_GLES
out vec4 color;

uniform sampler2D tex0;
uniform sampler2D tex1;
uniform sampler2D tex2;
uniform samplerCube tex_cube;
uniform samplerBuffer texture_buffer_lut_lf;
uniform samplerBuffer texture_buffer_lut_rg;
uniform samplerBuffer texture_buffer_lut_rgba;

#define NUM_TEV_STAGES 6
#define NUM_LIGHTS 8
#define NUM_LIGHTING_SAMPLERS 24

struct LightSrc {
    vec3 specular_0;
    vec3 specular_1;
    vec3 diffuse;
    vec3 ambient;
    vec3 position;
    vec3 spot_direction;
    float dist_atten_bias;
    float dist_atten_scale;
};

layout (std140) uniform shader_data {
    int alphatest_ref;
    float depth_scale;
    float depth_offset;
    float shadow_bias_constant;
    float shadow_bias_linear;
    int scissor_x1;
    int scissor_y1;
    int scissor_x2;
    int scissor_y2;
    int fog_lut_offset;
    int proctex_noise_lut_offset;
    int proctex_color_map_offset;
    int proctex_alpha_map_offset;
    int proctex_lut_offset;
    int proctex_diff_lut_offset;
    float proctex_bias;
    vec3 fog_color;
    vec2 proctex_noise_f;
    vec2 proctex_noise_a;
    vec2 proctex_noise_p;
    vec4 const_color[NUM_TEV_STAGES];
    vec4 tev_combiner_buffer_color;
    vec4 clip_coef;
};

layout (std140) uniform shader_light_data {
    ivec4 lighting_lut_offset[NUM_LIGHTING_SAMPLERS / 4];
    vec3 lighting_global_ambient;
    LightSrc light_src[NUM_LIGHTS];
    float lut_scale_d0;
    float lut_scale_d1;
    float lut_scale_sp;
    float lut_scale_fr;
    float lut_scale_rb;
    float lut_scale_rg;
    float lut_scale_rr;
    int shadow_texture_bias;
};

// Rotate the vector v by the quaternion q
vec3 quaternion_rotate(vec4 q, vec3 v) {
    return v + 2.0 * cross(q.xyz, cross(q.xyz, v) + q.w * v);
}

float LookupLightingLUT(int lut_index, int index, float delta) {
    vec2 entry = texelFetch(texture_buffer_lut_lf, lighting_lut_offset[lut_index >> 2][lut_index & 3] + index).rg;
    return entry.r + entry.g * delta;
}

float LookupLightingLUTUnsigned(int lut_index, float pos) {
    int index = clamp(int(pos * 256.0), 0, 255);
    float delta = pos * 256.0 - float(index);
    return LookupLightingLUT(lut_index, index, delta);
}

float LookupLightingLUTSigned(int lut_index, float pos) {
    int index = clamp(int(pos * 128.0), -128, 127);
    float delta = pos * 128.0 - float(index);
    if (index < 0) index += 256;
    return LookupLightingLUT(lut_index, index, delta);
}

float byteround(float x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec2 byteround(vec2 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec3 byteround(vec3 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec4 byteround(vec4 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

// PICA's LOD formula for 2D textures.
// This LOD formula is the same as the LOD lower limit defined in OpenGL.
// f(x, y) >= max{m_u, m_v, m_w}
// (See OpenGL 4.6 spec, 8.14.1 - Scale Factor and Level-of-Detail)
float getLod(vec2 coord) {
    vec2 d = max(abs(dFdx(coord)), abs(dFdy(coord)));
    return log2(max(d.x, d.y));
}

vec4 shadowTexture(vec2 uv, float w) {
    return vec4(1.0);
}

vec4 shadowTextureCube(vec2 uv, float w) {
    return vec4(1.0);
}

void main() {
vec4 rounded_primary_color = byteround(primary_color);
vec4 primary_fragment_color = vec4(0.0);
vec4 secondary_fragment_color = vec4(0.0);
if (!(gl_FragCoord.x >= float(scissor_x1) && gl_FragCoord.y >= float(scissor_y1) && gl_FragCoord.x < float(scissor_x2) && gl_FragCoord.y < float(scissor_y2))) discard;
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((texcolor0.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

if (int(last_tex_env_out.a * 255.0) <= alphatest_ref) discard;
gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: 393F87418247C736, BE595F2A0F068639
// program: 0000000000000000, 0000000000000000, BE595F2A0F068639
// reference: 989D3376663037A6, 285B3546CEA35D76
// shader: 8B30, C15BAC4C5CD19BA9

precision highp int;
precision highp float;
precision highp samplerBuffer;
precision highp usampler2D;
precision highp uimage2D;
in vec4 primary_color;
in vec2 texcoord0;
in vec2 texcoord1;
in vec2 texcoord2;
in float texcoord0_w;
in vec4 normquat;
in vec3 view;

#ifndef CITRA_GLES
in vec4 gl_FragCoord;
#endif // CITRA_GLES
out vec4 color;

uniform sampler2D tex0;
uniform sampler2D tex1;
uniform sampler2D tex2;
uniform samplerCube tex_cube;
uniform samplerBuffer texture_buffer_lut_lf;
uniform samplerBuffer texture_buffer_lut_rg;
uniform samplerBuffer texture_buffer_lut_rgba;

#define NUM_TEV_STAGES 6
#define NUM_LIGHTS 8
#define NUM_LIGHTING_SAMPLERS 24

struct LightSrc {
    vec3 specular_0;
    vec3 specular_1;
    vec3 diffuse;
    vec3 ambient;
    vec3 position;
    vec3 spot_direction;
    float dist_atten_bias;
    float dist_atten_scale;
};

layout (std140) uniform shader_data {
    int alphatest_ref;
    float depth_scale;
    float depth_offset;
    float shadow_bias_constant;
    float shadow_bias_linear;
    int scissor_x1;
    int scissor_y1;
    int scissor_x2;
    int scissor_y2;
    int fog_lut_offset;
    int proctex_noise_lut_offset;
    int proctex_color_map_offset;
    int proctex_alpha_map_offset;
    int proctex_lut_offset;
    int proctex_diff_lut_offset;
    float proctex_bias;
    vec3 fog_color;
    vec2 proctex_noise_f;
    vec2 proctex_noise_a;
    vec2 proctex_noise_p;
    vec4 const_color[NUM_TEV_STAGES];
    vec4 tev_combiner_buffer_color;
    vec4 clip_coef;
};

layout (std140) uniform shader_light_data {
    ivec4 lighting_lut_offset[NUM_LIGHTING_SAMPLERS / 4];
    vec3 lighting_global_ambient;
    LightSrc light_src[NUM_LIGHTS];
    float lut_scale_d0;
    float lut_scale_d1;
    float lut_scale_sp;
    float lut_scale_fr;
    float lut_scale_rb;
    float lut_scale_rg;
    float lut_scale_rr;
    int shadow_texture_bias;
};

// Rotate the vector v by the quaternion q
vec3 quaternion_rotate(vec4 q, vec3 v) {
    return v + 2.0 * cross(q.xyz, cross(q.xyz, v) + q.w * v);
}

float LookupLightingLUT(int lut_index, int index, float delta) {
    vec2 entry = texelFetch(texture_buffer_lut_lf, lighting_lut_offset[lut_index >> 2][lut_index & 3] + index).rg;
    return entry.r + entry.g * delta;
}

float LookupLightingLUTUnsigned(int lut_index, float pos) {
    int index = clamp(int(pos * 256.0), 0, 255);
    float delta = pos * 256.0 - float(index);
    return LookupLightingLUT(lut_index, index, delta);
}

float LookupLightingLUTSigned(int lut_index, float pos) {
    int index = clamp(int(pos * 128.0), -128, 127);
    float delta = pos * 128.0 - float(index);
    if (index < 0) index += 256;
    return LookupLightingLUT(lut_index, index, delta);
}

float byteround(float x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec2 byteround(vec2 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec3 byteround(vec3 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec4 byteround(vec4 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

// PICA's LOD formula for 2D textures.
// This LOD formula is the same as the LOD lower limit defined in OpenGL.
// f(x, y) >= max{m_u, m_v, m_w}
// (See OpenGL 4.6 spec, 8.14.1 - Scale Factor and Level-of-Detail)
float getLod(vec2 coord) {
    vec2 d = max(abs(dFdx(coord)), abs(dFdy(coord)));
    return log2(max(d.x, d.y));
}

vec4 shadowTexture(vec2 uv, float w) {
    return vec4(1.0);
}

vec4 shadowTextureCube(vec2 uv, float w) {
    return vec4(1.0);
}

void main() {
vec4 rounded_primary_color = byteround(primary_color);
vec4 primary_fragment_color = vec4(0.0);
vec4 secondary_fragment_color = vec4(0.0);
if (!(gl_FragCoord.x >= float(scissor_x1) && gl_FragCoord.y >= float(scissor_y1) && gl_FragCoord.x < float(scissor_x2) && gl_FragCoord.y < float(scissor_y2))) discard;
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((texcolor0.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;
next_combiner_buffer.a = last_tex_env_out.a;

vec3 color_output_1 = byteround(clamp((vec3(1.0) - primary_fragment_color.rgb) * (const_color[1].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_1 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_1, alpha_output_1), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;
next_combiner_buffer.a = last_tex_env_out.a;

vec3 color_output_2 = byteround(clamp((vec3(1.0) - last_tex_env_out.rgb) * (combiner_buffer.rgb) + (secondary_fragment_color.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_2 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_2, alpha_output_2), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;
next_combiner_buffer.a = last_tex_env_out.a;

combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;
next_combiner_buffer.a = last_tex_env_out.a;

combiner_buffer = next_combiner_buffer;

vec3 color_output_5 = byteround(clamp((rounded_primary_color.rgb) * (const_color[5].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_5 = byteround(clamp((rounded_primary_color.a) * (const_color[5].a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_5, alpha_output_5), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: EEBC7DE98D3A4204, C15BAC4C5CD19BA9
// program: 4940142D60DA9543, 5D764F9A6220D694, C15BAC4C5CD19BA9
// shader: 8B30, 8E031CA1EF8AB965

precision highp int;
precision highp float;
precision highp samplerBuffer;
precision highp usampler2D;
precision highp uimage2D;
in vec4 primary_color;
in vec2 texcoord0;
in vec2 texcoord1;
in vec2 texcoord2;
in float texcoord0_w;
in vec4 normquat;
in vec3 view;

#ifndef CITRA_GLES
in vec4 gl_FragCoord;
#endif // CITRA_GLES
out vec4 color;

uniform sampler2D tex0;
uniform sampler2D tex1;
uniform sampler2D tex2;
uniform samplerCube tex_cube;
uniform samplerBuffer texture_buffer_lut_lf;
uniform samplerBuffer texture_buffer_lut_rg;
uniform samplerBuffer texture_buffer_lut_rgba;

#define NUM_TEV_STAGES 6
#define NUM_LIGHTS 8
#define NUM_LIGHTING_SAMPLERS 24

struct LightSrc {
    vec3 specular_0;
    vec3 specular_1;
    vec3 diffuse;
    vec3 ambient;
    vec3 position;
    vec3 spot_direction;
    float dist_atten_bias;
    float dist_atten_scale;
};

layout (std140) uniform shader_data {
    int alphatest_ref;
    float depth_scale;
    float depth_offset;
    float shadow_bias_constant;
    float shadow_bias_linear;
    int scissor_x1;
    int scissor_y1;
    int scissor_x2;
    int scissor_y2;
    int fog_lut_offset;
    int proctex_noise_lut_offset;
    int proctex_color_map_offset;
    int proctex_alpha_map_offset;
    int proctex_lut_offset;
    int proctex_diff_lut_offset;
    float proctex_bias;
    vec3 fog_color;
    vec2 proctex_noise_f;
    vec2 proctex_noise_a;
    vec2 proctex_noise_p;
    vec4 const_color[NUM_TEV_STAGES];
    vec4 tev_combiner_buffer_color;
    vec4 clip_coef;
};

layout (std140) uniform shader_light_data {
    ivec4 lighting_lut_offset[NUM_LIGHTING_SAMPLERS / 4];
    vec3 lighting_global_ambient;
    LightSrc light_src[NUM_LIGHTS];
    float lut_scale_d0;
    float lut_scale_d1;
    float lut_scale_sp;
    float lut_scale_fr;
    float lut_scale_rb;
    float lut_scale_rg;
    float lut_scale_rr;
    int shadow_texture_bias;
};

// Rotate the vector v by the quaternion q
vec3 quaternion_rotate(vec4 q, vec3 v) {
    return v + 2.0 * cross(q.xyz, cross(q.xyz, v) + q.w * v);
}

float LookupLightingLUT(int lut_index, int index, float delta) {
    vec2 entry = texelFetch(texture_buffer_lut_lf, lighting_lut_offset[lut_index >> 2][lut_index & 3] + index).rg;
    return entry.r + entry.g * delta;
}

float LookupLightingLUTUnsigned(int lut_index, float pos) {
    int index = clamp(int(pos * 256.0), 0, 255);
    float delta = pos * 256.0 - float(index);
    return LookupLightingLUT(lut_index, index, delta);
}

float LookupLightingLUTSigned(int lut_index, float pos) {
    int index = clamp(int(pos * 128.0), -128, 127);
    float delta = pos * 128.0 - float(index);
    if (index < 0) index += 256;
    return LookupLightingLUT(lut_index, index, delta);
}

float byteround(float x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec2 byteround(vec2 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec3 byteround(vec3 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec4 byteround(vec4 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

// PICA's LOD formula for 2D textures.
// This LOD formula is the same as the LOD lower limit defined in OpenGL.
// f(x, y) >= max{m_u, m_v, m_w}
// (See OpenGL 4.6 spec, 8.14.1 - Scale Factor and Level-of-Detail)
float getLod(vec2 coord) {
    vec2 d = max(abs(dFdx(coord)), abs(dFdy(coord)));
    return log2(max(d.x, d.y));
}

vec4 shadowTexture(vec2 uv, float w) {
    return vec4(1.0);
}

vec4 shadowTextureCube(vec2 uv, float w) {
    return vec4(1.0);
}

void main() {
vec4 rounded_primary_color = byteround(primary_color);
vec4 primary_fragment_color = vec4(0.0);
vec4 secondary_fragment_color = vec4(0.0);
if (!(gl_FragCoord.x >= float(scissor_x1) && gl_FragCoord.y >= float(scissor_y1) && gl_FragCoord.x < float(scissor_x2) && gl_FragCoord.y < float(scissor_y2))) discard;
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((texcolor0.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;
next_combiner_buffer.a = last_tex_env_out.a;

vec3 color_output_1 = byteround(clamp((vec3(1.0) - primary_fragment_color.rgb) * (const_color[1].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_1 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_1, alpha_output_1), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;
next_combiner_buffer.a = last_tex_env_out.a;

vec3 color_output_2 = byteround(clamp((vec3(1.0) - last_tex_env_out.rgb) * (combiner_buffer.rgb) + (secondary_fragment_color.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_2 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_2, alpha_output_2), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;
next_combiner_buffer.a = last_tex_env_out.a;

vec3 color_output_3 = byteround(clamp((const_color[3].rgb) * (vec3(1.0) - texcolor0.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_3 = byteround(clamp((const_color[3].a) * (1.0 - texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_3, alpha_output_3), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;
next_combiner_buffer.a = last_tex_env_out.a;

vec3 color_output_4 = byteround(clamp((const_color[4].rgb) * (texcolor0.rgb) + (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_4 = byteround(clamp((const_color[4].a) * (texcolor0.a) + (last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_4, alpha_output_4), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_5 = byteround(clamp((rounded_primary_color.rgb) * (const_color[5].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_5 = byteround(clamp((rounded_primary_color.a) * (const_color[5].a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_5, alpha_output_5), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: 72E65B0ADDC989B1, 8E031CA1EF8AB965
// program: 4940142D60DA9543, 5D764F9A6220D694, 8E031CA1EF8AB965
// shader: 8B30, 58E3D16E1AEDE978

precision highp int;
precision highp float;
precision highp samplerBuffer;
precision highp usampler2D;
precision highp uimage2D;
in vec4 primary_color;
in vec2 texcoord0;
in vec2 texcoord1;
in vec2 texcoord2;
in float texcoord0_w;
in vec4 normquat;
in vec3 view;

#ifndef CITRA_GLES
in vec4 gl_FragCoord;
#endif // CITRA_GLES
out vec4 color;

uniform sampler2D tex0;
uniform sampler2D tex1;
uniform sampler2D tex2;
uniform samplerCube tex_cube;
uniform samplerBuffer texture_buffer_lut_lf;
uniform samplerBuffer texture_buffer_lut_rg;
uniform samplerBuffer texture_buffer_lut_rgba;

#define NUM_TEV_STAGES 6
#define NUM_LIGHTS 8
#define NUM_LIGHTING_SAMPLERS 24

struct LightSrc {
    vec3 specular_0;
    vec3 specular_1;
    vec3 diffuse;
    vec3 ambient;
    vec3 position;
    vec3 spot_direction;
    float dist_atten_bias;
    float dist_atten_scale;
};

layout (std140) uniform shader_data {
    int alphatest_ref;
    float depth_scale;
    float depth_offset;
    float shadow_bias_constant;
    float shadow_bias_linear;
    int scissor_x1;
    int scissor_y1;
    int scissor_x2;
    int scissor_y2;
    int fog_lut_offset;
    int proctex_noise_lut_offset;
    int proctex_color_map_offset;
    int proctex_alpha_map_offset;
    int proctex_lut_offset;
    int proctex_diff_lut_offset;
    float proctex_bias;
    vec3 fog_color;
    vec2 proctex_noise_f;
    vec2 proctex_noise_a;
    vec2 proctex_noise_p;
    vec4 const_color[NUM_TEV_STAGES];
    vec4 tev_combiner_buffer_color;
    vec4 clip_coef;
};

layout (std140) uniform shader_light_data {
    ivec4 lighting_lut_offset[NUM_LIGHTING_SAMPLERS / 4];
    vec3 lighting_global_ambient;
    LightSrc light_src[NUM_LIGHTS];
    float lut_scale_d0;
    float lut_scale_d1;
    float lut_scale_sp;
    float lut_scale_fr;
    float lut_scale_rb;
    float lut_scale_rg;
    float lut_scale_rr;
    int shadow_texture_bias;
};

// Rotate the vector v by the quaternion q
vec3 quaternion_rotate(vec4 q, vec3 v) {
    return v + 2.0 * cross(q.xyz, cross(q.xyz, v) + q.w * v);
}

float LookupLightingLUT(int lut_index, int index, float delta) {
    vec2 entry = texelFetch(texture_buffer_lut_lf, lighting_lut_offset[lut_index >> 2][lut_index & 3] + index).rg;
    return entry.r + entry.g * delta;
}

float LookupLightingLUTUnsigned(int lut_index, float pos) {
    int index = clamp(int(pos * 256.0), 0, 255);
    float delta = pos * 256.0 - float(index);
    return LookupLightingLUT(lut_index, index, delta);
}

float LookupLightingLUTSigned(int lut_index, float pos) {
    int index = clamp(int(pos * 128.0), -128, 127);
    float delta = pos * 128.0 - float(index);
    if (index < 0) index += 256;
    return LookupLightingLUT(lut_index, index, delta);
}

float byteround(float x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec2 byteround(vec2 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec3 byteround(vec3 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec4 byteround(vec4 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

// PICA's LOD formula for 2D textures.
// This LOD formula is the same as the LOD lower limit defined in OpenGL.
// f(x, y) >= max{m_u, m_v, m_w}
// (See OpenGL 4.6 spec, 8.14.1 - Scale Factor and Level-of-Detail)
float getLod(vec2 coord) {
    vec2 d = max(abs(dFdx(coord)), abs(dFdy(coord)));
    return log2(max(d.x, d.y));
}

vec4 shadowTexture(vec2 uv, float w) {
    return vec4(1.0);
}

vec4 shadowTextureCube(vec2 uv, float w) {
    return vec4(1.0);
}

void main() {
vec4 rounded_primary_color = byteround(primary_color);
vec4 primary_fragment_color = vec4(0.0);
vec4 secondary_fragment_color = vec4(0.0);
if (!(gl_FragCoord.x >= float(scissor_x1) && gl_FragCoord.y >= float(scissor_y1) && gl_FragCoord.x < float(scissor_x2) && gl_FragCoord.y < float(scissor_y2))) discard;
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((texcolor0.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.a = last_tex_env_out.a;

vec3 color_output_1 = byteround(clamp((vec3(1.0) - primary_fragment_color.rgb) * (const_color[1].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_1 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_1, alpha_output_1), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_2 = byteround(clamp((vec3(1.0) - last_tex_env_out.rgb) * (combiner_buffer.rgb) + (secondary_fragment_color.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_2 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_2, alpha_output_2), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_3 = byteround(clamp((vec3(1.0) - texcolor0.rgb) * (const_color[3].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_3 = byteround(clamp((texcolor0.a) * (const_color[3].a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_3, alpha_output_3), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;

vec3 color_output_4 = byteround(clamp((texcolor0.rgb) * (const_color[4].rgb) + (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_4 = byteround(clamp((1.0 - texcolor0.a) * (const_color[4].a) + (last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_4, alpha_output_4), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_5 = byteround(clamp((rounded_primary_color.rgb) * (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_5 = byteround(clamp((rounded_primary_color.a) * (last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_5, alpha_output_5), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: BD7EBFF586317CCA, 58E3D16E1AEDE978
// program: 4940142D60DA9543, 5D764F9A6220D694, 58E3D16E1AEDE978
// shader: 8B30, 352ED9D7A85918E0

precision highp int;
precision highp float;
precision highp samplerBuffer;
precision highp usampler2D;
precision highp uimage2D;
in vec4 primary_color;
in vec2 texcoord0;
in vec2 texcoord1;
in vec2 texcoord2;
in float texcoord0_w;
in vec4 normquat;
in vec3 view;

#ifndef CITRA_GLES
in vec4 gl_FragCoord;
#endif // CITRA_GLES
out vec4 color;

uniform sampler2D tex0;
uniform sampler2D tex1;
uniform sampler2D tex2;
uniform samplerCube tex_cube;
uniform samplerBuffer texture_buffer_lut_lf;
uniform samplerBuffer texture_buffer_lut_rg;
uniform samplerBuffer texture_buffer_lut_rgba;

#define NUM_TEV_STAGES 6
#define NUM_LIGHTS 8
#define NUM_LIGHTING_SAMPLERS 24

struct LightSrc {
    vec3 specular_0;
    vec3 specular_1;
    vec3 diffuse;
    vec3 ambient;
    vec3 position;
    vec3 spot_direction;
    float dist_atten_bias;
    float dist_atten_scale;
};

layout (std140) uniform shader_data {
    int alphatest_ref;
    float depth_scale;
    float depth_offset;
    float shadow_bias_constant;
    float shadow_bias_linear;
    int scissor_x1;
    int scissor_y1;
    int scissor_x2;
    int scissor_y2;
    int fog_lut_offset;
    int proctex_noise_lut_offset;
    int proctex_color_map_offset;
    int proctex_alpha_map_offset;
    int proctex_lut_offset;
    int proctex_diff_lut_offset;
    float proctex_bias;
    vec3 fog_color;
    vec2 proctex_noise_f;
    vec2 proctex_noise_a;
    vec2 proctex_noise_p;
    vec4 const_color[NUM_TEV_STAGES];
    vec4 tev_combiner_buffer_color;
    vec4 clip_coef;
};

layout (std140) uniform shader_light_data {
    ivec4 lighting_lut_offset[NUM_LIGHTING_SAMPLERS / 4];
    vec3 lighting_global_ambient;
    LightSrc light_src[NUM_LIGHTS];
    float lut_scale_d0;
    float lut_scale_d1;
    float lut_scale_sp;
    float lut_scale_fr;
    float lut_scale_rb;
    float lut_scale_rg;
    float lut_scale_rr;
    int shadow_texture_bias;
};

// Rotate the vector v by the quaternion q
vec3 quaternion_rotate(vec4 q, vec3 v) {
    return v + 2.0 * cross(q.xyz, cross(q.xyz, v) + q.w * v);
}

float LookupLightingLUT(int lut_index, int index, float delta) {
    vec2 entry = texelFetch(texture_buffer_lut_lf, lighting_lut_offset[lut_index >> 2][lut_index & 3] + index).rg;
    return entry.r + entry.g * delta;
}

float LookupLightingLUTUnsigned(int lut_index, float pos) {
    int index = clamp(int(pos * 256.0), 0, 255);
    float delta = pos * 256.0 - float(index);
    return LookupLightingLUT(lut_index, index, delta);
}

float LookupLightingLUTSigned(int lut_index, float pos) {
    int index = clamp(int(pos * 128.0), -128, 127);
    float delta = pos * 128.0 - float(index);
    if (index < 0) index += 256;
    return LookupLightingLUT(lut_index, index, delta);
}

float byteround(float x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec2 byteround(vec2 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec3 byteround(vec3 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec4 byteround(vec4 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

// PICA's LOD formula for 2D textures.
// This LOD formula is the same as the LOD lower limit defined in OpenGL.
// f(x, y) >= max{m_u, m_v, m_w}
// (See OpenGL 4.6 spec, 8.14.1 - Scale Factor and Level-of-Detail)
float getLod(vec2 coord) {
    vec2 d = max(abs(dFdx(coord)), abs(dFdy(coord)));
    return log2(max(d.x, d.y));
}

vec4 shadowTexture(vec2 uv, float w) {
    return vec4(1.0);
}

vec4 shadowTextureCube(vec2 uv, float w) {
    return vec4(1.0);
}

void main() {
vec4 rounded_primary_color = byteround(primary_color);
vec4 primary_fragment_color = vec4(0.0);
vec4 secondary_fragment_color = vec4(0.0);
if (!(gl_FragCoord.x >= float(scissor_x1) && gl_FragCoord.y >= float(scissor_y1) && gl_FragCoord.x < float(scissor_x2) && gl_FragCoord.y < float(scissor_y2))) discard;
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));
vec4 texcolor1 = textureLod(tex1, texcoord1, getLod(texcoord1 * vec2(textureSize(tex1, 0))));
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((texcolor0.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_1 = byteround(clamp((vec3(1.0) - primary_fragment_color.rgb) * (const_color[1].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_1 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_1, alpha_output_1), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_2 = byteround(clamp((const_color[2].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_2 = byteround(clamp((texcolor0.a) + (texcolor1.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_2, alpha_output_2), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;

vec3 color_output_3 = byteround(clamp((last_tex_env_out.rgb) * (texcolor0.rgb) + (const_color[3].rgb) * (vec3(1.0) - (texcolor0.rgb)), vec3(0.0), vec3(1.0)));
float alpha_output_3 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_3, alpha_output_3), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;

vec3 color_output_4 = byteround(clamp((last_tex_env_out.rgb) * (texcolor0.aaa), vec3(0.0), vec3(1.0)));
float alpha_output_4 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_4, alpha_output_4), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_5 = byteround(clamp((texcolor1.rgb) * (const_color[5].rgb) + (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_5 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_5, alpha_output_5), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: 087F26714C85D1A6, 352ED9D7A85918E0
// program: 4940142D60DA9543, 5D764F9A6220D694, 352ED9D7A85918E0
// shader: 8B30, 6D57C165F6099E99

precision highp int;
precision highp float;
precision highp samplerBuffer;
precision highp usampler2D;
precision highp uimage2D;
in vec4 primary_color;
in vec2 texcoord0;
in vec2 texcoord1;
in vec2 texcoord2;
in float texcoord0_w;
in vec4 normquat;
in vec3 view;

#ifndef CITRA_GLES
in vec4 gl_FragCoord;
#endif // CITRA_GLES
out vec4 color;

uniform sampler2D tex0;
uniform sampler2D tex1;
uniform sampler2D tex2;
uniform samplerCube tex_cube;
uniform samplerBuffer texture_buffer_lut_lf;
uniform samplerBuffer texture_buffer_lut_rg;
uniform samplerBuffer texture_buffer_lut_rgba;

#define NUM_TEV_STAGES 6
#define NUM_LIGHTS 8
#define NUM_LIGHTING_SAMPLERS 24

struct LightSrc {
    vec3 specular_0;
    vec3 specular_1;
    vec3 diffuse;
    vec3 ambient;
    vec3 position;
    vec3 spot_direction;
    float dist_atten_bias;
    float dist_atten_scale;
};

layout (std140) uniform shader_data {
    int alphatest_ref;
    float depth_scale;
    float depth_offset;
    float shadow_bias_constant;
    float shadow_bias_linear;
    int scissor_x1;
    int scissor_y1;
    int scissor_x2;
    int scissor_y2;
    int fog_lut_offset;
    int proctex_noise_lut_offset;
    int proctex_color_map_offset;
    int proctex_alpha_map_offset;
    int proctex_lut_offset;
    int proctex_diff_lut_offset;
    float proctex_bias;
    vec3 fog_color;
    vec2 proctex_noise_f;
    vec2 proctex_noise_a;
    vec2 proctex_noise_p;
    vec4 const_color[NUM_TEV_STAGES];
    vec4 tev_combiner_buffer_color;
    vec4 clip_coef;
};

layout (std140) uniform shader_light_data {
    ivec4 lighting_lut_offset[NUM_LIGHTING_SAMPLERS / 4];
    vec3 lighting_global_ambient;
    LightSrc light_src[NUM_LIGHTS];
    float lut_scale_d0;
    float lut_scale_d1;
    float lut_scale_sp;
    float lut_scale_fr;
    float lut_scale_rb;
    float lut_scale_rg;
    float lut_scale_rr;
    int shadow_texture_bias;
};

// Rotate the vector v by the quaternion q
vec3 quaternion_rotate(vec4 q, vec3 v) {
    return v + 2.0 * cross(q.xyz, cross(q.xyz, v) + q.w * v);
}

float LookupLightingLUT(int lut_index, int index, float delta) {
    vec2 entry = texelFetch(texture_buffer_lut_lf, lighting_lut_offset[lut_index >> 2][lut_index & 3] + index).rg;
    return entry.r + entry.g * delta;
}

float LookupLightingLUTUnsigned(int lut_index, float pos) {
    int index = clamp(int(pos * 256.0), 0, 255);
    float delta = pos * 256.0 - float(index);
    return LookupLightingLUT(lut_index, index, delta);
}

float LookupLightingLUTSigned(int lut_index, float pos) {
    int index = clamp(int(pos * 128.0), -128, 127);
    float delta = pos * 128.0 - float(index);
    if (index < 0) index += 256;
    return LookupLightingLUT(lut_index, index, delta);
}

float byteround(float x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec2 byteround(vec2 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec3 byteround(vec3 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec4 byteround(vec4 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

// PICA's LOD formula for 2D textures.
// This LOD formula is the same as the LOD lower limit defined in OpenGL.
// f(x, y) >= max{m_u, m_v, m_w}
// (See OpenGL 4.6 spec, 8.14.1 - Scale Factor and Level-of-Detail)
float getLod(vec2 coord) {
    vec2 d = max(abs(dFdx(coord)), abs(dFdy(coord)));
    return log2(max(d.x, d.y));
}

vec4 shadowTexture(vec2 uv, float w) {
    return vec4(1.0);
}

vec4 shadowTextureCube(vec2 uv, float w) {
    return vec4(1.0);
}

void main() {
vec4 rounded_primary_color = byteround(primary_color);
vec4 primary_fragment_color = vec4(0.0);
vec4 secondary_fragment_color = vec4(0.0);
if (!(gl_FragCoord.x >= float(scissor_x1) && gl_FragCoord.y >= float(scissor_y1) && gl_FragCoord.x < float(scissor_x2) && gl_FragCoord.y < float(scissor_y2))) discard;
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));
vec4 texcolor1 = textureLod(tex1, texcoord1, getLod(texcoord1 * vec2(textureSize(tex1, 0))));
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((texcolor0.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_1 = byteround(clamp((vec3(1.0) - primary_fragment_color.rgb) * (const_color[1].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_1 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_1, alpha_output_1), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_2 = byteround(clamp((const_color[2].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_2 = byteround(clamp((texcolor0.a) + (texcolor1.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_2, alpha_output_2), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;

vec3 color_output_3 = byteround(clamp((vec3(1.0) - texcolor0.rgb) * (const_color[3].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_3 = byteround(clamp((texcolor0.a) * (const_color[3].a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_3, alpha_output_3), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;

vec3 color_output_4 = byteround(clamp((texcolor0.rgb) * (const_color[4].rgb) + (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_4 = byteround(clamp((1.0 - texcolor0.a) * (const_color[4].a) + (last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_4, alpha_output_4), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_5 = byteround(clamp((rounded_primary_color.rgb) * (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_5 = byteround(clamp((rounded_primary_color.a) * (last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_5, alpha_output_5), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: A5906F736B9D458A, 6D57C165F6099E99
// program: 4940142D60DA9543, 5D764F9A6220D694, 6D57C165F6099E99
// shader: 8B30, 9CF5558F836EF5E5

precision highp int;
precision highp float;
precision highp samplerBuffer;
precision highp usampler2D;
precision highp uimage2D;
in vec4 primary_color;
in vec2 texcoord0;
in vec2 texcoord1;
in vec2 texcoord2;
in float texcoord0_w;
in vec4 normquat;
in vec3 view;

#ifndef CITRA_GLES
in vec4 gl_FragCoord;
#endif // CITRA_GLES
out vec4 color;

uniform sampler2D tex0;
uniform sampler2D tex1;
uniform sampler2D tex2;
uniform samplerCube tex_cube;
uniform samplerBuffer texture_buffer_lut_lf;
uniform samplerBuffer texture_buffer_lut_rg;
uniform samplerBuffer texture_buffer_lut_rgba;

#define NUM_TEV_STAGES 6
#define NUM_LIGHTS 8
#define NUM_LIGHTING_SAMPLERS 24

struct LightSrc {
    vec3 specular_0;
    vec3 specular_1;
    vec3 diffuse;
    vec3 ambient;
    vec3 position;
    vec3 spot_direction;
    float dist_atten_bias;
    float dist_atten_scale;
};

layout (std140) uniform shader_data {
    int alphatest_ref;
    float depth_scale;
    float depth_offset;
    float shadow_bias_constant;
    float shadow_bias_linear;
    int scissor_x1;
    int scissor_y1;
    int scissor_x2;
    int scissor_y2;
    int fog_lut_offset;
    int proctex_noise_lut_offset;
    int proctex_color_map_offset;
    int proctex_alpha_map_offset;
    int proctex_lut_offset;
    int proctex_diff_lut_offset;
    float proctex_bias;
    vec3 fog_color;
    vec2 proctex_noise_f;
    vec2 proctex_noise_a;
    vec2 proctex_noise_p;
    vec4 const_color[NUM_TEV_STAGES];
    vec4 tev_combiner_buffer_color;
    vec4 clip_coef;
};

layout (std140) uniform shader_light_data {
    ivec4 lighting_lut_offset[NUM_LIGHTING_SAMPLERS / 4];
    vec3 lighting_global_ambient;
    LightSrc light_src[NUM_LIGHTS];
    float lut_scale_d0;
    float lut_scale_d1;
    float lut_scale_sp;
    float lut_scale_fr;
    float lut_scale_rb;
    float lut_scale_rg;
    float lut_scale_rr;
    int shadow_texture_bias;
};

// Rotate the vector v by the quaternion q
vec3 quaternion_rotate(vec4 q, vec3 v) {
    return v + 2.0 * cross(q.xyz, cross(q.xyz, v) + q.w * v);
}

float LookupLightingLUT(int lut_index, int index, float delta) {
    vec2 entry = texelFetch(texture_buffer_lut_lf, lighting_lut_offset[lut_index >> 2][lut_index & 3] + index).rg;
    return entry.r + entry.g * delta;
}

float LookupLightingLUTUnsigned(int lut_index, float pos) {
    int index = clamp(int(pos * 256.0), 0, 255);
    float delta = pos * 256.0 - float(index);
    return LookupLightingLUT(lut_index, index, delta);
}

float LookupLightingLUTSigned(int lut_index, float pos) {
    int index = clamp(int(pos * 128.0), -128, 127);
    float delta = pos * 128.0 - float(index);
    if (index < 0) index += 256;
    return LookupLightingLUT(lut_index, index, delta);
}

float byteround(float x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec2 byteround(vec2 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec3 byteround(vec3 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec4 byteround(vec4 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

// PICA's LOD formula for 2D textures.
// This LOD formula is the same as the LOD lower limit defined in OpenGL.
// f(x, y) >= max{m_u, m_v, m_w}
// (See OpenGL 4.6 spec, 8.14.1 - Scale Factor and Level-of-Detail)
float getLod(vec2 coord) {
    vec2 d = max(abs(dFdx(coord)), abs(dFdy(coord)));
    return log2(max(d.x, d.y));
}

vec4 shadowTexture(vec2 uv, float w) {
    return vec4(1.0);
}

vec4 shadowTextureCube(vec2 uv, float w) {
    return vec4(1.0);
}

void main() {
vec4 rounded_primary_color = byteround(primary_color);
vec4 primary_fragment_color = vec4(0.0);
vec4 secondary_fragment_color = vec4(0.0);
if (!(gl_FragCoord.x >= float(scissor_x1) && gl_FragCoord.y >= float(scissor_y1) && gl_FragCoord.x < float(scissor_x2) && gl_FragCoord.y < float(scissor_y2))) discard;
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));
vec4 texcolor1 = textureLod(tex1, texcoord1, getLod(texcoord1 * vec2(textureSize(tex1, 0))));
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((texcolor0.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_1 = byteround(clamp((vec3(1.0) - primary_fragment_color.rgb) * (const_color[1].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_1 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_1, alpha_output_1), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_2 = byteround(clamp((const_color[2].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_2 = byteround(clamp((texcolor0.a) + (texcolor1.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_2, alpha_output_2), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;

vec3 color_output_3 = byteround(clamp((vec3(1.0) - texcolor0.rgb) * (const_color[3].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_3 = byteround(clamp((texcolor0.a) * (const_color[3].a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_3, alpha_output_3), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;

vec3 color_output_4 = byteround(clamp((texcolor0.rgb) * (const_color[4].rgb) + (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_4 = byteround(clamp((1.0 - texcolor0.a) * (const_color[4].a) + (last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_4, alpha_output_4), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_5 = byteround(clamp((rounded_primary_color.rgb) * (const_color[5].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_5 = byteround(clamp((rounded_primary_color.a) * (const_color[5].a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_5, alpha_output_5), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: A5906F732565CC90, 9CF5558F836EF5E5
// program: 4940142D60DA9543, 5D764F9A6220D694, 9CF5558F836EF5E5
// shader: 8B30, A229EC8A7299654B

precision highp int;
precision highp float;
precision highp samplerBuffer;
precision highp usampler2D;
precision highp uimage2D;
in vec4 primary_color;
in vec2 texcoord0;
in vec2 texcoord1;
in vec2 texcoord2;
in float texcoord0_w;
in vec4 normquat;
in vec3 view;

#ifndef CITRA_GLES
in vec4 gl_FragCoord;
#endif // CITRA_GLES
out vec4 color;

uniform sampler2D tex0;
uniform sampler2D tex1;
uniform sampler2D tex2;
uniform samplerCube tex_cube;
uniform samplerBuffer texture_buffer_lut_lf;
uniform samplerBuffer texture_buffer_lut_rg;
uniform samplerBuffer texture_buffer_lut_rgba;

#define NUM_TEV_STAGES 6
#define NUM_LIGHTS 8
#define NUM_LIGHTING_SAMPLERS 24

struct LightSrc {
    vec3 specular_0;
    vec3 specular_1;
    vec3 diffuse;
    vec3 ambient;
    vec3 position;
    vec3 spot_direction;
    float dist_atten_bias;
    float dist_atten_scale;
};

layout (std140) uniform shader_data {
    int alphatest_ref;
    float depth_scale;
    float depth_offset;
    float shadow_bias_constant;
    float shadow_bias_linear;
    int scissor_x1;
    int scissor_y1;
    int scissor_x2;
    int scissor_y2;
    int fog_lut_offset;
    int proctex_noise_lut_offset;
    int proctex_color_map_offset;
    int proctex_alpha_map_offset;
    int proctex_lut_offset;
    int proctex_diff_lut_offset;
    float proctex_bias;
    vec3 fog_color;
    vec2 proctex_noise_f;
    vec2 proctex_noise_a;
    vec2 proctex_noise_p;
    vec4 const_color[NUM_TEV_STAGES];
    vec4 tev_combiner_buffer_color;
    vec4 clip_coef;
};

layout (std140) uniform shader_light_data {
    ivec4 lighting_lut_offset[NUM_LIGHTING_SAMPLERS / 4];
    vec3 lighting_global_ambient;
    LightSrc light_src[NUM_LIGHTS];
    float lut_scale_d0;
    float lut_scale_d1;
    float lut_scale_sp;
    float lut_scale_fr;
    float lut_scale_rb;
    float lut_scale_rg;
    float lut_scale_rr;
    int shadow_texture_bias;
};

// Rotate the vector v by the quaternion q
vec3 quaternion_rotate(vec4 q, vec3 v) {
    return v + 2.0 * cross(q.xyz, cross(q.xyz, v) + q.w * v);
}

float LookupLightingLUT(int lut_index, int index, float delta) {
    vec2 entry = texelFetch(texture_buffer_lut_lf, lighting_lut_offset[lut_index >> 2][lut_index & 3] + index).rg;
    return entry.r + entry.g * delta;
}

float LookupLightingLUTUnsigned(int lut_index, float pos) {
    int index = clamp(int(pos * 256.0), 0, 255);
    float delta = pos * 256.0 - float(index);
    return LookupLightingLUT(lut_index, index, delta);
}

float LookupLightingLUTSigned(int lut_index, float pos) {
    int index = clamp(int(pos * 128.0), -128, 127);
    float delta = pos * 128.0 - float(index);
    if (index < 0) index += 256;
    return LookupLightingLUT(lut_index, index, delta);
}

float byteround(float x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec2 byteround(vec2 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec3 byteround(vec3 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec4 byteround(vec4 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

// PICA's LOD formula for 2D textures.
// This LOD formula is the same as the LOD lower limit defined in OpenGL.
// f(x, y) >= max{m_u, m_v, m_w}
// (See OpenGL 4.6 spec, 8.14.1 - Scale Factor and Level-of-Detail)
float getLod(vec2 coord) {
    vec2 d = max(abs(dFdx(coord)), abs(dFdy(coord)));
    return log2(max(d.x, d.y));
}

vec4 shadowTexture(vec2 uv, float w) {
    return vec4(1.0);
}

vec4 shadowTextureCube(vec2 uv, float w) {
    return vec4(1.0);
}

void main() {
vec4 rounded_primary_color = byteround(primary_color);
vec4 primary_fragment_color = vec4(0.0);
vec4 secondary_fragment_color = vec4(0.0);
if (!(gl_FragCoord.x >= float(scissor_x1) && gl_FragCoord.y >= float(scissor_y1) && gl_FragCoord.x < float(scissor_x2) && gl_FragCoord.y < float(scissor_y2))) discard;
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));
vec4 texcolor1 = textureLod(tex1, texcoord1, getLod(texcoord1 * vec2(textureSize(tex1, 0))));
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((texcolor0.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_1 = byteround(clamp((vec3(1.0) - primary_fragment_color.rgb) * (const_color[1].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_1 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_1, alpha_output_1), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_2 = byteround(clamp((const_color[2].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_2 = byteround(clamp((texcolor0.a) + (texcolor1.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_2, alpha_output_2), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;

vec3 color_output_3 = byteround(clamp((const_color[3].rgb) * (vec3(1.0) - texcolor0.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_3 = byteround(clamp((const_color[3].a) * (1.0 - texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_3, alpha_output_3), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;

vec3 color_output_4 = byteround(clamp((const_color[4].rgb) * (texcolor0.rgb) + (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_4 = byteround(clamp((const_color[4].a) * (texcolor0.a) + (last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_4, alpha_output_4), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_5 = byteround(clamp((rounded_primary_color.rgb) * (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_5 = byteround(clamp((rounded_primary_color.a) * (last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_5, alpha_output_5), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: 6A088B8CEA625330, A229EC8A7299654B
// program: 4940142D60DA9543, 5D764F9A6220D694, A229EC8A7299654B
// shader: 8B30, 99FF8EF14D3EAA71

precision highp int;
precision highp float;
precision highp samplerBuffer;
precision highp usampler2D;
precision highp uimage2D;
in vec4 primary_color;
in vec2 texcoord0;
in vec2 texcoord1;
in vec2 texcoord2;
in float texcoord0_w;
in vec4 normquat;
in vec3 view;

#ifndef CITRA_GLES
in vec4 gl_FragCoord;
#endif // CITRA_GLES
out vec4 color;

uniform sampler2D tex0;
uniform sampler2D tex1;
uniform sampler2D tex2;
uniform samplerCube tex_cube;
uniform samplerBuffer texture_buffer_lut_lf;
uniform samplerBuffer texture_buffer_lut_rg;
uniform samplerBuffer texture_buffer_lut_rgba;

#define NUM_TEV_STAGES 6
#define NUM_LIGHTS 8
#define NUM_LIGHTING_SAMPLERS 24

struct LightSrc {
    vec3 specular_0;
    vec3 specular_1;
    vec3 diffuse;
    vec3 ambient;
    vec3 position;
    vec3 spot_direction;
    float dist_atten_bias;
    float dist_atten_scale;
};

layout (std140) uniform shader_data {
    int alphatest_ref;
    float depth_scale;
    float depth_offset;
    float shadow_bias_constant;
    float shadow_bias_linear;
    int scissor_x1;
    int scissor_y1;
    int scissor_x2;
    int scissor_y2;
    int fog_lut_offset;
    int proctex_noise_lut_offset;
    int proctex_color_map_offset;
    int proctex_alpha_map_offset;
    int proctex_lut_offset;
    int proctex_diff_lut_offset;
    float proctex_bias;
    vec3 fog_color;
    vec2 proctex_noise_f;
    vec2 proctex_noise_a;
    vec2 proctex_noise_p;
    vec4 const_color[NUM_TEV_STAGES];
    vec4 tev_combiner_buffer_color;
    vec4 clip_coef;
};

layout (std140) uniform shader_light_data {
    ivec4 lighting_lut_offset[NUM_LIGHTING_SAMPLERS / 4];
    vec3 lighting_global_ambient;
    LightSrc light_src[NUM_LIGHTS];
    float lut_scale_d0;
    float lut_scale_d1;
    float lut_scale_sp;
    float lut_scale_fr;
    float lut_scale_rb;
    float lut_scale_rg;
    float lut_scale_rr;
    int shadow_texture_bias;
};

// Rotate the vector v by the quaternion q
vec3 quaternion_rotate(vec4 q, vec3 v) {
    return v + 2.0 * cross(q.xyz, cross(q.xyz, v) + q.w * v);
}

float LookupLightingLUT(int lut_index, int index, float delta) {
    vec2 entry = texelFetch(texture_buffer_lut_lf, lighting_lut_offset[lut_index >> 2][lut_index & 3] + index).rg;
    return entry.r + entry.g * delta;
}

float LookupLightingLUTUnsigned(int lut_index, float pos) {
    int index = clamp(int(pos * 256.0), 0, 255);
    float delta = pos * 256.0 - float(index);
    return LookupLightingLUT(lut_index, index, delta);
}

float LookupLightingLUTSigned(int lut_index, float pos) {
    int index = clamp(int(pos * 128.0), -128, 127);
    float delta = pos * 128.0 - float(index);
    if (index < 0) index += 256;
    return LookupLightingLUT(lut_index, index, delta);
}

float byteround(float x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec2 byteround(vec2 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec3 byteround(vec3 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec4 byteround(vec4 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

// PICA's LOD formula for 2D textures.
// This LOD formula is the same as the LOD lower limit defined in OpenGL.
// f(x, y) >= max{m_u, m_v, m_w}
// (See OpenGL 4.6 spec, 8.14.1 - Scale Factor and Level-of-Detail)
float getLod(vec2 coord) {
    vec2 d = max(abs(dFdx(coord)), abs(dFdy(coord)));
    return log2(max(d.x, d.y));
}

vec4 shadowTexture(vec2 uv, float w) {
    return vec4(1.0);
}

vec4 shadowTextureCube(vec2 uv, float w) {
    return vec4(1.0);
}

void main() {
vec4 rounded_primary_color = byteround(primary_color);
vec4 primary_fragment_color = vec4(0.0);
vec4 secondary_fragment_color = vec4(0.0);
if (!(gl_FragCoord.x >= float(scissor_x1) && gl_FragCoord.y >= float(scissor_y1) && gl_FragCoord.x < float(scissor_x2) && gl_FragCoord.y < float(scissor_y2))) discard;
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));
vec4 texcolor1 = textureLod(tex1, texcoord1, getLod(texcoord1 * vec2(textureSize(tex1, 0))));
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((texcolor0.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_1 = byteround(clamp((vec3(1.0) - primary_fragment_color.rgb) * (const_color[1].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_1 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_1, alpha_output_1), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_2 = byteround(clamp((texcolor0.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_2 = byteround(clamp((texcolor0.a) + (texcolor1.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_2, alpha_output_2), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_3 = byteround(clamp((const_color[3].rgb) * (texcolor0.rgb) + (combiner_buffer.rgb) * (vec3(1.0) - (texcolor0.rgb)), vec3(0.0), vec3(1.0)));
float alpha_output_3 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_3, alpha_output_3), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_4 = byteround(clamp((last_tex_env_out.rgb) * (texcolor0.aaa), vec3(0.0), vec3(1.0)));
float alpha_output_4 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_4, alpha_output_4), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_5 = byteround(clamp((texcolor1.rgb) * (const_color[5].rgb) + (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_5 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_5, alpha_output_5), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: 175B3EC84A4D24FB, 99FF8EF14D3EAA71
// program: 4940142D60DA9543, 5D764F9A6220D694, 99FF8EF14D3EAA71
// shader: 8B30, B0023CB25D77107F

precision highp int;
precision highp float;
precision highp samplerBuffer;
precision highp usampler2D;
precision highp uimage2D;
in vec4 primary_color;
in vec2 texcoord0;
in vec2 texcoord1;
in vec2 texcoord2;
in float texcoord0_w;
in vec4 normquat;
in vec3 view;

#ifndef CITRA_GLES
in vec4 gl_FragCoord;
#endif // CITRA_GLES
out vec4 color;

uniform sampler2D tex0;
uniform sampler2D tex1;
uniform sampler2D tex2;
uniform samplerCube tex_cube;
uniform samplerBuffer texture_buffer_lut_lf;
uniform samplerBuffer texture_buffer_lut_rg;
uniform samplerBuffer texture_buffer_lut_rgba;

#define NUM_TEV_STAGES 6
#define NUM_LIGHTS 8
#define NUM_LIGHTING_SAMPLERS 24

struct LightSrc {
    vec3 specular_0;
    vec3 specular_1;
    vec3 diffuse;
    vec3 ambient;
    vec3 position;
    vec3 spot_direction;
    float dist_atten_bias;
    float dist_atten_scale;
};

layout (std140) uniform shader_data {
    int alphatest_ref;
    float depth_scale;
    float depth_offset;
    float shadow_bias_constant;
    float shadow_bias_linear;
    int scissor_x1;
    int scissor_y1;
    int scissor_x2;
    int scissor_y2;
    int fog_lut_offset;
    int proctex_noise_lut_offset;
    int proctex_color_map_offset;
    int proctex_alpha_map_offset;
    int proctex_lut_offset;
    int proctex_diff_lut_offset;
    float proctex_bias;
    vec3 fog_color;
    vec2 proctex_noise_f;
    vec2 proctex_noise_a;
    vec2 proctex_noise_p;
    vec4 const_color[NUM_TEV_STAGES];
    vec4 tev_combiner_buffer_color;
    vec4 clip_coef;
};

layout (std140) uniform shader_light_data {
    ivec4 lighting_lut_offset[NUM_LIGHTING_SAMPLERS / 4];
    vec3 lighting_global_ambient;
    LightSrc light_src[NUM_LIGHTS];
    float lut_scale_d0;
    float lut_scale_d1;
    float lut_scale_sp;
    float lut_scale_fr;
    float lut_scale_rb;
    float lut_scale_rg;
    float lut_scale_rr;
    int shadow_texture_bias;
};

// Rotate the vector v by the quaternion q
vec3 quaternion_rotate(vec4 q, vec3 v) {
    return v + 2.0 * cross(q.xyz, cross(q.xyz, v) + q.w * v);
}

float LookupLightingLUT(int lut_index, int index, float delta) {
    vec2 entry = texelFetch(texture_buffer_lut_lf, lighting_lut_offset[lut_index >> 2][lut_index & 3] + index).rg;
    return entry.r + entry.g * delta;
}

float LookupLightingLUTUnsigned(int lut_index, float pos) {
    int index = clamp(int(pos * 256.0), 0, 255);
    float delta = pos * 256.0 - float(index);
    return LookupLightingLUT(lut_index, index, delta);
}

float LookupLightingLUTSigned(int lut_index, float pos) {
    int index = clamp(int(pos * 128.0), -128, 127);
    float delta = pos * 128.0 - float(index);
    if (index < 0) index += 256;
    return LookupLightingLUT(lut_index, index, delta);
}

float byteround(float x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec2 byteround(vec2 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec3 byteround(vec3 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec4 byteround(vec4 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

// PICA's LOD formula for 2D textures.
// This LOD formula is the same as the LOD lower limit defined in OpenGL.
// f(x, y) >= max{m_u, m_v, m_w}
// (See OpenGL 4.6 spec, 8.14.1 - Scale Factor and Level-of-Detail)
float getLod(vec2 coord) {
    vec2 d = max(abs(dFdx(coord)), abs(dFdy(coord)));
    return log2(max(d.x, d.y));
}

vec4 shadowTexture(vec2 uv, float w) {
    return vec4(1.0);
}

vec4 shadowTextureCube(vec2 uv, float w) {
    return vec4(1.0);
}

void main() {
vec4 rounded_primary_color = byteround(primary_color);
vec4 primary_fragment_color = vec4(0.0);
vec4 secondary_fragment_color = vec4(0.0);
if (!(gl_FragCoord.x >= float(scissor_x1) && gl_FragCoord.y >= float(scissor_y1) && gl_FragCoord.x < float(scissor_x2) && gl_FragCoord.y < float(scissor_y2))) discard;
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));
vec4 texcolor1 = textureLod(tex1, texcoord1, getLod(texcoord1 * vec2(textureSize(tex1, 0))));
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((texcolor0.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_1 = byteround(clamp((vec3(1.0) - primary_fragment_color.rgb) * (const_color[1].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_1 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_1, alpha_output_1), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_2 = byteround(clamp((texcolor0.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_2 = byteround(clamp((texcolor0.a) + (texcolor1.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_2, alpha_output_2), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_3 = byteround(clamp((const_color[3].rgb) * (vec3(1.0) - texcolor0.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_3 = byteround(clamp((const_color[3].a) * (1.0 - texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_3, alpha_output_3), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_4 = byteround(clamp((const_color[4].rgb) * (texcolor0.rgb) + (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_4 = byteround(clamp((const_color[4].a) * (texcolor0.a) + (last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_4, alpha_output_4), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_5 = byteround(clamp((rounded_primary_color.rgb) * (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_5 = byteround(clamp((rounded_primary_color.a) * (last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_5, alpha_output_5), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: 6A088B8C3356DAA5, B0023CB25D77107F
// program: 4940142D60DA9543, 5D764F9A6220D694, B0023CB25D77107F
// shader: 8B30, 1B81F2CA1B50297E

precision highp int;
precision highp float;
precision highp samplerBuffer;
precision highp usampler2D;
precision highp uimage2D;
in vec4 primary_color;
in vec2 texcoord0;
in vec2 texcoord1;
in vec2 texcoord2;
in float texcoord0_w;
in vec4 normquat;
in vec3 view;

#ifndef CITRA_GLES
in vec4 gl_FragCoord;
#endif // CITRA_GLES
out vec4 color;

uniform sampler2D tex0;
uniform sampler2D tex1;
uniform sampler2D tex2;
uniform samplerCube tex_cube;
uniform samplerBuffer texture_buffer_lut_lf;
uniform samplerBuffer texture_buffer_lut_rg;
uniform samplerBuffer texture_buffer_lut_rgba;

#define NUM_TEV_STAGES 6
#define NUM_LIGHTS 8
#define NUM_LIGHTING_SAMPLERS 24

struct LightSrc {
    vec3 specular_0;
    vec3 specular_1;
    vec3 diffuse;
    vec3 ambient;
    vec3 position;
    vec3 spot_direction;
    float dist_atten_bias;
    float dist_atten_scale;
};

layout (std140) uniform shader_data {
    int alphatest_ref;
    float depth_scale;
    float depth_offset;
    float shadow_bias_constant;
    float shadow_bias_linear;
    int scissor_x1;
    int scissor_y1;
    int scissor_x2;
    int scissor_y2;
    int fog_lut_offset;
    int proctex_noise_lut_offset;
    int proctex_color_map_offset;
    int proctex_alpha_map_offset;
    int proctex_lut_offset;
    int proctex_diff_lut_offset;
    float proctex_bias;
    vec3 fog_color;
    vec2 proctex_noise_f;
    vec2 proctex_noise_a;
    vec2 proctex_noise_p;
    vec4 const_color[NUM_TEV_STAGES];
    vec4 tev_combiner_buffer_color;
    vec4 clip_coef;
};

layout (std140) uniform shader_light_data {
    ivec4 lighting_lut_offset[NUM_LIGHTING_SAMPLERS / 4];
    vec3 lighting_global_ambient;
    LightSrc light_src[NUM_LIGHTS];
    float lut_scale_d0;
    float lut_scale_d1;
    float lut_scale_sp;
    float lut_scale_fr;
    float lut_scale_rb;
    float lut_scale_rg;
    float lut_scale_rr;
    int shadow_texture_bias;
};

// Rotate the vector v by the quaternion q
vec3 quaternion_rotate(vec4 q, vec3 v) {
    return v + 2.0 * cross(q.xyz, cross(q.xyz, v) + q.w * v);
}

float LookupLightingLUT(int lut_index, int index, float delta) {
    vec2 entry = texelFetch(texture_buffer_lut_lf, lighting_lut_offset[lut_index >> 2][lut_index & 3] + index).rg;
    return entry.r + entry.g * delta;
}

float LookupLightingLUTUnsigned(int lut_index, float pos) {
    int index = clamp(int(pos * 256.0), 0, 255);
    float delta = pos * 256.0 - float(index);
    return LookupLightingLUT(lut_index, index, delta);
}

float LookupLightingLUTSigned(int lut_index, float pos) {
    int index = clamp(int(pos * 128.0), -128, 127);
    float delta = pos * 128.0 - float(index);
    if (index < 0) index += 256;
    return LookupLightingLUT(lut_index, index, delta);
}

float byteround(float x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec2 byteround(vec2 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec3 byteround(vec3 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec4 byteround(vec4 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

// PICA's LOD formula for 2D textures.
// This LOD formula is the same as the LOD lower limit defined in OpenGL.
// f(x, y) >= max{m_u, m_v, m_w}
// (See OpenGL 4.6 spec, 8.14.1 - Scale Factor and Level-of-Detail)
float getLod(vec2 coord) {
    vec2 d = max(abs(dFdx(coord)), abs(dFdy(coord)));
    return log2(max(d.x, d.y));
}

vec4 shadowTexture(vec2 uv, float w) {
    return vec4(1.0);
}

vec4 shadowTextureCube(vec2 uv, float w) {
    return vec4(1.0);
}

void main() {
vec4 rounded_primary_color = byteround(primary_color);
vec4 primary_fragment_color = vec4(0.0);
vec4 secondary_fragment_color = vec4(0.0);
if (!(gl_FragCoord.x >= float(scissor_x1) && gl_FragCoord.y >= float(scissor_y1) && gl_FragCoord.x < float(scissor_x2) && gl_FragCoord.y < float(scissor_y2))) discard;
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));
vec4 texcolor1 = textureLod(tex1, texcoord1, getLod(texcoord1 * vec2(textureSize(tex1, 0))));
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((texcolor0.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_1 = byteround(clamp((vec3(1.0) - primary_fragment_color.rgb) * (const_color[1].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_1 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_1, alpha_output_1), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_2 = byteround(clamp((texcolor0.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_2 = byteround(clamp((texcolor0.a) + (texcolor1.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_2, alpha_output_2), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_3 = byteround(clamp((vec3(1.0) - texcolor0.rgb) * (const_color[3].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_3 = byteround(clamp((texcolor0.a) * (const_color[3].a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_3, alpha_output_3), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_4 = byteround(clamp((texcolor0.rgb) * (const_color[4].rgb) + (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_4 = byteround(clamp((1.0 - texcolor0.a) * (const_color[4].a) + (last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_4, alpha_output_4), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_5 = byteround(clamp((rounded_primary_color.rgb) * (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_5 = byteround(clamp((rounded_primary_color.a) * (last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_5, alpha_output_5), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: A5906F73B2A9CC1F, 1B81F2CA1B50297E
// program: 4940142D60DA9543, 5D764F9A6220D694, 1B81F2CA1B50297E
// shader: 8B30, AAB2FC9153489E62

precision highp int;
precision highp float;
precision highp samplerBuffer;
precision highp usampler2D;
precision highp uimage2D;
in vec4 primary_color;
in vec2 texcoord0;
in vec2 texcoord1;
in vec2 texcoord2;
in float texcoord0_w;
in vec4 normquat;
in vec3 view;

#ifndef CITRA_GLES
in vec4 gl_FragCoord;
#endif // CITRA_GLES
out vec4 color;

uniform sampler2D tex0;
uniform sampler2D tex1;
uniform sampler2D tex2;
uniform samplerCube tex_cube;
uniform samplerBuffer texture_buffer_lut_lf;
uniform samplerBuffer texture_buffer_lut_rg;
uniform samplerBuffer texture_buffer_lut_rgba;

#define NUM_TEV_STAGES 6
#define NUM_LIGHTS 8
#define NUM_LIGHTING_SAMPLERS 24

struct LightSrc {
    vec3 specular_0;
    vec3 specular_1;
    vec3 diffuse;
    vec3 ambient;
    vec3 position;
    vec3 spot_direction;
    float dist_atten_bias;
    float dist_atten_scale;
};

layout (std140) uniform shader_data {
    int alphatest_ref;
    float depth_scale;
    float depth_offset;
    float shadow_bias_constant;
    float shadow_bias_linear;
    int scissor_x1;
    int scissor_y1;
    int scissor_x2;
    int scissor_y2;
    int fog_lut_offset;
    int proctex_noise_lut_offset;
    int proctex_color_map_offset;
    int proctex_alpha_map_offset;
    int proctex_lut_offset;
    int proctex_diff_lut_offset;
    float proctex_bias;
    vec3 fog_color;
    vec2 proctex_noise_f;
    vec2 proctex_noise_a;
    vec2 proctex_noise_p;
    vec4 const_color[NUM_TEV_STAGES];
    vec4 tev_combiner_buffer_color;
    vec4 clip_coef;
};

layout (std140) uniform shader_light_data {
    ivec4 lighting_lut_offset[NUM_LIGHTING_SAMPLERS / 4];
    vec3 lighting_global_ambient;
    LightSrc light_src[NUM_LIGHTS];
    float lut_scale_d0;
    float lut_scale_d1;
    float lut_scale_sp;
    float lut_scale_fr;
    float lut_scale_rb;
    float lut_scale_rg;
    float lut_scale_rr;
    int shadow_texture_bias;
};

// Rotate the vector v by the quaternion q
vec3 quaternion_rotate(vec4 q, vec3 v) {
    return v + 2.0 * cross(q.xyz, cross(q.xyz, v) + q.w * v);
}

float LookupLightingLUT(int lut_index, int index, float delta) {
    vec2 entry = texelFetch(texture_buffer_lut_lf, lighting_lut_offset[lut_index >> 2][lut_index & 3] + index).rg;
    return entry.r + entry.g * delta;
}

float LookupLightingLUTUnsigned(int lut_index, float pos) {
    int index = clamp(int(pos * 256.0), 0, 255);
    float delta = pos * 256.0 - float(index);
    return LookupLightingLUT(lut_index, index, delta);
}

float LookupLightingLUTSigned(int lut_index, float pos) {
    int index = clamp(int(pos * 128.0), -128, 127);
    float delta = pos * 128.0 - float(index);
    if (index < 0) index += 256;
    return LookupLightingLUT(lut_index, index, delta);
}

float byteround(float x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec2 byteround(vec2 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec3 byteround(vec3 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec4 byteround(vec4 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

// PICA's LOD formula for 2D textures.
// This LOD formula is the same as the LOD lower limit defined in OpenGL.
// f(x, y) >= max{m_u, m_v, m_w}
// (See OpenGL 4.6 spec, 8.14.1 - Scale Factor and Level-of-Detail)
float getLod(vec2 coord) {
    vec2 d = max(abs(dFdx(coord)), abs(dFdy(coord)));
    return log2(max(d.x, d.y));
}

vec4 shadowTexture(vec2 uv, float w) {
    return vec4(1.0);
}

vec4 shadowTextureCube(vec2 uv, float w) {
    return vec4(1.0);
}

void main() {
vec4 rounded_primary_color = byteround(primary_color);
vec4 primary_fragment_color = vec4(0.0);
vec4 secondary_fragment_color = vec4(0.0);
if (!(gl_FragCoord.x >= float(scissor_x1) && gl_FragCoord.y >= float(scissor_y1) && gl_FragCoord.x < float(scissor_x2) && gl_FragCoord.y < float(scissor_y2))) discard;
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));
vec4 texcolor1 = textureLod(tex1, texcoord1, getLod(texcoord1 * vec2(textureSize(tex1, 0))));
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((texcolor0.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_1 = byteround(clamp((vec3(1.0) - primary_fragment_color.rgb) * (const_color[1].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_1 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_1, alpha_output_1), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_2 = byteround(clamp((texcolor0.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_2 = byteround(clamp((texcolor0.a) + (texcolor1.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_2, alpha_output_2), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_3 = byteround(clamp((vec3(1.0) - texcolor0.rgb) * (const_color[3].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_3 = byteround(clamp((texcolor0.a) * (const_color[3].a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_3, alpha_output_3), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_4 = byteround(clamp((texcolor0.rgb) * (const_color[4].rgb) + (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_4 = byteround(clamp((1.0 - texcolor0.a) * (const_color[4].a) + (last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_4, alpha_output_4), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_5 = byteround(clamp((rounded_primary_color.rgb) * (const_color[5].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_5 = byteround(clamp((rounded_primary_color.a) * (const_color[5].a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_5, alpha_output_5), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: A5906F73FC514505, AAB2FC9153489E62
// program: 4940142D60DA9543, 5D764F9A6220D694, AAB2FC9153489E62
// reference: 3CAB2CDCADCD979A, CA388C44D4F5C19E
// shader: 8B30, DF7723AC30221E44

precision highp int;
precision highp float;
precision highp samplerBuffer;
precision highp usampler2D;
precision highp uimage2D;
in vec4 primary_color;
in vec2 texcoord0;
in vec2 texcoord1;
in vec2 texcoord2;
in float texcoord0_w;
in vec4 normquat;
in vec3 view;

#ifndef CITRA_GLES
in vec4 gl_FragCoord;
#endif // CITRA_GLES
out vec4 color;

uniform sampler2D tex0;
uniform sampler2D tex1;
uniform sampler2D tex2;
uniform samplerCube tex_cube;
uniform samplerBuffer texture_buffer_lut_lf;
uniform samplerBuffer texture_buffer_lut_rg;
uniform samplerBuffer texture_buffer_lut_rgba;

#define NUM_TEV_STAGES 6
#define NUM_LIGHTS 8
#define NUM_LIGHTING_SAMPLERS 24

struct LightSrc {
    vec3 specular_0;
    vec3 specular_1;
    vec3 diffuse;
    vec3 ambient;
    vec3 position;
    vec3 spot_direction;
    float dist_atten_bias;
    float dist_atten_scale;
};

layout (std140) uniform shader_data {
    int alphatest_ref;
    float depth_scale;
    float depth_offset;
    float shadow_bias_constant;
    float shadow_bias_linear;
    int scissor_x1;
    int scissor_y1;
    int scissor_x2;
    int scissor_y2;
    int fog_lut_offset;
    int proctex_noise_lut_offset;
    int proctex_color_map_offset;
    int proctex_alpha_map_offset;
    int proctex_lut_offset;
    int proctex_diff_lut_offset;
    float proctex_bias;
    vec3 fog_color;
    vec2 proctex_noise_f;
    vec2 proctex_noise_a;
    vec2 proctex_noise_p;
    vec4 const_color[NUM_TEV_STAGES];
    vec4 tev_combiner_buffer_color;
    vec4 clip_coef;
};

layout (std140) uniform shader_light_data {
    ivec4 lighting_lut_offset[NUM_LIGHTING_SAMPLERS / 4];
    vec3 lighting_global_ambient;
    LightSrc light_src[NUM_LIGHTS];
    float lut_scale_d0;
    float lut_scale_d1;
    float lut_scale_sp;
    float lut_scale_fr;
    float lut_scale_rb;
    float lut_scale_rg;
    float lut_scale_rr;
    int shadow_texture_bias;
};

// Rotate the vector v by the quaternion q
vec3 quaternion_rotate(vec4 q, vec3 v) {
    return v + 2.0 * cross(q.xyz, cross(q.xyz, v) + q.w * v);
}

float LookupLightingLUT(int lut_index, int index, float delta) {
    vec2 entry = texelFetch(texture_buffer_lut_lf, lighting_lut_offset[lut_index >> 2][lut_index & 3] + index).rg;
    return entry.r + entry.g * delta;
}

float LookupLightingLUTUnsigned(int lut_index, float pos) {
    int index = clamp(int(pos * 256.0), 0, 255);
    float delta = pos * 256.0 - float(index);
    return LookupLightingLUT(lut_index, index, delta);
}

float LookupLightingLUTSigned(int lut_index, float pos) {
    int index = clamp(int(pos * 128.0), -128, 127);
    float delta = pos * 128.0 - float(index);
    if (index < 0) index += 256;
    return LookupLightingLUT(lut_index, index, delta);
}

float byteround(float x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec2 byteround(vec2 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec3 byteround(vec3 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec4 byteround(vec4 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

// PICA's LOD formula for 2D textures.
// This LOD formula is the same as the LOD lower limit defined in OpenGL.
// f(x, y) >= max{m_u, m_v, m_w}
// (See OpenGL 4.6 spec, 8.14.1 - Scale Factor and Level-of-Detail)
float getLod(vec2 coord) {
    vec2 d = max(abs(dFdx(coord)), abs(dFdy(coord)));
    return log2(max(d.x, d.y));
}

vec4 shadowTexture(vec2 uv, float w) {
    return vec4(1.0);
}

vec4 shadowTextureCube(vec2 uv, float w) {
    return vec4(1.0);
}

void main() {
vec4 rounded_primary_color = byteround(primary_color);
vec4 primary_fragment_color = vec4(0.0);
vec4 secondary_fragment_color = vec4(0.0);
if (!(gl_FragCoord.x >= float(scissor_x1) && gl_FragCoord.y >= float(scissor_y1) && gl_FragCoord.x < float(scissor_x2) && gl_FragCoord.y < float(scissor_y2))) discard;
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));
vec4 texcolor1 = textureLod(tex1, texcoord1, getLod(texcoord1 * vec2(textureSize(tex1, 0))));

vec4 diffuse_sum = vec4(0.0, 0.0, 0.0, 1.0);
vec4 specular_sum = vec4(0.0, 0.0, 0.0, 1.0);
vec3 light_vector = vec3(0.0);
vec3 refl_value = vec3(0.0);
vec3 spot_dir = vec3(0.0);
vec3 half_vector = vec3(0.0);
float dot_product = 0.0;
float clamp_highlights = 1.0;
float geo_factor = 1.0;
vec3 surface_normal = 2.0 * (texcolor1).rgb - 1.0;
surface_normal.z = sqrt(max((1.0 - (surface_normal.x*surface_normal.x + surface_normal.y*surface_normal.y)), 0.0));
vec3 surface_tangent = vec3(1.0, 0.0, 0.0);
vec4 normalized_normquat = normalize(normquat);
vec3 normal = quaternion_rotate(normalized_normquat, surface_normal);
vec3 tangent = quaternion_rotate(normalized_normquat, surface_tangent);
vec4 shadow = vec4(1.0);
light_vector = normalize(light_src[0].position);
spot_dir = light_src[0].spot_direction;
half_vector = normalize(view) + light_vector;
dot_product = max(dot(light_vector, normal), 0.0);
refl_value.r = 1.0;
refl_value.g = refl_value.r;
refl_value.b = refl_value.r;
diffuse_sum.rgb += ((light_src[0].diffuse * dot_product) + light_src[0].ambient) * 1.0;
specular_sum.rgb += (((lut_scale_d0 * LookupLightingLUTUnsigned(0, max(dot(normal, normalize(half_vector)), 0.0))) * light_src[0].specular_0) + (light_src[0].specular_1)) * clamp_highlights * 1.0;
diffuse_sum.rgb += lighting_global_ambient;
primary_fragment_color = clamp(diffuse_sum, vec4(0.0), vec4(1.0));
secondary_fragment_color = clamp(specular_sum, vec4(0.0), vec4(1.0));

vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((const_color[0].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((rounded_primary_color.a) * (texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_1 = byteround(clamp((last_tex_env_out.rgb) * (texcolor0.rgb) + (const_color[1].rgb) * (vec3(1.0) - (texcolor0.rgb)), vec3(0.0), vec3(1.0)));
float alpha_output_1 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_1, alpha_output_1), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;

vec3 color_output_2 = byteround(clamp((vec3(1.0) - primary_fragment_color.rgb) * (const_color[2].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_2 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_2, alpha_output_2), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_3 = byteround(clamp((vec3(1.0) - last_tex_env_out.rgb) * (combiner_buffer.rgb) + (secondary_fragment_color.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_3 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_3, alpha_output_3), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_4 = byteround(clamp((last_tex_env_out.rgb) * (rounded_primary_color.rgb) + (const_color[4].rgb) * (vec3(1.0) - (rounded_primary_color.rgb)), vec3(0.0), vec3(1.0)));
float alpha_output_4 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_4, alpha_output_4), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: D3B98F0A1FC29BCC, DF7723AC30221E44
// program: CA388C44D4F5C19E, AD7922A63ED54CA7, DF7723AC30221E44
// shader: 8B30, E0AB8018973B1CF2

precision highp int;
precision highp float;
precision highp samplerBuffer;
precision highp usampler2D;
precision highp uimage2D;
in vec4 primary_color;
in vec2 texcoord0;
in vec2 texcoord1;
in vec2 texcoord2;
in float texcoord0_w;
in vec4 normquat;
in vec3 view;

#ifndef CITRA_GLES
in vec4 gl_FragCoord;
#endif // CITRA_GLES
out vec4 color;

uniform sampler2D tex0;
uniform sampler2D tex1;
uniform sampler2D tex2;
uniform samplerCube tex_cube;
uniform samplerBuffer texture_buffer_lut_lf;
uniform samplerBuffer texture_buffer_lut_rg;
uniform samplerBuffer texture_buffer_lut_rgba;

#define NUM_TEV_STAGES 6
#define NUM_LIGHTS 8
#define NUM_LIGHTING_SAMPLERS 24

struct LightSrc {
    vec3 specular_0;
    vec3 specular_1;
    vec3 diffuse;
    vec3 ambient;
    vec3 position;
    vec3 spot_direction;
    float dist_atten_bias;
    float dist_atten_scale;
};

layout (std140) uniform shader_data {
    int alphatest_ref;
    float depth_scale;
    float depth_offset;
    float shadow_bias_constant;
    float shadow_bias_linear;
    int scissor_x1;
    int scissor_y1;
    int scissor_x2;
    int scissor_y2;
    int fog_lut_offset;
    int proctex_noise_lut_offset;
    int proctex_color_map_offset;
    int proctex_alpha_map_offset;
    int proctex_lut_offset;
    int proctex_diff_lut_offset;
    float proctex_bias;
    vec3 fog_color;
    vec2 proctex_noise_f;
    vec2 proctex_noise_a;
    vec2 proctex_noise_p;
    vec4 const_color[NUM_TEV_STAGES];
    vec4 tev_combiner_buffer_color;
    vec4 clip_coef;
};

layout (std140) uniform shader_light_data {
    ivec4 lighting_lut_offset[NUM_LIGHTING_SAMPLERS / 4];
    vec3 lighting_global_ambient;
    LightSrc light_src[NUM_LIGHTS];
    float lut_scale_d0;
    float lut_scale_d1;
    float lut_scale_sp;
    float lut_scale_fr;
    float lut_scale_rb;
    float lut_scale_rg;
    float lut_scale_rr;
    int shadow_texture_bias;
};

// Rotate the vector v by the quaternion q
vec3 quaternion_rotate(vec4 q, vec3 v) {
    return v + 2.0 * cross(q.xyz, cross(q.xyz, v) + q.w * v);
}

float LookupLightingLUT(int lut_index, int index, float delta) {
    vec2 entry = texelFetch(texture_buffer_lut_lf, lighting_lut_offset[lut_index >> 2][lut_index & 3] + index).rg;
    return entry.r + entry.g * delta;
}

float LookupLightingLUTUnsigned(int lut_index, float pos) {
    int index = clamp(int(pos * 256.0), 0, 255);
    float delta = pos * 256.0 - float(index);
    return LookupLightingLUT(lut_index, index, delta);
}

float LookupLightingLUTSigned(int lut_index, float pos) {
    int index = clamp(int(pos * 128.0), -128, 127);
    float delta = pos * 128.0 - float(index);
    if (index < 0) index += 256;
    return LookupLightingLUT(lut_index, index, delta);
}

float byteround(float x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec2 byteround(vec2 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec3 byteround(vec3 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec4 byteround(vec4 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

// PICA's LOD formula for 2D textures.
// This LOD formula is the same as the LOD lower limit defined in OpenGL.
// f(x, y) >= max{m_u, m_v, m_w}
// (See OpenGL 4.6 spec, 8.14.1 - Scale Factor and Level-of-Detail)
float getLod(vec2 coord) {
    vec2 d = max(abs(dFdx(coord)), abs(dFdy(coord)));
    return log2(max(d.x, d.y));
}

vec4 shadowTexture(vec2 uv, float w) {
    return vec4(1.0);
}

vec4 shadowTextureCube(vec2 uv, float w) {
    return vec4(1.0);
}

void main() {
vec4 rounded_primary_color = byteround(primary_color);
vec4 primary_fragment_color = vec4(0.0);
vec4 secondary_fragment_color = vec4(0.0);
if (!(gl_FragCoord.x >= float(scissor_x1) && gl_FragCoord.y >= float(scissor_y1) && gl_FragCoord.x < float(scissor_x2) && gl_FragCoord.y < float(scissor_y2))) discard;
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((texcolor0.rgb) * (vec3(1.0) - rounded_primary_color.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((rounded_primary_color.a) * (texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;

vec3 color_output_1 = byteround(clamp((const_color[1].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_1 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_1, alpha_output_1), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;

vec3 color_output_2 = byteround(clamp((last_tex_env_out.rgb) * (combiner_buffer.rgb) + (const_color[2].rgb) * (vec3(1.0) - (combiner_buffer.rgb)), vec3(0.0), vec3(1.0)));
float alpha_output_2 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_2, alpha_output_2), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;

vec3 color_output_3 = byteround(clamp((last_tex_env_out.rgb) * (rounded_primary_color.rgb) + (const_color[3].rgb) * (vec3(1.0) - (rounded_primary_color.rgb)), vec3(0.0), vec3(1.0)));
float alpha_output_3 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_3, alpha_output_3), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: 6AED7EC209FBFA08, E0AB8018973B1CF2
// program: CA388C44D4F5C19E, AD7922A63ED54CA7, E0AB8018973B1CF2
// shader: 8B30, 32519FA0A5D7625C

precision highp int;
precision highp float;
precision highp samplerBuffer;
precision highp usampler2D;
precision highp uimage2D;
in vec4 primary_color;
in vec2 texcoord0;
in vec2 texcoord1;
in vec2 texcoord2;
in float texcoord0_w;
in vec4 normquat;
in vec3 view;

#ifndef CITRA_GLES
in vec4 gl_FragCoord;
#endif // CITRA_GLES
out vec4 color;

uniform sampler2D tex0;
uniform sampler2D tex1;
uniform sampler2D tex2;
uniform samplerCube tex_cube;
uniform samplerBuffer texture_buffer_lut_lf;
uniform samplerBuffer texture_buffer_lut_rg;
uniform samplerBuffer texture_buffer_lut_rgba;

#define NUM_TEV_STAGES 6
#define NUM_LIGHTS 8
#define NUM_LIGHTING_SAMPLERS 24

struct LightSrc {
    vec3 specular_0;
    vec3 specular_1;
    vec3 diffuse;
    vec3 ambient;
    vec3 position;
    vec3 spot_direction;
    float dist_atten_bias;
    float dist_atten_scale;
};

layout (std140) uniform shader_data {
    int alphatest_ref;
    float depth_scale;
    float depth_offset;
    float shadow_bias_constant;
    float shadow_bias_linear;
    int scissor_x1;
    int scissor_y1;
    int scissor_x2;
    int scissor_y2;
    int fog_lut_offset;
    int proctex_noise_lut_offset;
    int proctex_color_map_offset;
    int proctex_alpha_map_offset;
    int proctex_lut_offset;
    int proctex_diff_lut_offset;
    float proctex_bias;
    vec3 fog_color;
    vec2 proctex_noise_f;
    vec2 proctex_noise_a;
    vec2 proctex_noise_p;
    vec4 const_color[NUM_TEV_STAGES];
    vec4 tev_combiner_buffer_color;
    vec4 clip_coef;
};

layout (std140) uniform shader_light_data {
    ivec4 lighting_lut_offset[NUM_LIGHTING_SAMPLERS / 4];
    vec3 lighting_global_ambient;
    LightSrc light_src[NUM_LIGHTS];
    float lut_scale_d0;
    float lut_scale_d1;
    float lut_scale_sp;
    float lut_scale_fr;
    float lut_scale_rb;
    float lut_scale_rg;
    float lut_scale_rr;
    int shadow_texture_bias;
};

// Rotate the vector v by the quaternion q
vec3 quaternion_rotate(vec4 q, vec3 v) {
    return v + 2.0 * cross(q.xyz, cross(q.xyz, v) + q.w * v);
}

float LookupLightingLUT(int lut_index, int index, float delta) {
    vec2 entry = texelFetch(texture_buffer_lut_lf, lighting_lut_offset[lut_index >> 2][lut_index & 3] + index).rg;
    return entry.r + entry.g * delta;
}

float LookupLightingLUTUnsigned(int lut_index, float pos) {
    int index = clamp(int(pos * 256.0), 0, 255);
    float delta = pos * 256.0 - float(index);
    return LookupLightingLUT(lut_index, index, delta);
}

float LookupLightingLUTSigned(int lut_index, float pos) {
    int index = clamp(int(pos * 128.0), -128, 127);
    float delta = pos * 128.0 - float(index);
    if (index < 0) index += 256;
    return LookupLightingLUT(lut_index, index, delta);
}

float byteround(float x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec2 byteround(vec2 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec3 byteround(vec3 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec4 byteround(vec4 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

// PICA's LOD formula for 2D textures.
// This LOD formula is the same as the LOD lower limit defined in OpenGL.
// f(x, y) >= max{m_u, m_v, m_w}
// (See OpenGL 4.6 spec, 8.14.1 - Scale Factor and Level-of-Detail)
float getLod(vec2 coord) {
    vec2 d = max(abs(dFdx(coord)), abs(dFdy(coord)));
    return log2(max(d.x, d.y));
}

vec4 shadowTexture(vec2 uv, float w) {
    return vec4(1.0);
}

vec4 shadowTextureCube(vec2 uv, float w) {
    return vec4(1.0);
}

void main() {
vec4 rounded_primary_color = byteround(primary_color);
vec4 primary_fragment_color = vec4(0.0);
vec4 secondary_fragment_color = vec4(0.0);
if (!(gl_FragCoord.x >= float(scissor_x1) && gl_FragCoord.y >= float(scissor_y1) && gl_FragCoord.x < float(scissor_x2) && gl_FragCoord.y < float(scissor_y2))) discard;
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((texcolor0.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((rounded_primary_color.a) * (texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

if (int(last_tex_env_out.a * 255.0) <= alphatest_ref) discard;
gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: 778DD386A2E1352B, 32519FA0A5D7625C
// program: CA388C44D4F5C19E, AD7922A63ED54CA7, 32519FA0A5D7625C
// shader: 8B30, C59EA4758EB9FB8A

precision highp int;
precision highp float;
precision highp samplerBuffer;
precision highp usampler2D;
precision highp uimage2D;
in vec4 primary_color;
in vec2 texcoord0;
in vec2 texcoord1;
in vec2 texcoord2;
in float texcoord0_w;
in vec4 normquat;
in vec3 view;

#ifndef CITRA_GLES
in vec4 gl_FragCoord;
#endif // CITRA_GLES
out vec4 color;

uniform sampler2D tex0;
uniform sampler2D tex1;
uniform sampler2D tex2;
uniform samplerCube tex_cube;
uniform samplerBuffer texture_buffer_lut_lf;
uniform samplerBuffer texture_buffer_lut_rg;
uniform samplerBuffer texture_buffer_lut_rgba;

#define NUM_TEV_STAGES 6
#define NUM_LIGHTS 8
#define NUM_LIGHTING_SAMPLERS 24

struct LightSrc {
    vec3 specular_0;
    vec3 specular_1;
    vec3 diffuse;
    vec3 ambient;
    vec3 position;
    vec3 spot_direction;
    float dist_atten_bias;
    float dist_atten_scale;
};

layout (std140) uniform shader_data {
    int alphatest_ref;
    float depth_scale;
    float depth_offset;
    float shadow_bias_constant;
    float shadow_bias_linear;
    int scissor_x1;
    int scissor_y1;
    int scissor_x2;
    int scissor_y2;
    int fog_lut_offset;
    int proctex_noise_lut_offset;
    int proctex_color_map_offset;
    int proctex_alpha_map_offset;
    int proctex_lut_offset;
    int proctex_diff_lut_offset;
    float proctex_bias;
    vec3 fog_color;
    vec2 proctex_noise_f;
    vec2 proctex_noise_a;
    vec2 proctex_noise_p;
    vec4 const_color[NUM_TEV_STAGES];
    vec4 tev_combiner_buffer_color;
    vec4 clip_coef;
};

layout (std140) uniform shader_light_data {
    ivec4 lighting_lut_offset[NUM_LIGHTING_SAMPLERS / 4];
    vec3 lighting_global_ambient;
    LightSrc light_src[NUM_LIGHTS];
    float lut_scale_d0;
    float lut_scale_d1;
    float lut_scale_sp;
    float lut_scale_fr;
    float lut_scale_rb;
    float lut_scale_rg;
    float lut_scale_rr;
    int shadow_texture_bias;
};

// Rotate the vector v by the quaternion q
vec3 quaternion_rotate(vec4 q, vec3 v) {
    return v + 2.0 * cross(q.xyz, cross(q.xyz, v) + q.w * v);
}

float LookupLightingLUT(int lut_index, int index, float delta) {
    vec2 entry = texelFetch(texture_buffer_lut_lf, lighting_lut_offset[lut_index >> 2][lut_index & 3] + index).rg;
    return entry.r + entry.g * delta;
}

float LookupLightingLUTUnsigned(int lut_index, float pos) {
    int index = clamp(int(pos * 256.0), 0, 255);
    float delta = pos * 256.0 - float(index);
    return LookupLightingLUT(lut_index, index, delta);
}

float LookupLightingLUTSigned(int lut_index, float pos) {
    int index = clamp(int(pos * 128.0), -128, 127);
    float delta = pos * 128.0 - float(index);
    if (index < 0) index += 256;
    return LookupLightingLUT(lut_index, index, delta);
}

float byteround(float x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec2 byteround(vec2 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec3 byteround(vec3 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec4 byteround(vec4 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

// PICA's LOD formula for 2D textures.
// This LOD formula is the same as the LOD lower limit defined in OpenGL.
// f(x, y) >= max{m_u, m_v, m_w}
// (See OpenGL 4.6 spec, 8.14.1 - Scale Factor and Level-of-Detail)
float getLod(vec2 coord) {
    vec2 d = max(abs(dFdx(coord)), abs(dFdy(coord)));
    return log2(max(d.x, d.y));
}

vec4 shadowTexture(vec2 uv, float w) {
    return vec4(1.0);
}

vec4 shadowTextureCube(vec2 uv, float w) {
    return vec4(1.0);
}

void main() {
vec4 rounded_primary_color = byteround(primary_color);
vec4 primary_fragment_color = vec4(0.0);
vec4 secondary_fragment_color = vec4(0.0);
if (!(gl_FragCoord.x >= float(scissor_x1) && gl_FragCoord.y >= float(scissor_y1) && gl_FragCoord.x < float(scissor_x2) && gl_FragCoord.y < float(scissor_y2))) discard;
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((texcolor0.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((rounded_primary_color.a) * (texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: 778DD3864E56DE28, C59EA4758EB9FB8A
// program: CA388C44D4F5C19E, AD7922A63ED54CA7, C59EA4758EB9FB8A
// shader: 8B30, 7DF80A42D182C5C5

precision highp int;
precision highp float;
precision highp samplerBuffer;
precision highp usampler2D;
precision highp uimage2D;
in vec4 primary_color;
in vec2 texcoord0;
in vec2 texcoord1;
in vec2 texcoord2;
in float texcoord0_w;
in vec4 normquat;
in vec3 view;

#ifndef CITRA_GLES
in vec4 gl_FragCoord;
#endif // CITRA_GLES
out vec4 color;

uniform sampler2D tex0;
uniform sampler2D tex1;
uniform sampler2D tex2;
uniform samplerCube tex_cube;
uniform samplerBuffer texture_buffer_lut_lf;
uniform samplerBuffer texture_buffer_lut_rg;
uniform samplerBuffer texture_buffer_lut_rgba;

#define NUM_TEV_STAGES 6
#define NUM_LIGHTS 8
#define NUM_LIGHTING_SAMPLERS 24

struct LightSrc {
    vec3 specular_0;
    vec3 specular_1;
    vec3 diffuse;
    vec3 ambient;
    vec3 position;
    vec3 spot_direction;
    float dist_atten_bias;
    float dist_atten_scale;
};

layout (std140) uniform shader_data {
    int alphatest_ref;
    float depth_scale;
    float depth_offset;
    float shadow_bias_constant;
    float shadow_bias_linear;
    int scissor_x1;
    int scissor_y1;
    int scissor_x2;
    int scissor_y2;
    int fog_lut_offset;
    int proctex_noise_lut_offset;
    int proctex_color_map_offset;
    int proctex_alpha_map_offset;
    int proctex_lut_offset;
    int proctex_diff_lut_offset;
    float proctex_bias;
    vec3 fog_color;
    vec2 proctex_noise_f;
    vec2 proctex_noise_a;
    vec2 proctex_noise_p;
    vec4 const_color[NUM_TEV_STAGES];
    vec4 tev_combiner_buffer_color;
    vec4 clip_coef;
};

layout (std140) uniform shader_light_data {
    ivec4 lighting_lut_offset[NUM_LIGHTING_SAMPLERS / 4];
    vec3 lighting_global_ambient;
    LightSrc light_src[NUM_LIGHTS];
    float lut_scale_d0;
    float lut_scale_d1;
    float lut_scale_sp;
    float lut_scale_fr;
    float lut_scale_rb;
    float lut_scale_rg;
    float lut_scale_rr;
    int shadow_texture_bias;
};

// Rotate the vector v by the quaternion q
vec3 quaternion_rotate(vec4 q, vec3 v) {
    return v + 2.0 * cross(q.xyz, cross(q.xyz, v) + q.w * v);
}

float LookupLightingLUT(int lut_index, int index, float delta) {
    vec2 entry = texelFetch(texture_buffer_lut_lf, lighting_lut_offset[lut_index >> 2][lut_index & 3] + index).rg;
    return entry.r + entry.g * delta;
}

float LookupLightingLUTUnsigned(int lut_index, float pos) {
    int index = clamp(int(pos * 256.0), 0, 255);
    float delta = pos * 256.0 - float(index);
    return LookupLightingLUT(lut_index, index, delta);
}

float LookupLightingLUTSigned(int lut_index, float pos) {
    int index = clamp(int(pos * 128.0), -128, 127);
    float delta = pos * 128.0 - float(index);
    if (index < 0) index += 256;
    return LookupLightingLUT(lut_index, index, delta);
}

float byteround(float x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec2 byteround(vec2 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec3 byteround(vec3 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec4 byteround(vec4 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

// PICA's LOD formula for 2D textures.
// This LOD formula is the same as the LOD lower limit defined in OpenGL.
// f(x, y) >= max{m_u, m_v, m_w}
// (See OpenGL 4.6 spec, 8.14.1 - Scale Factor and Level-of-Detail)
float getLod(vec2 coord) {
    vec2 d = max(abs(dFdx(coord)), abs(dFdy(coord)));
    return log2(max(d.x, d.y));
}

vec4 shadowTexture(vec2 uv, float w) {
    return vec4(1.0);
}

vec4 shadowTextureCube(vec2 uv, float w) {
    return vec4(1.0);
}

void main() {
vec4 rounded_primary_color = byteround(primary_color);
vec4 primary_fragment_color = vec4(0.0);
vec4 secondary_fragment_color = vec4(0.0);
if (!(gl_FragCoord.x >= float(scissor_x1) && gl_FragCoord.y >= float(scissor_y1) && gl_FragCoord.x < float(scissor_x2) && gl_FragCoord.y < float(scissor_y2))) discard;
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((texcolor0.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((rounded_primary_color.a) * (texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

vec3 color_output_3 = byteround(clamp((const_color[3].rgb) * (vec3(1.0) - texcolor0.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_3 = byteround(clamp((const_color[3].a) * (1.0 - texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_3, alpha_output_3), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_4 = byteround(clamp((const_color[4].rgb) * (texcolor0.rgb) + (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_4 = byteround(clamp((const_color[4].a) * (texcolor0.a) + (last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_4, alpha_output_4), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_5 = byteround(clamp((rounded_primary_color.rgb) * (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_5 = byteround(clamp((rounded_primary_color.a) * (last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_5, alpha_output_5), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: 0167508A7ABA43A2, 7DF80A42D182C5C5
// program: 4940142D60DA9543, 5D764F9A6220D694, 7DF80A42D182C5C5
// shader: 8B30, D9EEAFEE3D3A50A3

precision highp int;
precision highp float;
precision highp samplerBuffer;
precision highp usampler2D;
precision highp uimage2D;
in vec4 primary_color;
in vec2 texcoord0;
in vec2 texcoord1;
in vec2 texcoord2;
in float texcoord0_w;
in vec4 normquat;
in vec3 view;

#ifndef CITRA_GLES
in vec4 gl_FragCoord;
#endif // CITRA_GLES
out vec4 color;

uniform sampler2D tex0;
uniform sampler2D tex1;
uniform sampler2D tex2;
uniform samplerCube tex_cube;
uniform samplerBuffer texture_buffer_lut_lf;
uniform samplerBuffer texture_buffer_lut_rg;
uniform samplerBuffer texture_buffer_lut_rgba;

#define NUM_TEV_STAGES 6
#define NUM_LIGHTS 8
#define NUM_LIGHTING_SAMPLERS 24

struct LightSrc {
    vec3 specular_0;
    vec3 specular_1;
    vec3 diffuse;
    vec3 ambient;
    vec3 position;
    vec3 spot_direction;
    float dist_atten_bias;
    float dist_atten_scale;
};

layout (std140) uniform shader_data {
    int alphatest_ref;
    float depth_scale;
    float depth_offset;
    float shadow_bias_constant;
    float shadow_bias_linear;
    int scissor_x1;
    int scissor_y1;
    int scissor_x2;
    int scissor_y2;
    int fog_lut_offset;
    int proctex_noise_lut_offset;
    int proctex_color_map_offset;
    int proctex_alpha_map_offset;
    int proctex_lut_offset;
    int proctex_diff_lut_offset;
    float proctex_bias;
    vec3 fog_color;
    vec2 proctex_noise_f;
    vec2 proctex_noise_a;
    vec2 proctex_noise_p;
    vec4 const_color[NUM_TEV_STAGES];
    vec4 tev_combiner_buffer_color;
    vec4 clip_coef;
};

layout (std140) uniform shader_light_data {
    ivec4 lighting_lut_offset[NUM_LIGHTING_SAMPLERS / 4];
    vec3 lighting_global_ambient;
    LightSrc light_src[NUM_LIGHTS];
    float lut_scale_d0;
    float lut_scale_d1;
    float lut_scale_sp;
    float lut_scale_fr;
    float lut_scale_rb;
    float lut_scale_rg;
    float lut_scale_rr;
    int shadow_texture_bias;
};

// Rotate the vector v by the quaternion q
vec3 quaternion_rotate(vec4 q, vec3 v) {
    return v + 2.0 * cross(q.xyz, cross(q.xyz, v) + q.w * v);
}

float LookupLightingLUT(int lut_index, int index, float delta) {
    vec2 entry = texelFetch(texture_buffer_lut_lf, lighting_lut_offset[lut_index >> 2][lut_index & 3] + index).rg;
    return entry.r + entry.g * delta;
}

float LookupLightingLUTUnsigned(int lut_index, float pos) {
    int index = clamp(int(pos * 256.0), 0, 255);
    float delta = pos * 256.0 - float(index);
    return LookupLightingLUT(lut_index, index, delta);
}

float LookupLightingLUTSigned(int lut_index, float pos) {
    int index = clamp(int(pos * 128.0), -128, 127);
    float delta = pos * 128.0 - float(index);
    if (index < 0) index += 256;
    return LookupLightingLUT(lut_index, index, delta);
}

float byteround(float x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec2 byteround(vec2 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec3 byteround(vec3 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec4 byteround(vec4 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

// PICA's LOD formula for 2D textures.
// This LOD formula is the same as the LOD lower limit defined in OpenGL.
// f(x, y) >= max{m_u, m_v, m_w}
// (See OpenGL 4.6 spec, 8.14.1 - Scale Factor and Level-of-Detail)
float getLod(vec2 coord) {
    vec2 d = max(abs(dFdx(coord)), abs(dFdy(coord)));
    return log2(max(d.x, d.y));
}

vec4 shadowTexture(vec2 uv, float w) {
    return vec4(1.0);
}

vec4 shadowTextureCube(vec2 uv, float w) {
    return vec4(1.0);
}

void main() {
vec4 rounded_primary_color = byteround(primary_color);
vec4 primary_fragment_color = vec4(0.0);
vec4 secondary_fragment_color = vec4(0.0);
if (!(gl_FragCoord.x >= float(scissor_x1) && gl_FragCoord.y >= float(scissor_y1) && gl_FragCoord.x < float(scissor_x2) && gl_FragCoord.y < float(scissor_y2))) discard;
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((texcolor0.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((rounded_primary_color.a) * (texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

vec3 color_output_3 = byteround(clamp((const_color[3].rgb) * (vec3(1.0) - texcolor0.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_3 = byteround(clamp((const_color[3].a) * (1.0 - texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_3, alpha_output_3), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_4 = byteround(clamp((const_color[4].rgb) * (texcolor0.rgb) + (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_4 = byteround(clamp((const_color[4].a) * (texcolor0.a) + (last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_4, alpha_output_4), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_5 = byteround(clamp((rounded_primary_color.rgb) * (const_color[5].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_5 = byteround(clamp((rounded_primary_color.a) * (const_color[5].a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_5, alpha_output_5), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: 0167508A3442CAB8, D9EEAFEE3D3A50A3
// program: 4940142D60DA9543, 5D764F9A6220D694, D9EEAFEE3D3A50A3
// shader: 8B30, 88DD8541344F5AF8

precision highp int;
precision highp float;
precision highp samplerBuffer;
precision highp usampler2D;
precision highp uimage2D;
in vec4 primary_color;
in vec2 texcoord0;
in vec2 texcoord1;
in vec2 texcoord2;
in float texcoord0_w;
in vec4 normquat;
in vec3 view;

#ifndef CITRA_GLES
in vec4 gl_FragCoord;
#endif // CITRA_GLES
out vec4 color;

uniform sampler2D tex0;
uniform sampler2D tex1;
uniform sampler2D tex2;
uniform samplerCube tex_cube;
uniform samplerBuffer texture_buffer_lut_lf;
uniform samplerBuffer texture_buffer_lut_rg;
uniform samplerBuffer texture_buffer_lut_rgba;

#define NUM_TEV_STAGES 6
#define NUM_LIGHTS 8
#define NUM_LIGHTING_SAMPLERS 24

struct LightSrc {
    vec3 specular_0;
    vec3 specular_1;
    vec3 diffuse;
    vec3 ambient;
    vec3 position;
    vec3 spot_direction;
    float dist_atten_bias;
    float dist_atten_scale;
};

layout (std140) uniform shader_data {
    int alphatest_ref;
    float depth_scale;
    float depth_offset;
    float shadow_bias_constant;
    float shadow_bias_linear;
    int scissor_x1;
    int scissor_y1;
    int scissor_x2;
    int scissor_y2;
    int fog_lut_offset;
    int proctex_noise_lut_offset;
    int proctex_color_map_offset;
    int proctex_alpha_map_offset;
    int proctex_lut_offset;
    int proctex_diff_lut_offset;
    float proctex_bias;
    vec3 fog_color;
    vec2 proctex_noise_f;
    vec2 proctex_noise_a;
    vec2 proctex_noise_p;
    vec4 const_color[NUM_TEV_STAGES];
    vec4 tev_combiner_buffer_color;
    vec4 clip_coef;
};

layout (std140) uniform shader_light_data {
    ivec4 lighting_lut_offset[NUM_LIGHTING_SAMPLERS / 4];
    vec3 lighting_global_ambient;
    LightSrc light_src[NUM_LIGHTS];
    float lut_scale_d0;
    float lut_scale_d1;
    float lut_scale_sp;
    float lut_scale_fr;
    float lut_scale_rb;
    float lut_scale_rg;
    float lut_scale_rr;
    int shadow_texture_bias;
};

// Rotate the vector v by the quaternion q
vec3 quaternion_rotate(vec4 q, vec3 v) {
    return v + 2.0 * cross(q.xyz, cross(q.xyz, v) + q.w * v);
}

float LookupLightingLUT(int lut_index, int index, float delta) {
    vec2 entry = texelFetch(texture_buffer_lut_lf, lighting_lut_offset[lut_index >> 2][lut_index & 3] + index).rg;
    return entry.r + entry.g * delta;
}

float LookupLightingLUTUnsigned(int lut_index, float pos) {
    int index = clamp(int(pos * 256.0), 0, 255);
    float delta = pos * 256.0 - float(index);
    return LookupLightingLUT(lut_index, index, delta);
}

float LookupLightingLUTSigned(int lut_index, float pos) {
    int index = clamp(int(pos * 128.0), -128, 127);
    float delta = pos * 128.0 - float(index);
    if (index < 0) index += 256;
    return LookupLightingLUT(lut_index, index, delta);
}

float byteround(float x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec2 byteround(vec2 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec3 byteround(vec3 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec4 byteround(vec4 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

// PICA's LOD formula for 2D textures.
// This LOD formula is the same as the LOD lower limit defined in OpenGL.
// f(x, y) >= max{m_u, m_v, m_w}
// (See OpenGL 4.6 spec, 8.14.1 - Scale Factor and Level-of-Detail)
float getLod(vec2 coord) {
    vec2 d = max(abs(dFdx(coord)), abs(dFdy(coord)));
    return log2(max(d.x, d.y));
}

vec4 shadowTexture(vec2 uv, float w) {
    return vec4(1.0);
}

vec4 shadowTextureCube(vec2 uv, float w) {
    return vec4(1.0);
}

void main() {
vec4 rounded_primary_color = byteround(primary_color);
vec4 primary_fragment_color = vec4(0.0);
vec4 secondary_fragment_color = vec4(0.0);
if (!(gl_FragCoord.x >= float(scissor_x1) && gl_FragCoord.y >= float(scissor_y1) && gl_FragCoord.x < float(scissor_x2) && gl_FragCoord.y < float(scissor_y2))) discard;
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((texcolor0.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((rounded_primary_color.a) * (texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

vec3 color_output_3 = byteround(clamp((vec3(1.0) - texcolor0.rgb) * (const_color[3].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_3 = byteround(clamp((texcolor0.a) * (const_color[3].a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_3, alpha_output_3), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_4 = byteround(clamp((texcolor0.rgb) * (const_color[4].rgb) + (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_4 = byteround(clamp((1.0 - texcolor0.a) * (const_color[4].a) + (last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_4, alpha_output_4), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_5 = byteround(clamp((rounded_primary_color.rgb) * (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_5 = byteround(clamp((rounded_primary_color.a) * (last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_5, alpha_output_5), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: CEFFB475FB455518, 88DD8541344F5AF8
// program: 4940142D60DA9543, 5D764F9A6220D694, 88DD8541344F5AF8
// shader: 8B30, 3DCAEF24B08EB406

precision highp int;
precision highp float;
precision highp samplerBuffer;
precision highp usampler2D;
precision highp uimage2D;
in vec4 primary_color;
in vec2 texcoord0;
in vec2 texcoord1;
in vec2 texcoord2;
in float texcoord0_w;
in vec4 normquat;
in vec3 view;

#ifndef CITRA_GLES
in vec4 gl_FragCoord;
#endif // CITRA_GLES
out vec4 color;

uniform sampler2D tex0;
uniform sampler2D tex1;
uniform sampler2D tex2;
uniform samplerCube tex_cube;
uniform samplerBuffer texture_buffer_lut_lf;
uniform samplerBuffer texture_buffer_lut_rg;
uniform samplerBuffer texture_buffer_lut_rgba;

#define NUM_TEV_STAGES 6
#define NUM_LIGHTS 8
#define NUM_LIGHTING_SAMPLERS 24

struct LightSrc {
    vec3 specular_0;
    vec3 specular_1;
    vec3 diffuse;
    vec3 ambient;
    vec3 position;
    vec3 spot_direction;
    float dist_atten_bias;
    float dist_atten_scale;
};

layout (std140) uniform shader_data {
    int alphatest_ref;
    float depth_scale;
    float depth_offset;
    float shadow_bias_constant;
    float shadow_bias_linear;
    int scissor_x1;
    int scissor_y1;
    int scissor_x2;
    int scissor_y2;
    int fog_lut_offset;
    int proctex_noise_lut_offset;
    int proctex_color_map_offset;
    int proctex_alpha_map_offset;
    int proctex_lut_offset;
    int proctex_diff_lut_offset;
    float proctex_bias;
    vec3 fog_color;
    vec2 proctex_noise_f;
    vec2 proctex_noise_a;
    vec2 proctex_noise_p;
    vec4 const_color[NUM_TEV_STAGES];
    vec4 tev_combiner_buffer_color;
    vec4 clip_coef;
};

layout (std140) uniform shader_light_data {
    ivec4 lighting_lut_offset[NUM_LIGHTING_SAMPLERS / 4];
    vec3 lighting_global_ambient;
    LightSrc light_src[NUM_LIGHTS];
    float lut_scale_d0;
    float lut_scale_d1;
    float lut_scale_sp;
    float lut_scale_fr;
    float lut_scale_rb;
    float lut_scale_rg;
    float lut_scale_rr;
    int shadow_texture_bias;
};

// Rotate the vector v by the quaternion q
vec3 quaternion_rotate(vec4 q, vec3 v) {
    return v + 2.0 * cross(q.xyz, cross(q.xyz, v) + q.w * v);
}

float LookupLightingLUT(int lut_index, int index, float delta) {
    vec2 entry = texelFetch(texture_buffer_lut_lf, lighting_lut_offset[lut_index >> 2][lut_index & 3] + index).rg;
    return entry.r + entry.g * delta;
}

float LookupLightingLUTUnsigned(int lut_index, float pos) {
    int index = clamp(int(pos * 256.0), 0, 255);
    float delta = pos * 256.0 - float(index);
    return LookupLightingLUT(lut_index, index, delta);
}

float LookupLightingLUTSigned(int lut_index, float pos) {
    int index = clamp(int(pos * 128.0), -128, 127);
    float delta = pos * 128.0 - float(index);
    if (index < 0) index += 256;
    return LookupLightingLUT(lut_index, index, delta);
}

float byteround(float x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec2 byteround(vec2 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec3 byteround(vec3 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec4 byteround(vec4 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

// PICA's LOD formula for 2D textures.
// This LOD formula is the same as the LOD lower limit defined in OpenGL.
// f(x, y) >= max{m_u, m_v, m_w}
// (See OpenGL 4.6 spec, 8.14.1 - Scale Factor and Level-of-Detail)
float getLod(vec2 coord) {
    vec2 d = max(abs(dFdx(coord)), abs(dFdy(coord)));
    return log2(max(d.x, d.y));
}

vec4 shadowTexture(vec2 uv, float w) {
    return vec4(1.0);
}

vec4 shadowTextureCube(vec2 uv, float w) {
    return vec4(1.0);
}

void main() {
vec4 rounded_primary_color = byteround(primary_color);
vec4 primary_fragment_color = vec4(0.0);
vec4 secondary_fragment_color = vec4(0.0);
if (!(gl_FragCoord.x >= float(scissor_x1) && gl_FragCoord.y >= float(scissor_y1) && gl_FragCoord.x < float(scissor_x2) && gl_FragCoord.y < float(scissor_y2))) discard;
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((texcolor0.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((rounded_primary_color.a) * (texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.a = last_tex_env_out.a;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

vec3 color_output_3 = byteround(clamp((texcolor0.rgb) + (rounded_primary_color.aaa), vec3(0.0), vec3(1.0)));
float alpha_output_3 = byteround(clamp((texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_3, alpha_output_3), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;

vec3 color_output_4 = byteround(clamp((const_color[4].aaa) * (last_tex_env_out.rgb) + (const_color[4].rgb) * (vec3(1.0) - (last_tex_env_out.rgb)), vec3(0.0), vec3(1.0)));
float alpha_output_4 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_4, alpha_output_4), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_5 = byteround(clamp((last_tex_env_out.rgb) * (rounded_primary_color.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_5 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_5, alpha_output_5), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: AA01CB7DAAD16F99, 3DCAEF24B08EB406
// program: 4940142D60DA9543, 5D764F9A6220D694, 3DCAEF24B08EB406
// shader: 8B30, CB7B81A3D860B2D2

precision highp int;
precision highp float;
precision highp samplerBuffer;
precision highp usampler2D;
precision highp uimage2D;
in vec4 primary_color;
in vec2 texcoord0;
in vec2 texcoord1;
in vec2 texcoord2;
in float texcoord0_w;
in vec4 normquat;
in vec3 view;

#ifndef CITRA_GLES
in vec4 gl_FragCoord;
#endif // CITRA_GLES
out vec4 color;

uniform sampler2D tex0;
uniform sampler2D tex1;
uniform sampler2D tex2;
uniform samplerCube tex_cube;
uniform samplerBuffer texture_buffer_lut_lf;
uniform samplerBuffer texture_buffer_lut_rg;
uniform samplerBuffer texture_buffer_lut_rgba;

#define NUM_TEV_STAGES 6
#define NUM_LIGHTS 8
#define NUM_LIGHTING_SAMPLERS 24

struct LightSrc {
    vec3 specular_0;
    vec3 specular_1;
    vec3 diffuse;
    vec3 ambient;
    vec3 position;
    vec3 spot_direction;
    float dist_atten_bias;
    float dist_atten_scale;
};

layout (std140) uniform shader_data {
    int alphatest_ref;
    float depth_scale;
    float depth_offset;
    float shadow_bias_constant;
    float shadow_bias_linear;
    int scissor_x1;
    int scissor_y1;
    int scissor_x2;
    int scissor_y2;
    int fog_lut_offset;
    int proctex_noise_lut_offset;
    int proctex_color_map_offset;
    int proctex_alpha_map_offset;
    int proctex_lut_offset;
    int proctex_diff_lut_offset;
    float proctex_bias;
    vec3 fog_color;
    vec2 proctex_noise_f;
    vec2 proctex_noise_a;
    vec2 proctex_noise_p;
    vec4 const_color[NUM_TEV_STAGES];
    vec4 tev_combiner_buffer_color;
    vec4 clip_coef;
};

layout (std140) uniform shader_light_data {
    ivec4 lighting_lut_offset[NUM_LIGHTING_SAMPLERS / 4];
    vec3 lighting_global_ambient;
    LightSrc light_src[NUM_LIGHTS];
    float lut_scale_d0;
    float lut_scale_d1;
    float lut_scale_sp;
    float lut_scale_fr;
    float lut_scale_rb;
    float lut_scale_rg;
    float lut_scale_rr;
    int shadow_texture_bias;
};

// Rotate the vector v by the quaternion q
vec3 quaternion_rotate(vec4 q, vec3 v) {
    return v + 2.0 * cross(q.xyz, cross(q.xyz, v) + q.w * v);
}

float LookupLightingLUT(int lut_index, int index, float delta) {
    vec2 entry = texelFetch(texture_buffer_lut_lf, lighting_lut_offset[lut_index >> 2][lut_index & 3] + index).rg;
    return entry.r + entry.g * delta;
}

float LookupLightingLUTUnsigned(int lut_index, float pos) {
    int index = clamp(int(pos * 256.0), 0, 255);
    float delta = pos * 256.0 - float(index);
    return LookupLightingLUT(lut_index, index, delta);
}

float LookupLightingLUTSigned(int lut_index, float pos) {
    int index = clamp(int(pos * 128.0), -128, 127);
    float delta = pos * 128.0 - float(index);
    if (index < 0) index += 256;
    return LookupLightingLUT(lut_index, index, delta);
}

float byteround(float x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec2 byteround(vec2 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec3 byteround(vec3 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec4 byteround(vec4 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

// PICA's LOD formula for 2D textures.
// This LOD formula is the same as the LOD lower limit defined in OpenGL.
// f(x, y) >= max{m_u, m_v, m_w}
// (See OpenGL 4.6 spec, 8.14.1 - Scale Factor and Level-of-Detail)
float getLod(vec2 coord) {
    vec2 d = max(abs(dFdx(coord)), abs(dFdy(coord)));
    return log2(max(d.x, d.y));
}

vec4 shadowTexture(vec2 uv, float w) {
    return vec4(1.0);
}

vec4 shadowTextureCube(vec2 uv, float w) {
    return vec4(1.0);
}

void main() {
vec4 rounded_primary_color = byteround(primary_color);
vec4 primary_fragment_color = vec4(0.0);
vec4 secondary_fragment_color = vec4(0.0);
if (!(gl_FragCoord.x >= float(scissor_x1) && gl_FragCoord.y >= float(scissor_y1) && gl_FragCoord.x < float(scissor_x2) && gl_FragCoord.y < float(scissor_y2))) discard;
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((texcolor0.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((rounded_primary_color.a) * (texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.a = last_tex_env_out.a;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

vec3 color_output_3 = byteround(clamp((const_color[3].rgb) * (vec3(1.0) - texcolor0.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_3 = byteround(clamp((const_color[3].a) * (1.0 - texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_3, alpha_output_3), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;

vec3 color_output_4 = byteround(clamp((const_color[4].rgb) * (texcolor0.rgb) + (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_4 = byteround(clamp((const_color[4].a) * (texcolor0.a) + (last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_4, alpha_output_4), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_5 = byteround(clamp((rounded_primary_color.rgb) * (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_5 = byteround(clamp((rounded_primary_color.a) * (last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_5, alpha_output_5), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: 0167508AC9AD3B3D, CB7B81A3D860B2D2
// program: 4940142D60DA9543, 5D764F9A6220D694, CB7B81A3D860B2D2
// shader: 8B30, 0405AC4C5CF04900

precision highp int;
precision highp float;
precision highp samplerBuffer;
precision highp usampler2D;
precision highp uimage2D;
in vec4 primary_color;
in vec2 texcoord0;
in vec2 texcoord1;
in vec2 texcoord2;
in float texcoord0_w;
in vec4 normquat;
in vec3 view;

#ifndef CITRA_GLES
in vec4 gl_FragCoord;
#endif // CITRA_GLES
out vec4 color;

uniform sampler2D tex0;
uniform sampler2D tex1;
uniform sampler2D tex2;
uniform samplerCube tex_cube;
uniform samplerBuffer texture_buffer_lut_lf;
uniform samplerBuffer texture_buffer_lut_rg;
uniform samplerBuffer texture_buffer_lut_rgba;

#define NUM_TEV_STAGES 6
#define NUM_LIGHTS 8
#define NUM_LIGHTING_SAMPLERS 24

struct LightSrc {
    vec3 specular_0;
    vec3 specular_1;
    vec3 diffuse;
    vec3 ambient;
    vec3 position;
    vec3 spot_direction;
    float dist_atten_bias;
    float dist_atten_scale;
};

layout (std140) uniform shader_data {
    int alphatest_ref;
    float depth_scale;
    float depth_offset;
    float shadow_bias_constant;
    float shadow_bias_linear;
    int scissor_x1;
    int scissor_y1;
    int scissor_x2;
    int scissor_y2;
    int fog_lut_offset;
    int proctex_noise_lut_offset;
    int proctex_color_map_offset;
    int proctex_alpha_map_offset;
    int proctex_lut_offset;
    int proctex_diff_lut_offset;
    float proctex_bias;
    vec3 fog_color;
    vec2 proctex_noise_f;
    vec2 proctex_noise_a;
    vec2 proctex_noise_p;
    vec4 const_color[NUM_TEV_STAGES];
    vec4 tev_combiner_buffer_color;
    vec4 clip_coef;
};

layout (std140) uniform shader_light_data {
    ivec4 lighting_lut_offset[NUM_LIGHTING_SAMPLERS / 4];
    vec3 lighting_global_ambient;
    LightSrc light_src[NUM_LIGHTS];
    float lut_scale_d0;
    float lut_scale_d1;
    float lut_scale_sp;
    float lut_scale_fr;
    float lut_scale_rb;
    float lut_scale_rg;
    float lut_scale_rr;
    int shadow_texture_bias;
};

// Rotate the vector v by the quaternion q
vec3 quaternion_rotate(vec4 q, vec3 v) {
    return v + 2.0 * cross(q.xyz, cross(q.xyz, v) + q.w * v);
}

float LookupLightingLUT(int lut_index, int index, float delta) {
    vec2 entry = texelFetch(texture_buffer_lut_lf, lighting_lut_offset[lut_index >> 2][lut_index & 3] + index).rg;
    return entry.r + entry.g * delta;
}

float LookupLightingLUTUnsigned(int lut_index, float pos) {
    int index = clamp(int(pos * 256.0), 0, 255);
    float delta = pos * 256.0 - float(index);
    return LookupLightingLUT(lut_index, index, delta);
}

float LookupLightingLUTSigned(int lut_index, float pos) {
    int index = clamp(int(pos * 128.0), -128, 127);
    float delta = pos * 128.0 - float(index);
    if (index < 0) index += 256;
    return LookupLightingLUT(lut_index, index, delta);
}

float byteround(float x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec2 byteround(vec2 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec3 byteround(vec3 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec4 byteround(vec4 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

// PICA's LOD formula for 2D textures.
// This LOD formula is the same as the LOD lower limit defined in OpenGL.
// f(x, y) >= max{m_u, m_v, m_w}
// (See OpenGL 4.6 spec, 8.14.1 - Scale Factor and Level-of-Detail)
float getLod(vec2 coord) {
    vec2 d = max(abs(dFdx(coord)), abs(dFdy(coord)));
    return log2(max(d.x, d.y));
}

vec4 shadowTexture(vec2 uv, float w) {
    return vec4(1.0);
}

vec4 shadowTextureCube(vec2 uv, float w) {
    return vec4(1.0);
}

void main() {
vec4 rounded_primary_color = byteround(primary_color);
vec4 primary_fragment_color = vec4(0.0);
vec4 secondary_fragment_color = vec4(0.0);
if (!(gl_FragCoord.x >= float(scissor_x1) && gl_FragCoord.y >= float(scissor_y1) && gl_FragCoord.x < float(scissor_x2) && gl_FragCoord.y < float(scissor_y2))) discard;
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((texcolor0.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((rounded_primary_color.a) * (texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.a = last_tex_env_out.a;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

vec3 color_output_3 = byteround(clamp((vec3(1.0) - texcolor0.rgb) * (const_color[3].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_3 = byteround(clamp((texcolor0.a) * (const_color[3].a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_3, alpha_output_3), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;

vec3 color_output_4 = byteround(clamp((texcolor0.rgb) * (const_color[4].rgb) + (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_4 = byteround(clamp((1.0 - texcolor0.a) * (const_color[4].a) + (last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_4, alpha_output_4), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_5 = byteround(clamp((rounded_primary_color.rgb) * (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_5 = byteround(clamp((rounded_primary_color.a) * (last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_5, alpha_output_5), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: CEFFB47548522D87, 0405AC4C5CF04900
// program: 4940142D60DA9543, 5D764F9A6220D694, 0405AC4C5CF04900
// shader: 8B30, 308BD3899EE631C6

precision highp int;
precision highp float;
precision highp samplerBuffer;
precision highp usampler2D;
precision highp uimage2D;
in vec4 primary_color;
in vec2 texcoord0;
in vec2 texcoord1;
in vec2 texcoord2;
in float texcoord0_w;
in vec4 normquat;
in vec3 view;

#ifndef CITRA_GLES
in vec4 gl_FragCoord;
#endif // CITRA_GLES
out vec4 color;

uniform sampler2D tex0;
uniform sampler2D tex1;
uniform sampler2D tex2;
uniform samplerCube tex_cube;
uniform samplerBuffer texture_buffer_lut_lf;
uniform samplerBuffer texture_buffer_lut_rg;
uniform samplerBuffer texture_buffer_lut_rgba;

#define NUM_TEV_STAGES 6
#define NUM_LIGHTS 8
#define NUM_LIGHTING_SAMPLERS 24

struct LightSrc {
    vec3 specular_0;
    vec3 specular_1;
    vec3 diffuse;
    vec3 ambient;
    vec3 position;
    vec3 spot_direction;
    float dist_atten_bias;
    float dist_atten_scale;
};

layout (std140) uniform shader_data {
    int alphatest_ref;
    float depth_scale;
    float depth_offset;
    float shadow_bias_constant;
    float shadow_bias_linear;
    int scissor_x1;
    int scissor_y1;
    int scissor_x2;
    int scissor_y2;
    int fog_lut_offset;
    int proctex_noise_lut_offset;
    int proctex_color_map_offset;
    int proctex_alpha_map_offset;
    int proctex_lut_offset;
    int proctex_diff_lut_offset;
    float proctex_bias;
    vec3 fog_color;
    vec2 proctex_noise_f;
    vec2 proctex_noise_a;
    vec2 proctex_noise_p;
    vec4 const_color[NUM_TEV_STAGES];
    vec4 tev_combiner_buffer_color;
    vec4 clip_coef;
};

layout (std140) uniform shader_light_data {
    ivec4 lighting_lut_offset[NUM_LIGHTING_SAMPLERS / 4];
    vec3 lighting_global_ambient;
    LightSrc light_src[NUM_LIGHTS];
    float lut_scale_d0;
    float lut_scale_d1;
    float lut_scale_sp;
    float lut_scale_fr;
    float lut_scale_rb;
    float lut_scale_rg;
    float lut_scale_rr;
    int shadow_texture_bias;
};

// Rotate the vector v by the quaternion q
vec3 quaternion_rotate(vec4 q, vec3 v) {
    return v + 2.0 * cross(q.xyz, cross(q.xyz, v) + q.w * v);
}

float LookupLightingLUT(int lut_index, int index, float delta) {
    vec2 entry = texelFetch(texture_buffer_lut_lf, lighting_lut_offset[lut_index >> 2][lut_index & 3] + index).rg;
    return entry.r + entry.g * delta;
}

float LookupLightingLUTUnsigned(int lut_index, float pos) {
    int index = clamp(int(pos * 256.0), 0, 255);
    float delta = pos * 256.0 - float(index);
    return LookupLightingLUT(lut_index, index, delta);
}

float LookupLightingLUTSigned(int lut_index, float pos) {
    int index = clamp(int(pos * 128.0), -128, 127);
    float delta = pos * 128.0 - float(index);
    if (index < 0) index += 256;
    return LookupLightingLUT(lut_index, index, delta);
}

float byteround(float x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec2 byteround(vec2 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec3 byteround(vec3 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec4 byteround(vec4 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

// PICA's LOD formula for 2D textures.
// This LOD formula is the same as the LOD lower limit defined in OpenGL.
// f(x, y) >= max{m_u, m_v, m_w}
// (See OpenGL 4.6 spec, 8.14.1 - Scale Factor and Level-of-Detail)
float getLod(vec2 coord) {
    vec2 d = max(abs(dFdx(coord)), abs(dFdy(coord)));
    return log2(max(d.x, d.y));
}

vec4 shadowTexture(vec2 uv, float w) {
    return vec4(1.0);
}

vec4 shadowTextureCube(vec2 uv, float w) {
    return vec4(1.0);
}

void main() {
vec4 rounded_primary_color = byteround(primary_color);
vec4 primary_fragment_color = vec4(0.0);
vec4 secondary_fragment_color = vec4(0.0);
if (!(gl_FragCoord.x >= float(scissor_x1) && gl_FragCoord.y >= float(scissor_y1) && gl_FragCoord.x < float(scissor_x2) && gl_FragCoord.y < float(scissor_y2))) discard;
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));
vec4 texcolor1 = textureLod(tex1, texcoord1, getLod(texcoord1 * vec2(textureSize(tex1, 0))));
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((texcolor0.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((rounded_primary_color.a) * (texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

vec3 color_output_2 = byteround(clamp((const_color[2].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_2 = byteround(clamp((texcolor0.a) + (texcolor1.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_2, alpha_output_2), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;

vec3 color_output_3 = byteround(clamp((last_tex_env_out.rgb) * (texcolor0.rgb) + (const_color[3].rgb) * (vec3(1.0) - (texcolor0.rgb)), vec3(0.0), vec3(1.0)));
float alpha_output_3 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_3, alpha_output_3), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;

vec3 color_output_4 = byteround(clamp((last_tex_env_out.rgb) * (texcolor0.aaa), vec3(0.0), vec3(1.0)));
float alpha_output_4 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_4, alpha_output_4), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_5 = byteround(clamp((texcolor1.rgb) * (const_color[5].rgb) + (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_5 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_5, alpha_output_5), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: 668A080E681A1FB5, 308BD3899EE631C6
// program: 4940142D60DA9543, 5D764F9A6220D694, 308BD3899EE631C6
// shader: 8B30, 6EA569ACFAADF996

precision highp int;
precision highp float;
precision highp samplerBuffer;
precision highp usampler2D;
precision highp uimage2D;
in vec4 primary_color;
in vec2 texcoord0;
in vec2 texcoord1;
in vec2 texcoord2;
in float texcoord0_w;
in vec4 normquat;
in vec3 view;

#ifndef CITRA_GLES
in vec4 gl_FragCoord;
#endif // CITRA_GLES
out vec4 color;

uniform sampler2D tex0;
uniform sampler2D tex1;
uniform sampler2D tex2;
uniform samplerCube tex_cube;
uniform samplerBuffer texture_buffer_lut_lf;
uniform samplerBuffer texture_buffer_lut_rg;
uniform samplerBuffer texture_buffer_lut_rgba;

#define NUM_TEV_STAGES 6
#define NUM_LIGHTS 8
#define NUM_LIGHTING_SAMPLERS 24

struct LightSrc {
    vec3 specular_0;
    vec3 specular_1;
    vec3 diffuse;
    vec3 ambient;
    vec3 position;
    vec3 spot_direction;
    float dist_atten_bias;
    float dist_atten_scale;
};

layout (std140) uniform shader_data {
    int alphatest_ref;
    float depth_scale;
    float depth_offset;
    float shadow_bias_constant;
    float shadow_bias_linear;
    int scissor_x1;
    int scissor_y1;
    int scissor_x2;
    int scissor_y2;
    int fog_lut_offset;
    int proctex_noise_lut_offset;
    int proctex_color_map_offset;
    int proctex_alpha_map_offset;
    int proctex_lut_offset;
    int proctex_diff_lut_offset;
    float proctex_bias;
    vec3 fog_color;
    vec2 proctex_noise_f;
    vec2 proctex_noise_a;
    vec2 proctex_noise_p;
    vec4 const_color[NUM_TEV_STAGES];
    vec4 tev_combiner_buffer_color;
    vec4 clip_coef;
};

layout (std140) uniform shader_light_data {
    ivec4 lighting_lut_offset[NUM_LIGHTING_SAMPLERS / 4];
    vec3 lighting_global_ambient;
    LightSrc light_src[NUM_LIGHTS];
    float lut_scale_d0;
    float lut_scale_d1;
    float lut_scale_sp;
    float lut_scale_fr;
    float lut_scale_rb;
    float lut_scale_rg;
    float lut_scale_rr;
    int shadow_texture_bias;
};

// Rotate the vector v by the quaternion q
vec3 quaternion_rotate(vec4 q, vec3 v) {
    return v + 2.0 * cross(q.xyz, cross(q.xyz, v) + q.w * v);
}

float LookupLightingLUT(int lut_index, int index, float delta) {
    vec2 entry = texelFetch(texture_buffer_lut_lf, lighting_lut_offset[lut_index >> 2][lut_index & 3] + index).rg;
    return entry.r + entry.g * delta;
}

float LookupLightingLUTUnsigned(int lut_index, float pos) {
    int index = clamp(int(pos * 256.0), 0, 255);
    float delta = pos * 256.0 - float(index);
    return LookupLightingLUT(lut_index, index, delta);
}

float LookupLightingLUTSigned(int lut_index, float pos) {
    int index = clamp(int(pos * 128.0), -128, 127);
    float delta = pos * 128.0 - float(index);
    if (index < 0) index += 256;
    return LookupLightingLUT(lut_index, index, delta);
}

float byteround(float x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec2 byteround(vec2 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec3 byteround(vec3 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec4 byteround(vec4 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

// PICA's LOD formula for 2D textures.
// This LOD formula is the same as the LOD lower limit defined in OpenGL.
// f(x, y) >= max{m_u, m_v, m_w}
// (See OpenGL 4.6 spec, 8.14.1 - Scale Factor and Level-of-Detail)
float getLod(vec2 coord) {
    vec2 d = max(abs(dFdx(coord)), abs(dFdy(coord)));
    return log2(max(d.x, d.y));
}

vec4 shadowTexture(vec2 uv, float w) {
    return vec4(1.0);
}

vec4 shadowTextureCube(vec2 uv, float w) {
    return vec4(1.0);
}

void main() {
vec4 rounded_primary_color = byteround(primary_color);
vec4 primary_fragment_color = vec4(0.0);
vec4 secondary_fragment_color = vec4(0.0);
if (!(gl_FragCoord.x >= float(scissor_x1) && gl_FragCoord.y >= float(scissor_y1) && gl_FragCoord.x < float(scissor_x2) && gl_FragCoord.y < float(scissor_y2))) discard;
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));
vec4 texcolor1 = textureLod(tex1, texcoord1, getLod(texcoord1 * vec2(textureSize(tex1, 0))));
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((texcolor0.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((rounded_primary_color.a) * (texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

vec3 color_output_2 = byteround(clamp((const_color[2].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_2 = byteround(clamp((texcolor0.a) + (texcolor1.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_2, alpha_output_2), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;

vec3 color_output_3 = byteround(clamp((vec3(1.0) - texcolor0.rgb) * (const_color[3].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_3 = byteround(clamp((texcolor0.a) * (const_color[3].a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_3, alpha_output_3), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;

vec3 color_output_4 = byteround(clamp((texcolor0.rgb) * (const_color[4].rgb) + (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_4 = byteround(clamp((1.0 - texcolor0.a) * (const_color[4].a) + (last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_4, alpha_output_4), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_5 = byteround(clamp((rounded_primary_color.rgb) * (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_5 = byteround(clamp((rounded_primary_color.a) * (last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_5, alpha_output_5), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: CB65410C4F028B99, 6EA569ACFAADF996
// program: 4940142D60DA9543, 5D764F9A6220D694, 6EA569ACFAADF996
// shader: 8B30, 5DF6CE37919016E9

precision highp int;
precision highp float;
precision highp samplerBuffer;
precision highp usampler2D;
precision highp uimage2D;
in vec4 primary_color;
in vec2 texcoord0;
in vec2 texcoord1;
in vec2 texcoord2;
in float texcoord0_w;
in vec4 normquat;
in vec3 view;

#ifndef CITRA_GLES
in vec4 gl_FragCoord;
#endif // CITRA_GLES
out vec4 color;

uniform sampler2D tex0;
uniform sampler2D tex1;
uniform sampler2D tex2;
uniform samplerCube tex_cube;
uniform samplerBuffer texture_buffer_lut_lf;
uniform samplerBuffer texture_buffer_lut_rg;
uniform samplerBuffer texture_buffer_lut_rgba;

#define NUM_TEV_STAGES 6
#define NUM_LIGHTS 8
#define NUM_LIGHTING_SAMPLERS 24

struct LightSrc {
    vec3 specular_0;
    vec3 specular_1;
    vec3 diffuse;
    vec3 ambient;
    vec3 position;
    vec3 spot_direction;
    float dist_atten_bias;
    float dist_atten_scale;
};

layout (std140) uniform shader_data {
    int alphatest_ref;
    float depth_scale;
    float depth_offset;
    float shadow_bias_constant;
    float shadow_bias_linear;
    int scissor_x1;
    int scissor_y1;
    int scissor_x2;
    int scissor_y2;
    int fog_lut_offset;
    int proctex_noise_lut_offset;
    int proctex_color_map_offset;
    int proctex_alpha_map_offset;
    int proctex_lut_offset;
    int proctex_diff_lut_offset;
    float proctex_bias;
    vec3 fog_color;
    vec2 proctex_noise_f;
    vec2 proctex_noise_a;
    vec2 proctex_noise_p;
    vec4 const_color[NUM_TEV_STAGES];
    vec4 tev_combiner_buffer_color;
    vec4 clip_coef;
};

layout (std140) uniform shader_light_data {
    ivec4 lighting_lut_offset[NUM_LIGHTING_SAMPLERS / 4];
    vec3 lighting_global_ambient;
    LightSrc light_src[NUM_LIGHTS];
    float lut_scale_d0;
    float lut_scale_d1;
    float lut_scale_sp;
    float lut_scale_fr;
    float lut_scale_rb;
    float lut_scale_rg;
    float lut_scale_rr;
    int shadow_texture_bias;
};

// Rotate the vector v by the quaternion q
vec3 quaternion_rotate(vec4 q, vec3 v) {
    return v + 2.0 * cross(q.xyz, cross(q.xyz, v) + q.w * v);
}

float LookupLightingLUT(int lut_index, int index, float delta) {
    vec2 entry = texelFetch(texture_buffer_lut_lf, lighting_lut_offset[lut_index >> 2][lut_index & 3] + index).rg;
    return entry.r + entry.g * delta;
}

float LookupLightingLUTUnsigned(int lut_index, float pos) {
    int index = clamp(int(pos * 256.0), 0, 255);
    float delta = pos * 256.0 - float(index);
    return LookupLightingLUT(lut_index, index, delta);
}

float LookupLightingLUTSigned(int lut_index, float pos) {
    int index = clamp(int(pos * 128.0), -128, 127);
    float delta = pos * 128.0 - float(index);
    if (index < 0) index += 256;
    return LookupLightingLUT(lut_index, index, delta);
}

float byteround(float x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec2 byteround(vec2 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec3 byteround(vec3 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec4 byteround(vec4 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

// PICA's LOD formula for 2D textures.
// This LOD formula is the same as the LOD lower limit defined in OpenGL.
// f(x, y) >= max{m_u, m_v, m_w}
// (See OpenGL 4.6 spec, 8.14.1 - Scale Factor and Level-of-Detail)
float getLod(vec2 coord) {
    vec2 d = max(abs(dFdx(coord)), abs(dFdy(coord)));
    return log2(max(d.x, d.y));
}

vec4 shadowTexture(vec2 uv, float w) {
    return vec4(1.0);
}

vec4 shadowTextureCube(vec2 uv, float w) {
    return vec4(1.0);
}

void main() {
vec4 rounded_primary_color = byteround(primary_color);
vec4 primary_fragment_color = vec4(0.0);
vec4 secondary_fragment_color = vec4(0.0);
if (!(gl_FragCoord.x >= float(scissor_x1) && gl_FragCoord.y >= float(scissor_y1) && gl_FragCoord.x < float(scissor_x2) && gl_FragCoord.y < float(scissor_y2))) discard;
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));
vec4 texcolor1 = textureLod(tex1, texcoord1, getLod(texcoord1 * vec2(textureSize(tex1, 0))));
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((texcolor0.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((rounded_primary_color.a) * (texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

vec3 color_output_2 = byteround(clamp((const_color[2].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_2 = byteround(clamp((texcolor0.a) + (texcolor1.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_2, alpha_output_2), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;

vec3 color_output_3 = byteround(clamp((vec3(1.0) - texcolor0.rgb) * (const_color[3].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_3 = byteround(clamp((texcolor0.a) * (const_color[3].a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_3, alpha_output_3), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;

vec3 color_output_4 = byteround(clamp((texcolor0.rgb) * (const_color[4].rgb) + (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_4 = byteround(clamp((1.0 - texcolor0.a) * (const_color[4].a) + (last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_4, alpha_output_4), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_5 = byteround(clamp((rounded_primary_color.rgb) * (const_color[5].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_5 = byteround(clamp((rounded_primary_color.a) * (const_color[5].a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_5, alpha_output_5), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: CB65410C01FA0283, 5DF6CE37919016E9
// program: 4940142D60DA9543, 5D764F9A6220D694, 5DF6CE37919016E9
// shader: 8B30, 9FCF93B4C2ACF0BC

precision highp int;
precision highp float;
precision highp samplerBuffer;
precision highp usampler2D;
precision highp uimage2D;
in vec4 primary_color;
in vec2 texcoord0;
in vec2 texcoord1;
in vec2 texcoord2;
in float texcoord0_w;
in vec4 normquat;
in vec3 view;

#ifndef CITRA_GLES
in vec4 gl_FragCoord;
#endif // CITRA_GLES
out vec4 color;

uniform sampler2D tex0;
uniform sampler2D tex1;
uniform sampler2D tex2;
uniform samplerCube tex_cube;
uniform samplerBuffer texture_buffer_lut_lf;
uniform samplerBuffer texture_buffer_lut_rg;
uniform samplerBuffer texture_buffer_lut_rgba;

#define NUM_TEV_STAGES 6
#define NUM_LIGHTS 8
#define NUM_LIGHTING_SAMPLERS 24

struct LightSrc {
    vec3 specular_0;
    vec3 specular_1;
    vec3 diffuse;
    vec3 ambient;
    vec3 position;
    vec3 spot_direction;
    float dist_atten_bias;
    float dist_atten_scale;
};

layout (std140) uniform shader_data {
    int alphatest_ref;
    float depth_scale;
    float depth_offset;
    float shadow_bias_constant;
    float shadow_bias_linear;
    int scissor_x1;
    int scissor_y1;
    int scissor_x2;
    int scissor_y2;
    int fog_lut_offset;
    int proctex_noise_lut_offset;
    int proctex_color_map_offset;
    int proctex_alpha_map_offset;
    int proctex_lut_offset;
    int proctex_diff_lut_offset;
    float proctex_bias;
    vec3 fog_color;
    vec2 proctex_noise_f;
    vec2 proctex_noise_a;
    vec2 proctex_noise_p;
    vec4 const_color[NUM_TEV_STAGES];
    vec4 tev_combiner_buffer_color;
    vec4 clip_coef;
};

layout (std140) uniform shader_light_data {
    ivec4 lighting_lut_offset[NUM_LIGHTING_SAMPLERS / 4];
    vec3 lighting_global_ambient;
    LightSrc light_src[NUM_LIGHTS];
    float lut_scale_d0;
    float lut_scale_d1;
    float lut_scale_sp;
    float lut_scale_fr;
    float lut_scale_rb;
    float lut_scale_rg;
    float lut_scale_rr;
    int shadow_texture_bias;
};

// Rotate the vector v by the quaternion q
vec3 quaternion_rotate(vec4 q, vec3 v) {
    return v + 2.0 * cross(q.xyz, cross(q.xyz, v) + q.w * v);
}

float LookupLightingLUT(int lut_index, int index, float delta) {
    vec2 entry = texelFetch(texture_buffer_lut_lf, lighting_lut_offset[lut_index >> 2][lut_index & 3] + index).rg;
    return entry.r + entry.g * delta;
}

float LookupLightingLUTUnsigned(int lut_index, float pos) {
    int index = clamp(int(pos * 256.0), 0, 255);
    float delta = pos * 256.0 - float(index);
    return LookupLightingLUT(lut_index, index, delta);
}

float LookupLightingLUTSigned(int lut_index, float pos) {
    int index = clamp(int(pos * 128.0), -128, 127);
    float delta = pos * 128.0 - float(index);
    if (index < 0) index += 256;
    return LookupLightingLUT(lut_index, index, delta);
}

float byteround(float x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec2 byteround(vec2 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec3 byteround(vec3 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec4 byteround(vec4 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

// PICA's LOD formula for 2D textures.
// This LOD formula is the same as the LOD lower limit defined in OpenGL.
// f(x, y) >= max{m_u, m_v, m_w}
// (See OpenGL 4.6 spec, 8.14.1 - Scale Factor and Level-of-Detail)
float getLod(vec2 coord) {
    vec2 d = max(abs(dFdx(coord)), abs(dFdy(coord)));
    return log2(max(d.x, d.y));
}

vec4 shadowTexture(vec2 uv, float w) {
    return vec4(1.0);
}

vec4 shadowTextureCube(vec2 uv, float w) {
    return vec4(1.0);
}

void main() {
vec4 rounded_primary_color = byteround(primary_color);
vec4 primary_fragment_color = vec4(0.0);
vec4 secondary_fragment_color = vec4(0.0);
if (!(gl_FragCoord.x >= float(scissor_x1) && gl_FragCoord.y >= float(scissor_y1) && gl_FragCoord.x < float(scissor_x2) && gl_FragCoord.y < float(scissor_y2))) discard;
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));
vec4 texcolor1 = textureLod(tex1, texcoord1, getLod(texcoord1 * vec2(textureSize(tex1, 0))));
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((texcolor0.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((rounded_primary_color.a) * (texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

vec3 color_output_2 = byteround(clamp((const_color[2].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_2 = byteround(clamp((texcolor0.a) + (texcolor1.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_2, alpha_output_2), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;

vec3 color_output_3 = byteround(clamp((const_color[3].rgb) * (vec3(1.0) - texcolor0.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_3 = byteround(clamp((const_color[3].a) * (1.0 - texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_3, alpha_output_3), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;

vec3 color_output_4 = byteround(clamp((const_color[4].rgb) * (texcolor0.rgb) + (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_4 = byteround(clamp((const_color[4].a) * (texcolor0.a) + (last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_4, alpha_output_4), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_5 = byteround(clamp((rounded_primary_color.rgb) * (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_5 = byteround(clamp((rounded_primary_color.a) * (last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_5, alpha_output_5), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: 04FDA5F3CEFD9D23, 9FCF93B4C2ACF0BC
// program: 4940142D60DA9543, 5D764F9A6220D694, 9FCF93B4C2ACF0BC
// shader: 8B30, A3094D7D6C8159BD

precision highp int;
precision highp float;
precision highp samplerBuffer;
precision highp usampler2D;
precision highp uimage2D;
in vec4 primary_color;
in vec2 texcoord0;
in vec2 texcoord1;
in vec2 texcoord2;
in float texcoord0_w;
in vec4 normquat;
in vec3 view;

#ifndef CITRA_GLES
in vec4 gl_FragCoord;
#endif // CITRA_GLES
out vec4 color;

uniform sampler2D tex0;
uniform sampler2D tex1;
uniform sampler2D tex2;
uniform samplerCube tex_cube;
uniform samplerBuffer texture_buffer_lut_lf;
uniform samplerBuffer texture_buffer_lut_rg;
uniform samplerBuffer texture_buffer_lut_rgba;

#define NUM_TEV_STAGES 6
#define NUM_LIGHTS 8
#define NUM_LIGHTING_SAMPLERS 24

struct LightSrc {
    vec3 specular_0;
    vec3 specular_1;
    vec3 diffuse;
    vec3 ambient;
    vec3 position;
    vec3 spot_direction;
    float dist_atten_bias;
    float dist_atten_scale;
};

layout (std140) uniform shader_data {
    int alphatest_ref;
    float depth_scale;
    float depth_offset;
    float shadow_bias_constant;
    float shadow_bias_linear;
    int scissor_x1;
    int scissor_y1;
    int scissor_x2;
    int scissor_y2;
    int fog_lut_offset;
    int proctex_noise_lut_offset;
    int proctex_color_map_offset;
    int proctex_alpha_map_offset;
    int proctex_lut_offset;
    int proctex_diff_lut_offset;
    float proctex_bias;
    vec3 fog_color;
    vec2 proctex_noise_f;
    vec2 proctex_noise_a;
    vec2 proctex_noise_p;
    vec4 const_color[NUM_TEV_STAGES];
    vec4 tev_combiner_buffer_color;
    vec4 clip_coef;
};

layout (std140) uniform shader_light_data {
    ivec4 lighting_lut_offset[NUM_LIGHTING_SAMPLERS / 4];
    vec3 lighting_global_ambient;
    LightSrc light_src[NUM_LIGHTS];
    float lut_scale_d0;
    float lut_scale_d1;
    float lut_scale_sp;
    float lut_scale_fr;
    float lut_scale_rb;
    float lut_scale_rg;
    float lut_scale_rr;
    int shadow_texture_bias;
};

// Rotate the vector v by the quaternion q
vec3 quaternion_rotate(vec4 q, vec3 v) {
    return v + 2.0 * cross(q.xyz, cross(q.xyz, v) + q.w * v);
}

float LookupLightingLUT(int lut_index, int index, float delta) {
    vec2 entry = texelFetch(texture_buffer_lut_lf, lighting_lut_offset[lut_index >> 2][lut_index & 3] + index).rg;
    return entry.r + entry.g * delta;
}

float LookupLightingLUTUnsigned(int lut_index, float pos) {
    int index = clamp(int(pos * 256.0), 0, 255);
    float delta = pos * 256.0 - float(index);
    return LookupLightingLUT(lut_index, index, delta);
}

float LookupLightingLUTSigned(int lut_index, float pos) {
    int index = clamp(int(pos * 128.0), -128, 127);
    float delta = pos * 128.0 - float(index);
    if (index < 0) index += 256;
    return LookupLightingLUT(lut_index, index, delta);
}

float byteround(float x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec2 byteround(vec2 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec3 byteround(vec3 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec4 byteround(vec4 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

// PICA's LOD formula for 2D textures.
// This LOD formula is the same as the LOD lower limit defined in OpenGL.
// f(x, y) >= max{m_u, m_v, m_w}
// (See OpenGL 4.6 spec, 8.14.1 - Scale Factor and Level-of-Detail)
float getLod(vec2 coord) {
    vec2 d = max(abs(dFdx(coord)), abs(dFdy(coord)));
    return log2(max(d.x, d.y));
}

vec4 shadowTexture(vec2 uv, float w) {
    return vec4(1.0);
}

vec4 shadowTextureCube(vec2 uv, float w) {
    return vec4(1.0);
}

void main() {
vec4 rounded_primary_color = byteround(primary_color);
vec4 primary_fragment_color = vec4(0.0);
vec4 secondary_fragment_color = vec4(0.0);
if (!(gl_FragCoord.x >= float(scissor_x1) && gl_FragCoord.y >= float(scissor_y1) && gl_FragCoord.x < float(scissor_x2) && gl_FragCoord.y < float(scissor_y2))) discard;
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));
vec4 texcolor1 = textureLod(tex1, texcoord1, getLod(texcoord1 * vec2(textureSize(tex1, 0))));
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((texcolor0.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((rounded_primary_color.a) * (texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

vec3 color_output_2 = byteround(clamp((texcolor0.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_2 = byteround(clamp((texcolor0.a) + (texcolor1.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_2, alpha_output_2), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_3 = byteround(clamp((const_color[3].rgb) * (texcolor0.rgb) + (combiner_buffer.rgb) * (vec3(1.0) - (texcolor0.rgb)), vec3(0.0), vec3(1.0)));
float alpha_output_3 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_3, alpha_output_3), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_4 = byteround(clamp((last_tex_env_out.rgb) * (texcolor0.aaa), vec3(0.0), vec3(1.0)));
float alpha_output_4 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_4, alpha_output_4), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_5 = byteround(clamp((texcolor1.rgb) * (const_color[5].rgb) + (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_5 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_5, alpha_output_5), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: 79AE10B76ED2EAE8, A3094D7D6C8159BD
// program: 4940142D60DA9543, 5D764F9A6220D694, A3094D7D6C8159BD
// shader: 8B30, 69D212CCEFB49C3F

precision highp int;
precision highp float;
precision highp samplerBuffer;
precision highp usampler2D;
precision highp uimage2D;
in vec4 primary_color;
in vec2 texcoord0;
in vec2 texcoord1;
in vec2 texcoord2;
in float texcoord0_w;
in vec4 normquat;
in vec3 view;

#ifndef CITRA_GLES
in vec4 gl_FragCoord;
#endif // CITRA_GLES
out vec4 color;

uniform sampler2D tex0;
uniform sampler2D tex1;
uniform sampler2D tex2;
uniform samplerCube tex_cube;
uniform samplerBuffer texture_buffer_lut_lf;
uniform samplerBuffer texture_buffer_lut_rg;
uniform samplerBuffer texture_buffer_lut_rgba;

#define NUM_TEV_STAGES 6
#define NUM_LIGHTS 8
#define NUM_LIGHTING_SAMPLERS 24

struct LightSrc {
    vec3 specular_0;
    vec3 specular_1;
    vec3 diffuse;
    vec3 ambient;
    vec3 position;
    vec3 spot_direction;
    float dist_atten_bias;
    float dist_atten_scale;
};

layout (std140) uniform shader_data {
    int alphatest_ref;
    float depth_scale;
    float depth_offset;
    float shadow_bias_constant;
    float shadow_bias_linear;
    int scissor_x1;
    int scissor_y1;
    int scissor_x2;
    int scissor_y2;
    int fog_lut_offset;
    int proctex_noise_lut_offset;
    int proctex_color_map_offset;
    int proctex_alpha_map_offset;
    int proctex_lut_offset;
    int proctex_diff_lut_offset;
    float proctex_bias;
    vec3 fog_color;
    vec2 proctex_noise_f;
    vec2 proctex_noise_a;
    vec2 proctex_noise_p;
    vec4 const_color[NUM_TEV_STAGES];
    vec4 tev_combiner_buffer_color;
    vec4 clip_coef;
};

layout (std140) uniform shader_light_data {
    ivec4 lighting_lut_offset[NUM_LIGHTING_SAMPLERS / 4];
    vec3 lighting_global_ambient;
    LightSrc light_src[NUM_LIGHTS];
    float lut_scale_d0;
    float lut_scale_d1;
    float lut_scale_sp;
    float lut_scale_fr;
    float lut_scale_rb;
    float lut_scale_rg;
    float lut_scale_rr;
    int shadow_texture_bias;
};

// Rotate the vector v by the quaternion q
vec3 quaternion_rotate(vec4 q, vec3 v) {
    return v + 2.0 * cross(q.xyz, cross(q.xyz, v) + q.w * v);
}

float LookupLightingLUT(int lut_index, int index, float delta) {
    vec2 entry = texelFetch(texture_buffer_lut_lf, lighting_lut_offset[lut_index >> 2][lut_index & 3] + index).rg;
    return entry.r + entry.g * delta;
}

float LookupLightingLUTUnsigned(int lut_index, float pos) {
    int index = clamp(int(pos * 256.0), 0, 255);
    float delta = pos * 256.0 - float(index);
    return LookupLightingLUT(lut_index, index, delta);
}

float LookupLightingLUTSigned(int lut_index, float pos) {
    int index = clamp(int(pos * 128.0), -128, 127);
    float delta = pos * 128.0 - float(index);
    if (index < 0) index += 256;
    return LookupLightingLUT(lut_index, index, delta);
}

float byteround(float x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec2 byteround(vec2 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec3 byteround(vec3 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec4 byteround(vec4 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

// PICA's LOD formula for 2D textures.
// This LOD formula is the same as the LOD lower limit defined in OpenGL.
// f(x, y) >= max{m_u, m_v, m_w}
// (See OpenGL 4.6 spec, 8.14.1 - Scale Factor and Level-of-Detail)
float getLod(vec2 coord) {
    vec2 d = max(abs(dFdx(coord)), abs(dFdy(coord)));
    return log2(max(d.x, d.y));
}

vec4 shadowTexture(vec2 uv, float w) {
    return vec4(1.0);
}

vec4 shadowTextureCube(vec2 uv, float w) {
    return vec4(1.0);
}

void main() {
vec4 rounded_primary_color = byteround(primary_color);
vec4 primary_fragment_color = vec4(0.0);
vec4 secondary_fragment_color = vec4(0.0);
if (!(gl_FragCoord.x >= float(scissor_x1) && gl_FragCoord.y >= float(scissor_y1) && gl_FragCoord.x < float(scissor_x2) && gl_FragCoord.y < float(scissor_y2))) discard;
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));
vec4 texcolor1 = textureLod(tex1, texcoord1, getLod(texcoord1 * vec2(textureSize(tex1, 0))));
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((texcolor0.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((rounded_primary_color.a) * (texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

vec3 color_output_2 = byteround(clamp((texcolor0.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_2 = byteround(clamp((texcolor0.a) + (texcolor1.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_2, alpha_output_2), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_3 = byteround(clamp((const_color[3].rgb) * (vec3(1.0) - texcolor0.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_3 = byteround(clamp((const_color[3].a) * (1.0 - texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_3, alpha_output_3), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_4 = byteround(clamp((const_color[4].rgb) * (texcolor0.rgb) + (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_4 = byteround(clamp((const_color[4].a) * (texcolor0.a) + (last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_4, alpha_output_4), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_5 = byteround(clamp((rounded_primary_color.rgb) * (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_5 = byteround(clamp((rounded_primary_color.a) * (last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_5, alpha_output_5), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: 04FDA5F317C914B6, 69D212CCEFB49C3F
// program: 4940142D60DA9543, 5D764F9A6220D694, 69D212CCEFB49C3F
// shader: 8B30, 9A8D32655829D0CC

precision highp int;
precision highp float;
precision highp samplerBuffer;
precision highp usampler2D;
precision highp uimage2D;
in vec4 primary_color;
in vec2 texcoord0;
in vec2 texcoord1;
in vec2 texcoord2;
in float texcoord0_w;
in vec4 normquat;
in vec3 view;

#ifndef CITRA_GLES
in vec4 gl_FragCoord;
#endif // CITRA_GLES
out vec4 color;

uniform sampler2D tex0;
uniform sampler2D tex1;
uniform sampler2D tex2;
uniform samplerCube tex_cube;
uniform samplerBuffer texture_buffer_lut_lf;
uniform samplerBuffer texture_buffer_lut_rg;
uniform samplerBuffer texture_buffer_lut_rgba;

#define NUM_TEV_STAGES 6
#define NUM_LIGHTS 8
#define NUM_LIGHTING_SAMPLERS 24

struct LightSrc {
    vec3 specular_0;
    vec3 specular_1;
    vec3 diffuse;
    vec3 ambient;
    vec3 position;
    vec3 spot_direction;
    float dist_atten_bias;
    float dist_atten_scale;
};

layout (std140) uniform shader_data {
    int alphatest_ref;
    float depth_scale;
    float depth_offset;
    float shadow_bias_constant;
    float shadow_bias_linear;
    int scissor_x1;
    int scissor_y1;
    int scissor_x2;
    int scissor_y2;
    int fog_lut_offset;
    int proctex_noise_lut_offset;
    int proctex_color_map_offset;
    int proctex_alpha_map_offset;
    int proctex_lut_offset;
    int proctex_diff_lut_offset;
    float proctex_bias;
    vec3 fog_color;
    vec2 proctex_noise_f;
    vec2 proctex_noise_a;
    vec2 proctex_noise_p;
    vec4 const_color[NUM_TEV_STAGES];
    vec4 tev_combiner_buffer_color;
    vec4 clip_coef;
};

layout (std140) uniform shader_light_data {
    ivec4 lighting_lut_offset[NUM_LIGHTING_SAMPLERS / 4];
    vec3 lighting_global_ambient;
    LightSrc light_src[NUM_LIGHTS];
    float lut_scale_d0;
    float lut_scale_d1;
    float lut_scale_sp;
    float lut_scale_fr;
    float lut_scale_rb;
    float lut_scale_rg;
    float lut_scale_rr;
    int shadow_texture_bias;
};

// Rotate the vector v by the quaternion q
vec3 quaternion_rotate(vec4 q, vec3 v) {
    return v + 2.0 * cross(q.xyz, cross(q.xyz, v) + q.w * v);
}

float LookupLightingLUT(int lut_index, int index, float delta) {
    vec2 entry = texelFetch(texture_buffer_lut_lf, lighting_lut_offset[lut_index >> 2][lut_index & 3] + index).rg;
    return entry.r + entry.g * delta;
}

float LookupLightingLUTUnsigned(int lut_index, float pos) {
    int index = clamp(int(pos * 256.0), 0, 255);
    float delta = pos * 256.0 - float(index);
    return LookupLightingLUT(lut_index, index, delta);
}

float LookupLightingLUTSigned(int lut_index, float pos) {
    int index = clamp(int(pos * 128.0), -128, 127);
    float delta = pos * 128.0 - float(index);
    if (index < 0) index += 256;
    return LookupLightingLUT(lut_index, index, delta);
}

float byteround(float x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec2 byteround(vec2 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec3 byteround(vec3 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec4 byteround(vec4 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

// PICA's LOD formula for 2D textures.
// This LOD formula is the same as the LOD lower limit defined in OpenGL.
// f(x, y) >= max{m_u, m_v, m_w}
// (See OpenGL 4.6 spec, 8.14.1 - Scale Factor and Level-of-Detail)
float getLod(vec2 coord) {
    vec2 d = max(abs(dFdx(coord)), abs(dFdy(coord)));
    return log2(max(d.x, d.y));
}

vec4 shadowTexture(vec2 uv, float w) {
    return vec4(1.0);
}

vec4 shadowTextureCube(vec2 uv, float w) {
    return vec4(1.0);
}

void main() {
vec4 rounded_primary_color = byteround(primary_color);
vec4 primary_fragment_color = vec4(0.0);
vec4 secondary_fragment_color = vec4(0.0);
if (!(gl_FragCoord.x >= float(scissor_x1) && gl_FragCoord.y >= float(scissor_y1) && gl_FragCoord.x < float(scissor_x2) && gl_FragCoord.y < float(scissor_y2))) discard;
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));
vec4 texcolor1 = textureLod(tex1, texcoord1, getLod(texcoord1 * vec2(textureSize(tex1, 0))));
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((texcolor0.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((rounded_primary_color.a) * (texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

vec3 color_output_2 = byteround(clamp((texcolor0.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_2 = byteround(clamp((texcolor0.a) + (texcolor1.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_2, alpha_output_2), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_3 = byteround(clamp((vec3(1.0) - texcolor0.rgb) * (const_color[3].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_3 = byteround(clamp((texcolor0.a) * (const_color[3].a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_3, alpha_output_3), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_4 = byteround(clamp((texcolor0.rgb) * (const_color[4].rgb) + (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_4 = byteround(clamp((1.0 - texcolor0.a) * (const_color[4].a) + (last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_4, alpha_output_4), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_5 = byteround(clamp((rounded_primary_color.rgb) * (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_5 = byteround(clamp((rounded_primary_color.a) * (last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_5, alpha_output_5), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: CB65410C9636020C, 9A8D32655829D0CC
// program: 4940142D60DA9543, 5D764F9A6220D694, 9A8D32655829D0CC
// shader: 8B30, B1228BF1475D9404

precision highp int;
precision highp float;
precision highp samplerBuffer;
precision highp usampler2D;
precision highp uimage2D;
in vec4 primary_color;
in vec2 texcoord0;
in vec2 texcoord1;
in vec2 texcoord2;
in float texcoord0_w;
in vec4 normquat;
in vec3 view;

#ifndef CITRA_GLES
in vec4 gl_FragCoord;
#endif // CITRA_GLES
out vec4 color;

uniform sampler2D tex0;
uniform sampler2D tex1;
uniform sampler2D tex2;
uniform samplerCube tex_cube;
uniform samplerBuffer texture_buffer_lut_lf;
uniform samplerBuffer texture_buffer_lut_rg;
uniform samplerBuffer texture_buffer_lut_rgba;

#define NUM_TEV_STAGES 6
#define NUM_LIGHTS 8
#define NUM_LIGHTING_SAMPLERS 24

struct LightSrc {
    vec3 specular_0;
    vec3 specular_1;
    vec3 diffuse;
    vec3 ambient;
    vec3 position;
    vec3 spot_direction;
    float dist_atten_bias;
    float dist_atten_scale;
};

layout (std140) uniform shader_data {
    int alphatest_ref;
    float depth_scale;
    float depth_offset;
    float shadow_bias_constant;
    float shadow_bias_linear;
    int scissor_x1;
    int scissor_y1;
    int scissor_x2;
    int scissor_y2;
    int fog_lut_offset;
    int proctex_noise_lut_offset;
    int proctex_color_map_offset;
    int proctex_alpha_map_offset;
    int proctex_lut_offset;
    int proctex_diff_lut_offset;
    float proctex_bias;
    vec3 fog_color;
    vec2 proctex_noise_f;
    vec2 proctex_noise_a;
    vec2 proctex_noise_p;
    vec4 const_color[NUM_TEV_STAGES];
    vec4 tev_combiner_buffer_color;
    vec4 clip_coef;
};

layout (std140) uniform shader_light_data {
    ivec4 lighting_lut_offset[NUM_LIGHTING_SAMPLERS / 4];
    vec3 lighting_global_ambient;
    LightSrc light_src[NUM_LIGHTS];
    float lut_scale_d0;
    float lut_scale_d1;
    float lut_scale_sp;
    float lut_scale_fr;
    float lut_scale_rb;
    float lut_scale_rg;
    float lut_scale_rr;
    int shadow_texture_bias;
};

// Rotate the vector v by the quaternion q
vec3 quaternion_rotate(vec4 q, vec3 v) {
    return v + 2.0 * cross(q.xyz, cross(q.xyz, v) + q.w * v);
}

float LookupLightingLUT(int lut_index, int index, float delta) {
    vec2 entry = texelFetch(texture_buffer_lut_lf, lighting_lut_offset[lut_index >> 2][lut_index & 3] + index).rg;
    return entry.r + entry.g * delta;
}

float LookupLightingLUTUnsigned(int lut_index, float pos) {
    int index = clamp(int(pos * 256.0), 0, 255);
    float delta = pos * 256.0 - float(index);
    return LookupLightingLUT(lut_index, index, delta);
}

float LookupLightingLUTSigned(int lut_index, float pos) {
    int index = clamp(int(pos * 128.0), -128, 127);
    float delta = pos * 128.0 - float(index);
    if (index < 0) index += 256;
    return LookupLightingLUT(lut_index, index, delta);
}

float byteround(float x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec2 byteround(vec2 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec3 byteround(vec3 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec4 byteround(vec4 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

// PICA's LOD formula for 2D textures.
// This LOD formula is the same as the LOD lower limit defined in OpenGL.
// f(x, y) >= max{m_u, m_v, m_w}
// (See OpenGL 4.6 spec, 8.14.1 - Scale Factor and Level-of-Detail)
float getLod(vec2 coord) {
    vec2 d = max(abs(dFdx(coord)), abs(dFdy(coord)));
    return log2(max(d.x, d.y));
}

vec4 shadowTexture(vec2 uv, float w) {
    return vec4(1.0);
}

vec4 shadowTextureCube(vec2 uv, float w) {
    return vec4(1.0);
}

void main() {
vec4 rounded_primary_color = byteround(primary_color);
vec4 primary_fragment_color = vec4(0.0);
vec4 secondary_fragment_color = vec4(0.0);
if (!(gl_FragCoord.x >= float(scissor_x1) && gl_FragCoord.y >= float(scissor_y1) && gl_FragCoord.x < float(scissor_x2) && gl_FragCoord.y < float(scissor_y2))) discard;
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));
vec4 texcolor1 = textureLod(tex1, texcoord1, getLod(texcoord1 * vec2(textureSize(tex1, 0))));
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((texcolor0.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((rounded_primary_color.a) * (texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

vec3 color_output_2 = byteround(clamp((texcolor0.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_2 = byteround(clamp((texcolor0.a) + (texcolor1.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_2, alpha_output_2), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_3 = byteround(clamp((vec3(1.0) - texcolor0.rgb) * (const_color[3].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_3 = byteround(clamp((texcolor0.a) * (const_color[3].a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_3, alpha_output_3), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_4 = byteround(clamp((texcolor0.rgb) * (const_color[4].rgb) + (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_4 = byteround(clamp((1.0 - texcolor0.a) * (const_color[4].a) + (last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_4, alpha_output_4), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_5 = byteround(clamp((rounded_primary_color.rgb) * (const_color[5].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_5 = byteround(clamp((rounded_primary_color.a) * (const_color[5].a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_5, alpha_output_5), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: CB65410CD8CE8B16, B1228BF1475D9404
// program: 4940142D60DA9543, 5D764F9A6220D694, B1228BF1475D9404
// shader: 8B30, 839F98BE38105971

precision highp int;
precision highp float;
precision highp samplerBuffer;
precision highp usampler2D;
precision highp uimage2D;
in vec4 primary_color;
in vec2 texcoord0;
in vec2 texcoord1;
in vec2 texcoord2;
in float texcoord0_w;
in vec4 normquat;
in vec3 view;

#ifndef CITRA_GLES
in vec4 gl_FragCoord;
#endif // CITRA_GLES
out vec4 color;

uniform sampler2D tex0;
uniform sampler2D tex1;
uniform sampler2D tex2;
uniform samplerCube tex_cube;
uniform samplerBuffer texture_buffer_lut_lf;
uniform samplerBuffer texture_buffer_lut_rg;
uniform samplerBuffer texture_buffer_lut_rgba;

#define NUM_TEV_STAGES 6
#define NUM_LIGHTS 8
#define NUM_LIGHTING_SAMPLERS 24

struct LightSrc {
    vec3 specular_0;
    vec3 specular_1;
    vec3 diffuse;
    vec3 ambient;
    vec3 position;
    vec3 spot_direction;
    float dist_atten_bias;
    float dist_atten_scale;
};

layout (std140) uniform shader_data {
    int alphatest_ref;
    float depth_scale;
    float depth_offset;
    float shadow_bias_constant;
    float shadow_bias_linear;
    int scissor_x1;
    int scissor_y1;
    int scissor_x2;
    int scissor_y2;
    int fog_lut_offset;
    int proctex_noise_lut_offset;
    int proctex_color_map_offset;
    int proctex_alpha_map_offset;
    int proctex_lut_offset;
    int proctex_diff_lut_offset;
    float proctex_bias;
    vec3 fog_color;
    vec2 proctex_noise_f;
    vec2 proctex_noise_a;
    vec2 proctex_noise_p;
    vec4 const_color[NUM_TEV_STAGES];
    vec4 tev_combiner_buffer_color;
    vec4 clip_coef;
};

layout (std140) uniform shader_light_data {
    ivec4 lighting_lut_offset[NUM_LIGHTING_SAMPLERS / 4];
    vec3 lighting_global_ambient;
    LightSrc light_src[NUM_LIGHTS];
    float lut_scale_d0;
    float lut_scale_d1;
    float lut_scale_sp;
    float lut_scale_fr;
    float lut_scale_rb;
    float lut_scale_rg;
    float lut_scale_rr;
    int shadow_texture_bias;
};

// Rotate the vector v by the quaternion q
vec3 quaternion_rotate(vec4 q, vec3 v) {
    return v + 2.0 * cross(q.xyz, cross(q.xyz, v) + q.w * v);
}

float LookupLightingLUT(int lut_index, int index, float delta) {
    vec2 entry = texelFetch(texture_buffer_lut_lf, lighting_lut_offset[lut_index >> 2][lut_index & 3] + index).rg;
    return entry.r + entry.g * delta;
}

float LookupLightingLUTUnsigned(int lut_index, float pos) {
    int index = clamp(int(pos * 256.0), 0, 255);
    float delta = pos * 256.0 - float(index);
    return LookupLightingLUT(lut_index, index, delta);
}

float LookupLightingLUTSigned(int lut_index, float pos) {
    int index = clamp(int(pos * 128.0), -128, 127);
    float delta = pos * 128.0 - float(index);
    if (index < 0) index += 256;
    return LookupLightingLUT(lut_index, index, delta);
}

float byteround(float x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec2 byteround(vec2 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec3 byteround(vec3 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec4 byteround(vec4 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

// PICA's LOD formula for 2D textures.
// This LOD formula is the same as the LOD lower limit defined in OpenGL.
// f(x, y) >= max{m_u, m_v, m_w}
// (See OpenGL 4.6 spec, 8.14.1 - Scale Factor and Level-of-Detail)
float getLod(vec2 coord) {
    vec2 d = max(abs(dFdx(coord)), abs(dFdy(coord)));
    return log2(max(d.x, d.y));
}

vec4 shadowTexture(vec2 uv, float w) {
    return vec4(1.0);
}

vec4 shadowTextureCube(vec2 uv, float w) {
    return vec4(1.0);
}

void main() {
vec4 rounded_primary_color = byteround(primary_color);
vec4 primary_fragment_color = vec4(0.0);
vec4 secondary_fragment_color = vec4(0.0);
if (!(gl_FragCoord.x >= float(scissor_x1) && gl_FragCoord.y >= float(scissor_y1) && gl_FragCoord.x < float(scissor_x2) && gl_FragCoord.y < float(scissor_y2))) discard;
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));
vec4 texcolor1 = textureLod(tex1, texcoord1, getLod(texcoord1 * vec2(textureSize(tex1, 0))));
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((texcolor0.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((rounded_primary_color.a) * (texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

vec3 color_output_2 = byteround(clamp((texcolor0.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_2 = byteround(clamp((texcolor0.a) + (texcolor1.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_2, alpha_output_2), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_3 = byteround(clamp((const_color[3].rgb) * (vec3(1.0) - texcolor0.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_3 = byteround(clamp((const_color[3].a) * (1.0 - texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_3, alpha_output_3), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_4 = byteround(clamp((const_color[4].rgb) * (texcolor0.rgb) + (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_4 = byteround(clamp((const_color[4].a) * (texcolor0.a) + (last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_4, alpha_output_4), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_5 = byteround(clamp((rounded_primary_color.rgb) * (const_color[5].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_5 = byteround(clamp((rounded_primary_color.a) * (const_color[5].a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_5, alpha_output_5), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: 04FDA5F359319DAC, 839F98BE38105971
// program: 4940142D60DA9543, 5D764F9A6220D694, 839F98BE38105971
// shader: 8B30, A158C479B4700A39

precision highp int;
precision highp float;
precision highp samplerBuffer;
precision highp usampler2D;
precision highp uimage2D;
in vec4 primary_color;
in vec2 texcoord0;
in vec2 texcoord1;
in vec2 texcoord2;
in float texcoord0_w;
in vec4 normquat;
in vec3 view;

#ifndef CITRA_GLES
in vec4 gl_FragCoord;
#endif // CITRA_GLES
out vec4 color;

uniform sampler2D tex0;
uniform sampler2D tex1;
uniform sampler2D tex2;
uniform samplerCube tex_cube;
uniform samplerBuffer texture_buffer_lut_lf;
uniform samplerBuffer texture_buffer_lut_rg;
uniform samplerBuffer texture_buffer_lut_rgba;

#define NUM_TEV_STAGES 6
#define NUM_LIGHTS 8
#define NUM_LIGHTING_SAMPLERS 24

struct LightSrc {
    vec3 specular_0;
    vec3 specular_1;
    vec3 diffuse;
    vec3 ambient;
    vec3 position;
    vec3 spot_direction;
    float dist_atten_bias;
    float dist_atten_scale;
};

layout (std140) uniform shader_data {
    int alphatest_ref;
    float depth_scale;
    float depth_offset;
    float shadow_bias_constant;
    float shadow_bias_linear;
    int scissor_x1;
    int scissor_y1;
    int scissor_x2;
    int scissor_y2;
    int fog_lut_offset;
    int proctex_noise_lut_offset;
    int proctex_color_map_offset;
    int proctex_alpha_map_offset;
    int proctex_lut_offset;
    int proctex_diff_lut_offset;
    float proctex_bias;
    vec3 fog_color;
    vec2 proctex_noise_f;
    vec2 proctex_noise_a;
    vec2 proctex_noise_p;
    vec4 const_color[NUM_TEV_STAGES];
    vec4 tev_combiner_buffer_color;
    vec4 clip_coef;
};

layout (std140) uniform shader_light_data {
    ivec4 lighting_lut_offset[NUM_LIGHTING_SAMPLERS / 4];
    vec3 lighting_global_ambient;
    LightSrc light_src[NUM_LIGHTS];
    float lut_scale_d0;
    float lut_scale_d1;
    float lut_scale_sp;
    float lut_scale_fr;
    float lut_scale_rb;
    float lut_scale_rg;
    float lut_scale_rr;
    int shadow_texture_bias;
};

// Rotate the vector v by the quaternion q
vec3 quaternion_rotate(vec4 q, vec3 v) {
    return v + 2.0 * cross(q.xyz, cross(q.xyz, v) + q.w * v);
}

float LookupLightingLUT(int lut_index, int index, float delta) {
    vec2 entry = texelFetch(texture_buffer_lut_lf, lighting_lut_offset[lut_index >> 2][lut_index & 3] + index).rg;
    return entry.r + entry.g * delta;
}

float LookupLightingLUTUnsigned(int lut_index, float pos) {
    int index = clamp(int(pos * 256.0), 0, 255);
    float delta = pos * 256.0 - float(index);
    return LookupLightingLUT(lut_index, index, delta);
}

float LookupLightingLUTSigned(int lut_index, float pos) {
    int index = clamp(int(pos * 128.0), -128, 127);
    float delta = pos * 128.0 - float(index);
    if (index < 0) index += 256;
    return LookupLightingLUT(lut_index, index, delta);
}

float byteround(float x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec2 byteround(vec2 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec3 byteround(vec3 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec4 byteround(vec4 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

// PICA's LOD formula for 2D textures.
// This LOD formula is the same as the LOD lower limit defined in OpenGL.
// f(x, y) >= max{m_u, m_v, m_w}
// (See OpenGL 4.6 spec, 8.14.1 - Scale Factor and Level-of-Detail)
float getLod(vec2 coord) {
    vec2 d = max(abs(dFdx(coord)), abs(dFdy(coord)));
    return log2(max(d.x, d.y));
}

vec4 shadowTexture(vec2 uv, float w) {
    return vec4(1.0);
}

vec4 shadowTextureCube(vec2 uv, float w) {
    return vec4(1.0);
}

void main() {
vec4 rounded_primary_color = byteround(primary_color);
vec4 primary_fragment_color = vec4(0.0);
vec4 secondary_fragment_color = vec4(0.0);
if (!(gl_FragCoord.x >= float(scissor_x1) && gl_FragCoord.y >= float(scissor_y1) && gl_FragCoord.x < float(scissor_x2) && gl_FragCoord.y < float(scissor_y2))) discard;
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));
vec4 texcolor1 = textureLod(tex1, texcoord1, getLod(texcoord1 * vec2(textureSize(tex1, 0))));
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((texcolor0.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((rounded_primary_color.a) * (texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.a = last_tex_env_out.a;

combiner_buffer = next_combiner_buffer;

vec3 color_output_2 = byteround(clamp((texcolor0.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_2 = byteround(clamp((texcolor0.a) + (texcolor1.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_2, alpha_output_2), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_3 = byteround(clamp((texcolor0.rgb) + (rounded_primary_color.aaa), vec3(0.0), vec3(1.0)));
float alpha_output_3 = byteround(clamp((texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_3, alpha_output_3), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;

vec3 color_output_4 = byteround(clamp((const_color[4].aaa) * (last_tex_env_out.rgb) + (const_color[4].rgb) * (vec3(1.0) - (last_tex_env_out.rgb)), vec3(0.0), vec3(1.0)));
float alpha_output_4 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_4, alpha_output_4), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_5 = byteround(clamp((last_tex_env_out.rgb) * (rounded_primary_color.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_5 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_5, alpha_output_5), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: AF9B3E04C7A2388D, A158C479B4700A39
// program: 4940142D60DA9543, 5D764F9A6220D694, A158C479B4700A39
// shader: 8B30, 12E014277088E12E

precision highp int;
precision highp float;
precision highp samplerBuffer;
precision highp usampler2D;
precision highp uimage2D;
in vec4 primary_color;
in vec2 texcoord0;
in vec2 texcoord1;
in vec2 texcoord2;
in float texcoord0_w;
in vec4 normquat;
in vec3 view;

#ifndef CITRA_GLES
in vec4 gl_FragCoord;
#endif // CITRA_GLES
out vec4 color;

uniform sampler2D tex0;
uniform sampler2D tex1;
uniform sampler2D tex2;
uniform samplerCube tex_cube;
uniform samplerBuffer texture_buffer_lut_lf;
uniform samplerBuffer texture_buffer_lut_rg;
uniform samplerBuffer texture_buffer_lut_rgba;

#define NUM_TEV_STAGES 6
#define NUM_LIGHTS 8
#define NUM_LIGHTING_SAMPLERS 24

struct LightSrc {
    vec3 specular_0;
    vec3 specular_1;
    vec3 diffuse;
    vec3 ambient;
    vec3 position;
    vec3 spot_direction;
    float dist_atten_bias;
    float dist_atten_scale;
};

layout (std140) uniform shader_data {
    int alphatest_ref;
    float depth_scale;
    float depth_offset;
    float shadow_bias_constant;
    float shadow_bias_linear;
    int scissor_x1;
    int scissor_y1;
    int scissor_x2;
    int scissor_y2;
    int fog_lut_offset;
    int proctex_noise_lut_offset;
    int proctex_color_map_offset;
    int proctex_alpha_map_offset;
    int proctex_lut_offset;
    int proctex_diff_lut_offset;
    float proctex_bias;
    vec3 fog_color;
    vec2 proctex_noise_f;
    vec2 proctex_noise_a;
    vec2 proctex_noise_p;
    vec4 const_color[NUM_TEV_STAGES];
    vec4 tev_combiner_buffer_color;
    vec4 clip_coef;
};

layout (std140) uniform shader_light_data {
    ivec4 lighting_lut_offset[NUM_LIGHTING_SAMPLERS / 4];
    vec3 lighting_global_ambient;
    LightSrc light_src[NUM_LIGHTS];
    float lut_scale_d0;
    float lut_scale_d1;
    float lut_scale_sp;
    float lut_scale_fr;
    float lut_scale_rb;
    float lut_scale_rg;
    float lut_scale_rr;
    int shadow_texture_bias;
};

// Rotate the vector v by the quaternion q
vec3 quaternion_rotate(vec4 q, vec3 v) {
    return v + 2.0 * cross(q.xyz, cross(q.xyz, v) + q.w * v);
}

float LookupLightingLUT(int lut_index, int index, float delta) {
    vec2 entry = texelFetch(texture_buffer_lut_lf, lighting_lut_offset[lut_index >> 2][lut_index & 3] + index).rg;
    return entry.r + entry.g * delta;
}

float LookupLightingLUTUnsigned(int lut_index, float pos) {
    int index = clamp(int(pos * 256.0), 0, 255);
    float delta = pos * 256.0 - float(index);
    return LookupLightingLUT(lut_index, index, delta);
}

float LookupLightingLUTSigned(int lut_index, float pos) {
    int index = clamp(int(pos * 128.0), -128, 127);
    float delta = pos * 128.0 - float(index);
    if (index < 0) index += 256;
    return LookupLightingLUT(lut_index, index, delta);
}

float byteround(float x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec2 byteround(vec2 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec3 byteround(vec3 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec4 byteround(vec4 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

// PICA's LOD formula for 2D textures.
// This LOD formula is the same as the LOD lower limit defined in OpenGL.
// f(x, y) >= max{m_u, m_v, m_w}
// (See OpenGL 4.6 spec, 8.14.1 - Scale Factor and Level-of-Detail)
float getLod(vec2 coord) {
    vec2 d = max(abs(dFdx(coord)), abs(dFdy(coord)));
    return log2(max(d.x, d.y));
}

vec4 shadowTexture(vec2 uv, float w) {
    return vec4(1.0);
}

vec4 shadowTextureCube(vec2 uv, float w) {
    return vec4(1.0);
}

void main() {
vec4 rounded_primary_color = byteround(primary_color);
vec4 primary_fragment_color = vec4(0.0);
vec4 secondary_fragment_color = vec4(0.0);
if (!(gl_FragCoord.x >= float(scissor_x1) && gl_FragCoord.y >= float(scissor_y1) && gl_FragCoord.x < float(scissor_x2) && gl_FragCoord.y < float(scissor_y2))) discard;
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));
vec4 texcolor1 = textureLod(tex1, texcoord1, getLod(texcoord1 * vec2(textureSize(tex1, 0))));
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((texcolor0.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((rounded_primary_color.a) * (texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.a = last_tex_env_out.a;

combiner_buffer = next_combiner_buffer;

vec3 color_output_2 = byteround(clamp((texcolor0.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_2 = byteround(clamp((texcolor0.a) + (texcolor1.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_2, alpha_output_2), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_3 = byteround(clamp((const_color[3].rgb) * (vec3(1.0) - texcolor0.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_3 = byteround(clamp((const_color[3].a) * (1.0 - texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_3, alpha_output_3), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;

vec3 color_output_4 = byteround(clamp((const_color[4].rgb) * (texcolor0.rgb) + (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_4 = byteround(clamp((const_color[4].a) * (texcolor0.a) + (last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_4, alpha_output_4), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_5 = byteround(clamp((rounded_primary_color.rgb) * (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_5 = byteround(clamp((rounded_primary_color.a) * (last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_5, alpha_output_5), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: 04FDA5F3A4DE6C29, 12E014277088E12E
// program: 4940142D60DA9543, 5D764F9A6220D694, 12E014277088E12E
// shader: 8B30, 7204D56A0D67E184

precision highp int;
precision highp float;
precision highp samplerBuffer;
precision highp usampler2D;
precision highp uimage2D;
in vec4 primary_color;
in vec2 texcoord0;
in vec2 texcoord1;
in vec2 texcoord2;
in float texcoord0_w;
in vec4 normquat;
in vec3 view;

#ifndef CITRA_GLES
in vec4 gl_FragCoord;
#endif // CITRA_GLES
out vec4 color;

uniform sampler2D tex0;
uniform sampler2D tex1;
uniform sampler2D tex2;
uniform samplerCube tex_cube;
uniform samplerBuffer texture_buffer_lut_lf;
uniform samplerBuffer texture_buffer_lut_rg;
uniform samplerBuffer texture_buffer_lut_rgba;

#define NUM_TEV_STAGES 6
#define NUM_LIGHTS 8
#define NUM_LIGHTING_SAMPLERS 24

struct LightSrc {
    vec3 specular_0;
    vec3 specular_1;
    vec3 diffuse;
    vec3 ambient;
    vec3 position;
    vec3 spot_direction;
    float dist_atten_bias;
    float dist_atten_scale;
};

layout (std140) uniform shader_data {
    int alphatest_ref;
    float depth_scale;
    float depth_offset;
    float shadow_bias_constant;
    float shadow_bias_linear;
    int scissor_x1;
    int scissor_y1;
    int scissor_x2;
    int scissor_y2;
    int fog_lut_offset;
    int proctex_noise_lut_offset;
    int proctex_color_map_offset;
    int proctex_alpha_map_offset;
    int proctex_lut_offset;
    int proctex_diff_lut_offset;
    float proctex_bias;
    vec3 fog_color;
    vec2 proctex_noise_f;
    vec2 proctex_noise_a;
    vec2 proctex_noise_p;
    vec4 const_color[NUM_TEV_STAGES];
    vec4 tev_combiner_buffer_color;
    vec4 clip_coef;
};

layout (std140) uniform shader_light_data {
    ivec4 lighting_lut_offset[NUM_LIGHTING_SAMPLERS / 4];
    vec3 lighting_global_ambient;
    LightSrc light_src[NUM_LIGHTS];
    float lut_scale_d0;
    float lut_scale_d1;
    float lut_scale_sp;
    float lut_scale_fr;
    float lut_scale_rb;
    float lut_scale_rg;
    float lut_scale_rr;
    int shadow_texture_bias;
};

// Rotate the vector v by the quaternion q
vec3 quaternion_rotate(vec4 q, vec3 v) {
    return v + 2.0 * cross(q.xyz, cross(q.xyz, v) + q.w * v);
}

float LookupLightingLUT(int lut_index, int index, float delta) {
    vec2 entry = texelFetch(texture_buffer_lut_lf, lighting_lut_offset[lut_index >> 2][lut_index & 3] + index).rg;
    return entry.r + entry.g * delta;
}

float LookupLightingLUTUnsigned(int lut_index, float pos) {
    int index = clamp(int(pos * 256.0), 0, 255);
    float delta = pos * 256.0 - float(index);
    return LookupLightingLUT(lut_index, index, delta);
}

float LookupLightingLUTSigned(int lut_index, float pos) {
    int index = clamp(int(pos * 128.0), -128, 127);
    float delta = pos * 128.0 - float(index);
    if (index < 0) index += 256;
    return LookupLightingLUT(lut_index, index, delta);
}

float byteround(float x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec2 byteround(vec2 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec3 byteround(vec3 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec4 byteround(vec4 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

// PICA's LOD formula for 2D textures.
// This LOD formula is the same as the LOD lower limit defined in OpenGL.
// f(x, y) >= max{m_u, m_v, m_w}
// (See OpenGL 4.6 spec, 8.14.1 - Scale Factor and Level-of-Detail)
float getLod(vec2 coord) {
    vec2 d = max(abs(dFdx(coord)), abs(dFdy(coord)));
    return log2(max(d.x, d.y));
}

vec4 shadowTexture(vec2 uv, float w) {
    return vec4(1.0);
}

vec4 shadowTextureCube(vec2 uv, float w) {
    return vec4(1.0);
}

void main() {
vec4 rounded_primary_color = byteround(primary_color);
vec4 primary_fragment_color = vec4(0.0);
vec4 secondary_fragment_color = vec4(0.0);
if (!(gl_FragCoord.x >= float(scissor_x1) && gl_FragCoord.y >= float(scissor_y1) && gl_FragCoord.x < float(scissor_x2) && gl_FragCoord.y < float(scissor_y2))) discard;
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));
vec4 texcolor1 = textureLod(tex1, texcoord1, getLod(texcoord1 * vec2(textureSize(tex1, 0))));
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((texcolor0.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((rounded_primary_color.a) * (texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.a = last_tex_env_out.a;

combiner_buffer = next_combiner_buffer;

vec3 color_output_2 = byteround(clamp((texcolor0.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_2 = byteround(clamp((texcolor0.a) + (texcolor1.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_2, alpha_output_2), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_3 = byteround(clamp((vec3(1.0) - texcolor0.rgb) * (const_color[3].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_3 = byteround(clamp((texcolor0.a) * (const_color[3].a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_3, alpha_output_3), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;

vec3 color_output_4 = byteround(clamp((texcolor0.rgb) * (const_color[4].rgb) + (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_4 = byteround(clamp((1.0 - texcolor0.a) * (const_color[4].a) + (last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_4, alpha_output_4), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_5 = byteround(clamp((rounded_primary_color.rgb) * (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_5 = byteround(clamp((rounded_primary_color.a) * (last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_5, alpha_output_5), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: CB65410C25217A93, 7204D56A0D67E184
// program: 4940142D60DA9543, 5D764F9A6220D694, 7204D56A0D67E184
// shader: 8B30, 794C81FEB0FF7CDD

precision highp int;
precision highp float;
precision highp samplerBuffer;
precision highp usampler2D;
precision highp uimage2D;
in vec4 primary_color;
in vec2 texcoord0;
in vec2 texcoord1;
in vec2 texcoord2;
in float texcoord0_w;
in vec4 normquat;
in vec3 view;

#ifndef CITRA_GLES
in vec4 gl_FragCoord;
#endif // CITRA_GLES
out vec4 color;

uniform sampler2D tex0;
uniform sampler2D tex1;
uniform sampler2D tex2;
uniform samplerCube tex_cube;
uniform samplerBuffer texture_buffer_lut_lf;
uniform samplerBuffer texture_buffer_lut_rg;
uniform samplerBuffer texture_buffer_lut_rgba;

#define NUM_TEV_STAGES 6
#define NUM_LIGHTS 8
#define NUM_LIGHTING_SAMPLERS 24

struct LightSrc {
    vec3 specular_0;
    vec3 specular_1;
    vec3 diffuse;
    vec3 ambient;
    vec3 position;
    vec3 spot_direction;
    float dist_atten_bias;
    float dist_atten_scale;
};

layout (std140) uniform shader_data {
    int alphatest_ref;
    float depth_scale;
    float depth_offset;
    float shadow_bias_constant;
    float shadow_bias_linear;
    int scissor_x1;
    int scissor_y1;
    int scissor_x2;
    int scissor_y2;
    int fog_lut_offset;
    int proctex_noise_lut_offset;
    int proctex_color_map_offset;
    int proctex_alpha_map_offset;
    int proctex_lut_offset;
    int proctex_diff_lut_offset;
    float proctex_bias;
    vec3 fog_color;
    vec2 proctex_noise_f;
    vec2 proctex_noise_a;
    vec2 proctex_noise_p;
    vec4 const_color[NUM_TEV_STAGES];
    vec4 tev_combiner_buffer_color;
    vec4 clip_coef;
};

layout (std140) uniform shader_light_data {
    ivec4 lighting_lut_offset[NUM_LIGHTING_SAMPLERS / 4];
    vec3 lighting_global_ambient;
    LightSrc light_src[NUM_LIGHTS];
    float lut_scale_d0;
    float lut_scale_d1;
    float lut_scale_sp;
    float lut_scale_fr;
    float lut_scale_rb;
    float lut_scale_rg;
    float lut_scale_rr;
    int shadow_texture_bias;
};

// Rotate the vector v by the quaternion q
vec3 quaternion_rotate(vec4 q, vec3 v) {
    return v + 2.0 * cross(q.xyz, cross(q.xyz, v) + q.w * v);
}

float LookupLightingLUT(int lut_index, int index, float delta) {
    vec2 entry = texelFetch(texture_buffer_lut_lf, lighting_lut_offset[lut_index >> 2][lut_index & 3] + index).rg;
    return entry.r + entry.g * delta;
}

float LookupLightingLUTUnsigned(int lut_index, float pos) {
    int index = clamp(int(pos * 256.0), 0, 255);
    float delta = pos * 256.0 - float(index);
    return LookupLightingLUT(lut_index, index, delta);
}

float LookupLightingLUTSigned(int lut_index, float pos) {
    int index = clamp(int(pos * 128.0), -128, 127);
    float delta = pos * 128.0 - float(index);
    if (index < 0) index += 256;
    return LookupLightingLUT(lut_index, index, delta);
}

float byteround(float x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec2 byteround(vec2 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec3 byteround(vec3 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec4 byteround(vec4 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

// PICA's LOD formula for 2D textures.
// This LOD formula is the same as the LOD lower limit defined in OpenGL.
// f(x, y) >= max{m_u, m_v, m_w}
// (See OpenGL 4.6 spec, 8.14.1 - Scale Factor and Level-of-Detail)
float getLod(vec2 coord) {
    vec2 d = max(abs(dFdx(coord)), abs(dFdy(coord)));
    return log2(max(d.x, d.y));
}

vec4 shadowTexture(vec2 uv, float w) {
    return vec4(1.0);
}

vec4 shadowTextureCube(vec2 uv, float w) {
    return vec4(1.0);
}

void main() {
vec4 rounded_primary_color = byteround(primary_color);
vec4 primary_fragment_color = vec4(0.0);
vec4 secondary_fragment_color = vec4(0.0);
if (!(gl_FragCoord.x >= float(scissor_x1) && gl_FragCoord.y >= float(scissor_y1) && gl_FragCoord.x < float(scissor_x2) && gl_FragCoord.y < float(scissor_y2))) discard;
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((const_color[0].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((const_color[0].a) * (const_color[0].a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

vec3 color_output_2 = byteround(clamp((last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_2 = byteround(clamp((last_tex_env_out.a) + (last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_2, alpha_output_2), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_3 = byteround(clamp((last_tex_env_out.rgb) * (vec3(1.0) - last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_3 = byteround(clamp((last_tex_env_out.a) * (1.0 - last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_3, alpha_output_3), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_4 = byteround(clamp((last_tex_env_out.rgb) * (last_tex_env_out.rgb) + (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_4 = byteround(clamp((last_tex_env_out.a) * (last_tex_env_out.a) + (last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_4, alpha_output_4), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_5 = byteround(clamp((const_color[5].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_5 = byteround(clamp((const_color[5].a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_5, alpha_output_5), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: 8940A7ED4CE24A81, 794C81FEB0FF7CDD
// program: 0000000000000000, 0000000000000000, 794C81FEB0FF7CDD
// reference: D4F4BEF9AC24CD49, 42C06BDE37F868CC
// reference: 3A146E84CA621416, A6CF906801B4C84C
// reference: D4F4BEF913968523, 47C12CB4EFB88BF9
// reference: D4F4BEF957C4BCF0, BE595F2A0F068639
// reference: D4F4BEF94CE24A81, 32C1D520BD833D5A
// program: 4940142D60DA9543, 5D764F9A6220D694, 566076D59903AA2D
// program: 4940142D60DA9543, 5D764F9A6220D694, 34F30E1A3AF1949D
// program: 4940142D60DA9543, 5D764F9A6220D694, 192055C797D85EC4
// program: CA388C44D4F5C19E, AD7922A63ED54CA7, 4BC2BF19C08722EB
// program: CA388C44D4F5C19E, AD7922A63ED54CA7, 894D2A97E107BF7E
// program: 4940142D60DA9543, 5D764F9A6220D694, 25070A41D4D2F8A2
// program: 4940142D60DA9543, 5D764F9A6220D694, 3CD89482FB31182E
// program: 4940142D60DA9543, 5D764F9A6220D694, 30DFA7C88443BB52
// program: 4940142D60DA9543, 5D764F9A6220D694, 4538E17A2CA79416
// program: 4940142D60DA9543, 5D764F9A6220D694, AEC0326D0FF8012B
// program: 4940142D60DA9543, 5D764F9A6220D694, 5E24129746B84A11
// program: 4940142D60DA9543, 5D764F9A6220D694, 566076D50FE2BDC0
// program: 4940142D60DA9543, 5D764F9A6220D694, 81DB2153F69E5EB8
// program: 4940142D60DA9543, 5D764F9A6220D694, 5EC5994C11A4625E
// program: 4940142D60DA9543, 5D764F9A6220D694, DC301417737DEC74
// program: 4940142D60DA9543, 5D764F9A6220D694, 29159B1496B07349
// program: 0000000000000000, 0000000000000000, 01C735B23904D409
// program: 0000000000000000, 0000000000000000, 32C1D520BD833D5A
// program: 0000000000000000, 0000000000000000, 42C06BDE37F868CC
// program: 0000000000000000, 0000000000000000, A6CF906801B4C84C
// program: 0000000000000000, 0000000000000000, 47C12CB4EFB88BF9
// program: 0000000000000000, 0000000000000000, BE595F2A0F068639
// program: 4940142D60DA9543, 5D764F9A6220D694, C15BAC4C5CD19BA9
// program: 4940142D60DA9543, 5D764F9A6220D694, 8E031CA1EF8AB965
// program: 4940142D60DA9543, 5D764F9A6220D694, 58E3D16E1AEDE978
// program: 4940142D60DA9543, 5D764F9A6220D694, 352ED9D7A85918E0
// program: 4940142D60DA9543, 5D764F9A6220D694, 6D57C165F6099E99
// program: 4940142D60DA9543, 5D764F9A6220D694, 9CF5558F836EF5E5
// program: 4940142D60DA9543, 5D764F9A6220D694, A229EC8A7299654B
// program: 4940142D60DA9543, 5D764F9A6220D694, 99FF8EF14D3EAA71
// program: 4940142D60DA9543, 5D764F9A6220D694, B0023CB25D77107F
// program: 4940142D60DA9543, 5D764F9A6220D694, 1B81F2CA1B50297E
// program: 4940142D60DA9543, 5D764F9A6220D694, AAB2FC9153489E62
// program: CA388C44D4F5C19E, AD7922A63ED54CA7, DF7723AC30221E44
// program: CA388C44D4F5C19E, AD7922A63ED54CA7, E0AB8018973B1CF2
// program: CA388C44D4F5C19E, AD7922A63ED54CA7, 32519FA0A5D7625C
// program: CA388C44D4F5C19E, AD7922A63ED54CA7, C59EA4758EB9FB8A
// program: 4940142D60DA9543, 5D764F9A6220D694, 7DF80A42D182C5C5
// program: 4940142D60DA9543, 5D764F9A6220D694, D9EEAFEE3D3A50A3
// program: 4940142D60DA9543, 5D764F9A6220D694, 88DD8541344F5AF8
// program: 4940142D60DA9543, 5D764F9A6220D694, 3DCAEF24B08EB406
// program: 4940142D60DA9543, 5D764F9A6220D694, CB7B81A3D860B2D2
// program: 4940142D60DA9543, 5D764F9A6220D694, 0405AC4C5CF04900
// program: 4940142D60DA9543, 5D764F9A6220D694, 308BD3899EE631C6
// program: 4940142D60DA9543, 5D764F9A6220D694, 6EA569ACFAADF996
// program: 4940142D60DA9543, 5D764F9A6220D694, 5DF6CE37919016E9
// program: 4940142D60DA9543, 5D764F9A6220D694, 9FCF93B4C2ACF0BC
// program: 4940142D60DA9543, 5D764F9A6220D694, A3094D7D6C8159BD
// program: 4940142D60DA9543, 5D764F9A6220D694, 69D212CCEFB49C3F
// program: 4940142D60DA9543, 5D764F9A6220D694, 9A8D32655829D0CC
// program: 4940142D60DA9543, 5D764F9A6220D694, B1228BF1475D9404
// shader: 8B30, C956C8002889D338

precision highp int;
precision highp float;
precision highp samplerBuffer;
precision highp usampler2D;
precision highp uimage2D;
in vec4 primary_color;
in vec2 texcoord0;
in vec2 texcoord1;
in vec2 texcoord2;
in float texcoord0_w;
in vec4 normquat;
in vec3 view;

#ifndef CITRA_GLES
in vec4 gl_FragCoord;
#endif // CITRA_GLES
out vec4 color;

uniform sampler2D tex0;
uniform sampler2D tex1;
uniform sampler2D tex2;
uniform samplerCube tex_cube;
uniform samplerBuffer texture_buffer_lut_lf;
uniform samplerBuffer texture_buffer_lut_rg;
uniform samplerBuffer texture_buffer_lut_rgba;

#define NUM_TEV_STAGES 6
#define NUM_LIGHTS 8
#define NUM_LIGHTING_SAMPLERS 24

struct LightSrc {
    vec3 specular_0;
    vec3 specular_1;
    vec3 diffuse;
    vec3 ambient;
    vec3 position;
    vec3 spot_direction;
    float dist_atten_bias;
    float dist_atten_scale;
};

layout (std140) uniform shader_data {
    int alphatest_ref;
    float depth_scale;
    float depth_offset;
    float shadow_bias_constant;
    float shadow_bias_linear;
    int scissor_x1;
    int scissor_y1;
    int scissor_x2;
    int scissor_y2;
    int fog_lut_offset;
    int proctex_noise_lut_offset;
    int proctex_color_map_offset;
    int proctex_alpha_map_offset;
    int proctex_lut_offset;
    int proctex_diff_lut_offset;
    float proctex_bias;
    vec3 fog_color;
    vec2 proctex_noise_f;
    vec2 proctex_noise_a;
    vec2 proctex_noise_p;
    vec4 const_color[NUM_TEV_STAGES];
    vec4 tev_combiner_buffer_color;
    vec4 clip_coef;
};

layout (std140) uniform shader_light_data {
    ivec4 lighting_lut_offset[NUM_LIGHTING_SAMPLERS / 4];
    vec3 lighting_global_ambient;
    LightSrc light_src[NUM_LIGHTS];
    float lut_scale_d0;
    float lut_scale_d1;
    float lut_scale_sp;
    float lut_scale_fr;
    float lut_scale_rb;
    float lut_scale_rg;
    float lut_scale_rr;
    int shadow_texture_bias;
};

// Rotate the vector v by the quaternion q
vec3 quaternion_rotate(vec4 q, vec3 v) {
    return v + 2.0 * cross(q.xyz, cross(q.xyz, v) + q.w * v);
}

float LookupLightingLUT(int lut_index, int index, float delta) {
    vec2 entry = texelFetch(texture_buffer_lut_lf, lighting_lut_offset[lut_index >> 2][lut_index & 3] + index).rg;
    return entry.r + entry.g * delta;
}

float LookupLightingLUTUnsigned(int lut_index, float pos) {
    int index = clamp(int(pos * 256.0), 0, 255);
    float delta = pos * 256.0 - float(index);
    return LookupLightingLUT(lut_index, index, delta);
}

float LookupLightingLUTSigned(int lut_index, float pos) {
    int index = clamp(int(pos * 128.0), -128, 127);
    float delta = pos * 128.0 - float(index);
    if (index < 0) index += 256;
    return LookupLightingLUT(lut_index, index, delta);
}

float byteround(float x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec2 byteround(vec2 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec3 byteround(vec3 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec4 byteround(vec4 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

// PICA's LOD formula for 2D textures.
// This LOD formula is the same as the LOD lower limit defined in OpenGL.
// f(x, y) >= max{m_u, m_v, m_w}
// (See OpenGL 4.6 spec, 8.14.1 - Scale Factor and Level-of-Detail)
float getLod(vec2 coord) {
    vec2 d = max(abs(dFdx(coord)), abs(dFdy(coord)));
    return log2(max(d.x, d.y));
}

vec4 shadowTexture(vec2 uv, float w) {
    return vec4(1.0);
}

vec4 shadowTextureCube(vec2 uv, float w) {
    return vec4(1.0);
}

void main() {
vec4 rounded_primary_color = byteround(primary_color);
vec4 primary_fragment_color = vec4(0.0);
vec4 secondary_fragment_color = vec4(0.0);
if (!(gl_FragCoord.x >= float(scissor_x1) && gl_FragCoord.y >= float(scissor_y1) && gl_FragCoord.x < float(scissor_x2) && gl_FragCoord.y < float(scissor_y2))) discard;
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));
vec4 texcolor1 = textureLod(tex1, texcoord1, getLod(texcoord1 * vec2(textureSize(tex1, 0))));
vec4 texcolor2 = textureLod(tex2, texcoord2, getLod(texcoord2 * vec2(textureSize(tex2, 0))));
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((texcolor0.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((rounded_primary_color.a) * (texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

vec3 color_output_2 = byteround(clamp((const_color[2].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_2 = byteround(clamp((texcolor0.a) + (texcolor1.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_2, alpha_output_2), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_3 = byteround(clamp((texcolor0.rgb) * (const_color[3].aaa) + (texcolor1.rgb) * (vec3(1.0) - (const_color[3].aaa)), vec3(0.0), vec3(1.0)));
float alpha_output_3 = byteround(clamp((texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_3, alpha_output_3), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_4 = byteround(clamp((const_color[4].rgb) * (last_tex_env_out.rgb) + (combiner_buffer.rgb) * (vec3(1.0) - (last_tex_env_out.rgb)), vec3(0.0), vec3(1.0)));
float alpha_output_4 = byteround(clamp((last_tex_env_out.a) * (rounded_primary_color.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_4, alpha_output_4), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_5 = byteround(clamp((rounded_primary_color.rgb) * (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_5 = byteround(clamp((last_tex_env_out.a) * (texcolor2.r), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_5, alpha_output_5), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: A74F64CC17F544C5, C956C8002889D338
// program: 4940142D60DA9543, 5D764F9A6220D694, C956C8002889D338
// reference: 4296362CB9F63373, 4940142D60DA9543
// shader: 8B30, A39E1DC152137AA5

precision highp int;
precision highp float;
precision highp samplerBuffer;
precision highp usampler2D;
precision highp uimage2D;
in vec4 primary_color;
in vec2 texcoord0;
in vec2 texcoord1;
in vec2 texcoord2;
in float texcoord0_w;
in vec4 normquat;
in vec3 view;

#ifndef CITRA_GLES
in vec4 gl_FragCoord;
#endif // CITRA_GLES
out vec4 color;

uniform sampler2D tex0;
uniform sampler2D tex1;
uniform sampler2D tex2;
uniform samplerCube tex_cube;
uniform samplerBuffer texture_buffer_lut_lf;
uniform samplerBuffer texture_buffer_lut_rg;
uniform samplerBuffer texture_buffer_lut_rgba;

#define NUM_TEV_STAGES 6
#define NUM_LIGHTS 8
#define NUM_LIGHTING_SAMPLERS 24

struct LightSrc {
    vec3 specular_0;
    vec3 specular_1;
    vec3 diffuse;
    vec3 ambient;
    vec3 position;
    vec3 spot_direction;
    float dist_atten_bias;
    float dist_atten_scale;
};

layout (std140) uniform shader_data {
    int alphatest_ref;
    float depth_scale;
    float depth_offset;
    float shadow_bias_constant;
    float shadow_bias_linear;
    int scissor_x1;
    int scissor_y1;
    int scissor_x2;
    int scissor_y2;
    int fog_lut_offset;
    int proctex_noise_lut_offset;
    int proctex_color_map_offset;
    int proctex_alpha_map_offset;
    int proctex_lut_offset;
    int proctex_diff_lut_offset;
    float proctex_bias;
    vec3 fog_color;
    vec2 proctex_noise_f;
    vec2 proctex_noise_a;
    vec2 proctex_noise_p;
    vec4 const_color[NUM_TEV_STAGES];
    vec4 tev_combiner_buffer_color;
    vec4 clip_coef;
};

layout (std140) uniform shader_light_data {
    ivec4 lighting_lut_offset[NUM_LIGHTING_SAMPLERS / 4];
    vec3 lighting_global_ambient;
    LightSrc light_src[NUM_LIGHTS];
    float lut_scale_d0;
    float lut_scale_d1;
    float lut_scale_sp;
    float lut_scale_fr;
    float lut_scale_rb;
    float lut_scale_rg;
    float lut_scale_rr;
    int shadow_texture_bias;
};

// Rotate the vector v by the quaternion q
vec3 quaternion_rotate(vec4 q, vec3 v) {
    return v + 2.0 * cross(q.xyz, cross(q.xyz, v) + q.w * v);
}

float LookupLightingLUT(int lut_index, int index, float delta) {
    vec2 entry = texelFetch(texture_buffer_lut_lf, lighting_lut_offset[lut_index >> 2][lut_index & 3] + index).rg;
    return entry.r + entry.g * delta;
}

float LookupLightingLUTUnsigned(int lut_index, float pos) {
    int index = clamp(int(pos * 256.0), 0, 255);
    float delta = pos * 256.0 - float(index);
    return LookupLightingLUT(lut_index, index, delta);
}

float LookupLightingLUTSigned(int lut_index, float pos) {
    int index = clamp(int(pos * 128.0), -128, 127);
    float delta = pos * 128.0 - float(index);
    if (index < 0) index += 256;
    return LookupLightingLUT(lut_index, index, delta);
}

float byteround(float x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec2 byteround(vec2 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec3 byteround(vec3 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec4 byteround(vec4 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

// PICA's LOD formula for 2D textures.
// This LOD formula is the same as the LOD lower limit defined in OpenGL.
// f(x, y) >= max{m_u, m_v, m_w}
// (See OpenGL 4.6 spec, 8.14.1 - Scale Factor and Level-of-Detail)
float getLod(vec2 coord) {
    vec2 d = max(abs(dFdx(coord)), abs(dFdy(coord)));
    return log2(max(d.x, d.y));
}

vec4 shadowTexture(vec2 uv, float w) {
    return vec4(1.0);
}

vec4 shadowTextureCube(vec2 uv, float w) {
    return vec4(1.0);
}

void main() {
vec4 rounded_primary_color = byteround(primary_color);
vec4 primary_fragment_color = vec4(0.0);
vec4 secondary_fragment_color = vec4(0.0);
if (!(gl_FragCoord.x >= float(scissor_x1) && gl_FragCoord.y >= float(scissor_y1) && gl_FragCoord.x < float(scissor_x2) && gl_FragCoord.y < float(scissor_y2))) discard;
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));
vec4 texcolor1 = textureLod(tex1, texcoord1, getLod(texcoord1 * vec2(textureSize(tex1, 0))));
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((texcolor0.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((rounded_primary_color.a) * (texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

vec3 color_output_2 = byteround(clamp((const_color[2].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_2 = byteround(clamp((texcolor0.a) + (texcolor1.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_2, alpha_output_2), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_3 = byteround(clamp((const_color[3].rgb) * (vec3(1.0) - texcolor0.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_3 = byteround(clamp((const_color[3].a) * (1.0 - texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_3, alpha_output_3), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_4 = byteround(clamp((const_color[4].rgb) * (texcolor0.rgb) + (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_4 = byteround(clamp((const_color[4].a) * (texcolor0.a) + (last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_4, alpha_output_4), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_5 = byteround(clamp((rounded_primary_color.rgb) * (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_5 = byteround(clamp((rounded_primary_color.a) * (last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_5, alpha_output_5), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: 04FDA5F37ACEA24C, A39E1DC152137AA5
// program: 4940142D60DA9543, 5D764F9A6220D694, A39E1DC152137AA5
// reference: EF28EB25E980BE4B, CA388C44D4F5C19E
// shader: 8B30, 57AB5E16EA24EA49

precision highp int;
precision highp float;
precision highp samplerBuffer;
precision highp usampler2D;
precision highp uimage2D;
in vec4 primary_color;
in vec2 texcoord0;
in vec2 texcoord1;
in vec2 texcoord2;
in float texcoord0_w;
in vec4 normquat;
in vec3 view;

#ifndef CITRA_GLES
in vec4 gl_FragCoord;
#endif // CITRA_GLES
out vec4 color;

uniform sampler2D tex0;
uniform sampler2D tex1;
uniform sampler2D tex2;
uniform samplerCube tex_cube;
uniform samplerBuffer texture_buffer_lut_lf;
uniform samplerBuffer texture_buffer_lut_rg;
uniform samplerBuffer texture_buffer_lut_rgba;

#define NUM_TEV_STAGES 6
#define NUM_LIGHTS 8
#define NUM_LIGHTING_SAMPLERS 24

struct LightSrc {
    vec3 specular_0;
    vec3 specular_1;
    vec3 diffuse;
    vec3 ambient;
    vec3 position;
    vec3 spot_direction;
    float dist_atten_bias;
    float dist_atten_scale;
};

layout (std140) uniform shader_data {
    int alphatest_ref;
    float depth_scale;
    float depth_offset;
    float shadow_bias_constant;
    float shadow_bias_linear;
    int scissor_x1;
    int scissor_y1;
    int scissor_x2;
    int scissor_y2;
    int fog_lut_offset;
    int proctex_noise_lut_offset;
    int proctex_color_map_offset;
    int proctex_alpha_map_offset;
    int proctex_lut_offset;
    int proctex_diff_lut_offset;
    float proctex_bias;
    vec3 fog_color;
    vec2 proctex_noise_f;
    vec2 proctex_noise_a;
    vec2 proctex_noise_p;
    vec4 const_color[NUM_TEV_STAGES];
    vec4 tev_combiner_buffer_color;
    vec4 clip_coef;
};

layout (std140) uniform shader_light_data {
    ivec4 lighting_lut_offset[NUM_LIGHTING_SAMPLERS / 4];
    vec3 lighting_global_ambient;
    LightSrc light_src[NUM_LIGHTS];
    float lut_scale_d0;
    float lut_scale_d1;
    float lut_scale_sp;
    float lut_scale_fr;
    float lut_scale_rb;
    float lut_scale_rg;
    float lut_scale_rr;
    int shadow_texture_bias;
};

// Rotate the vector v by the quaternion q
vec3 quaternion_rotate(vec4 q, vec3 v) {
    return v + 2.0 * cross(q.xyz, cross(q.xyz, v) + q.w * v);
}

float LookupLightingLUT(int lut_index, int index, float delta) {
    vec2 entry = texelFetch(texture_buffer_lut_lf, lighting_lut_offset[lut_index >> 2][lut_index & 3] + index).rg;
    return entry.r + entry.g * delta;
}

float LookupLightingLUTUnsigned(int lut_index, float pos) {
    int index = clamp(int(pos * 256.0), 0, 255);
    float delta = pos * 256.0 - float(index);
    return LookupLightingLUT(lut_index, index, delta);
}

float LookupLightingLUTSigned(int lut_index, float pos) {
    int index = clamp(int(pos * 128.0), -128, 127);
    float delta = pos * 128.0 - float(index);
    if (index < 0) index += 256;
    return LookupLightingLUT(lut_index, index, delta);
}

float byteround(float x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec2 byteround(vec2 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec3 byteround(vec3 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec4 byteround(vec4 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

// PICA's LOD formula for 2D textures.
// This LOD formula is the same as the LOD lower limit defined in OpenGL.
// f(x, y) >= max{m_u, m_v, m_w}
// (See OpenGL 4.6 spec, 8.14.1 - Scale Factor and Level-of-Detail)
float getLod(vec2 coord) {
    vec2 d = max(abs(dFdx(coord)), abs(dFdy(coord)));
    return log2(max(d.x, d.y));
}

vec4 shadowTexture(vec2 uv, float w) {
    return vec4(1.0);
}

vec4 shadowTextureCube(vec2 uv, float w) {
    return vec4(1.0);
}

void main() {
vec4 rounded_primary_color = byteround(primary_color);
vec4 primary_fragment_color = vec4(0.0);
vec4 secondary_fragment_color = vec4(0.0);
if (!(gl_FragCoord.x >= float(scissor_x1) && gl_FragCoord.y >= float(scissor_y1) && gl_FragCoord.x < float(scissor_x2) && gl_FragCoord.y < float(scissor_y2))) discard;
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((texcolor0.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((rounded_primary_color.a) * (texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

vec3 color_output_5 = byteround(clamp((rounded_primary_color.rgb) * (const_color[5].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_5 = byteround(clamp((rounded_primary_color.a) * (const_color[5].a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_5, alpha_output_5), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: 9D3D7669F59E8351, 57AB5E16EA24EA49
// program: 4940142D60DA9543, 5D764F9A6220D694, 57AB5E16EA24EA49
// program: 4940142D60DA9543, 5D764F9A6220D694, 839F98BE38105971
// program: 4940142D60DA9543, 5D764F9A6220D694, A158C479B4700A39
// program: 4940142D60DA9543, 5D764F9A6220D694, 12E014277088E12E
// program: 4940142D60DA9543, 5D764F9A6220D694, 7204D56A0D67E184
// program: 0000000000000000, 0000000000000000, 794C81FEB0FF7CDD
// reference: 4B1EF48F227D1E77, 285B3546CEA35D76
// program: 4940142D60DA9543, 5D764F9A6220D694, 566076D59903AA2D
// program: 4940142D60DA9543, 5D764F9A6220D694, 34F30E1A3AF1949D
// program: 4940142D60DA9543, 5D764F9A6220D694, 192055C797D85EC4
// program: CA388C44D4F5C19E, AD7922A63ED54CA7, 4BC2BF19C08722EB
// program: CA388C44D4F5C19E, AD7922A63ED54CA7, 894D2A97E107BF7E
// program: 4940142D60DA9543, 5D764F9A6220D694, 25070A41D4D2F8A2
// program: 4940142D60DA9543, 5D764F9A6220D694, 3CD89482FB31182E
// program: 4940142D60DA9543, 5D764F9A6220D694, 566076D59903AA2D
// program: 4940142D60DA9543, 5D764F9A6220D694, 34F30E1A3AF1949D
// program: 4940142D60DA9543, 5D764F9A6220D694, 192055C797D85EC4
// program: CA388C44D4F5C19E, AD7922A63ED54CA7, 4BC2BF19C08722EB
// program: CA388C44D4F5C19E, AD7922A63ED54CA7, 894D2A97E107BF7E
// program: 4940142D60DA9543, 5D764F9A6220D694, 25070A41D4D2F8A2
// program: 4940142D60DA9543, 5D764F9A6220D694, 3CD89482FB31182E
// program: 4940142D60DA9543, 5D764F9A6220D694, 30DFA7C88443BB52
// program: 4940142D60DA9543, 5D764F9A6220D694, 4538E17A2CA79416
// program: 4940142D60DA9543, 5D764F9A6220D694, AEC0326D0FF8012B
// program: 4940142D60DA9543, 5D764F9A6220D694, 5E24129746B84A11
// program: 4940142D60DA9543, 5D764F9A6220D694, 566076D50FE2BDC0
// program: 4940142D60DA9543, 5D764F9A6220D694, 81DB2153F69E5EB8
// program: 4940142D60DA9543, 5D764F9A6220D694, 5EC5994C11A4625E
// program: 4940142D60DA9543, 5D764F9A6220D694, DC301417737DEC74
// program: 4940142D60DA9543, 5D764F9A6220D694, 29159B1496B07349
// program: 0000000000000000, 0000000000000000, 01C735B23904D409
// program: 0000000000000000, 0000000000000000, 32C1D520BD833D5A
// program: 0000000000000000, 0000000000000000, 42C06BDE37F868CC
// program: 0000000000000000, 0000000000000000, A6CF906801B4C84C
// program: 0000000000000000, 0000000000000000, 47C12CB4EFB88BF9
// program: 0000000000000000, 0000000000000000, BE595F2A0F068639
// program: 4940142D60DA9543, 5D764F9A6220D694, C15BAC4C5CD19BA9
// program: 4940142D60DA9543, 5D764F9A6220D694, 8E031CA1EF8AB965
// program: 4940142D60DA9543, 5D764F9A6220D694, 58E3D16E1AEDE978
// program: 4940142D60DA9543, 5D764F9A6220D694, 352ED9D7A85918E0
// program: 4940142D60DA9543, 5D764F9A6220D694, 6D57C165F6099E99
// program: 4940142D60DA9543, 5D764F9A6220D694, 9CF5558F836EF5E5
// program: 4940142D60DA9543, 5D764F9A6220D694, A229EC8A7299654B
// program: 4940142D60DA9543, 5D764F9A6220D694, 99FF8EF14D3EAA71
// program: 4940142D60DA9543, 5D764F9A6220D694, B0023CB25D77107F
// program: 4940142D60DA9543, 5D764F9A6220D694, 1B81F2CA1B50297E
// program: 4940142D60DA9543, 5D764F9A6220D694, AAB2FC9153489E62
// program: CA388C44D4F5C19E, AD7922A63ED54CA7, DF7723AC30221E44
// program: CA388C44D4F5C19E, AD7922A63ED54CA7, E0AB8018973B1CF2
// program: CA388C44D4F5C19E, AD7922A63ED54CA7, 32519FA0A5D7625C
// program: CA388C44D4F5C19E, AD7922A63ED54CA7, C59EA4758EB9FB8A
// program: 4940142D60DA9543, 5D764F9A6220D694, 7DF80A42D182C5C5
// program: 4940142D60DA9543, 5D764F9A6220D694, D9EEAFEE3D3A50A3
// program: 4940142D60DA9543, 5D764F9A6220D694, 88DD8541344F5AF8
// program: 4940142D60DA9543, 5D764F9A6220D694, 3DCAEF24B08EB406
// program: 4940142D60DA9543, 5D764F9A6220D694, CB7B81A3D860B2D2
// program: 4940142D60DA9543, 5D764F9A6220D694, 0405AC4C5CF04900
// program: 4940142D60DA9543, 5D764F9A6220D694, 308BD3899EE631C6
// program: 4940142D60DA9543, 5D764F9A6220D694, 6EA569ACFAADF996
// program: 4940142D60DA9543, 5D764F9A6220D694, 5DF6CE37919016E9
// program: 4940142D60DA9543, 5D764F9A6220D694, 9FCF93B4C2ACF0BC
// program: 4940142D60DA9543, 5D764F9A6220D694, A3094D7D6C8159BD
// program: 4940142D60DA9543, 5D764F9A6220D694, 69D212CCEFB49C3F
// program: 4940142D60DA9543, 5D764F9A6220D694, 9A8D32655829D0CC
// program: 4940142D60DA9543, 5D764F9A6220D694, B1228BF1475D9404
// program: 4940142D60DA9543, 5D764F9A6220D694, 839F98BE38105971
// program: 4940142D60DA9543, 5D764F9A6220D694, A158C479B4700A39
// program: 4940142D60DA9543, 5D764F9A6220D694, 12E014277088E12E
// program: 4940142D60DA9543, 5D764F9A6220D694, 7204D56A0D67E184
// program: 0000000000000000, 0000000000000000, 794C81FEB0FF7CDD
// reference: 4EE59A6DB2B33B49, 4940142D60DA9543
// reference: 80950B41ADCD979A, CA388C44D4F5C19E
// reference: 24A314EB663037A6, 285B3546CEA35D76
// reference: 2D2BD648FDBB1AA2, 4940142D60DA9543
// reference: 2D2BD648766824BB, 4940142D60DA9543
// reference: 2D2BD6482DB5D67F, 4940142D60DA9543
// program: 4940142D60DA9543, 5D764F9A6220D694, 566076D59903AA2D
// program: 4940142D60DA9543, 5D764F9A6220D694, 34F30E1A3AF1949D
// program: 4940142D60DA9543, 5D764F9A6220D694, 192055C797D85EC4
// program: CA388C44D4F5C19E, AD7922A63ED54CA7, 4BC2BF19C08722EB
// program: CA388C44D4F5C19E, AD7922A63ED54CA7, 894D2A97E107BF7E
// reference: 17F02243D8F04266, 285B3546CEA35D76
// program: 4940142D60DA9543, 5D764F9A6220D694, 25070A41D4D2F8A2
// program: 4940142D60DA9543, 5D764F9A6220D694, 3CD89482FB31182E
// program: 4940142D60DA9543, 5D764F9A6220D694, 566076D59903AA2D
// program: 4940142D60DA9543, 5D764F9A6220D694, 34F30E1A3AF1949D
// program: 4940142D60DA9543, 5D764F9A6220D694, 192055C797D85EC4
// program: CA388C44D4F5C19E, AD7922A63ED54CA7, 4BC2BF19C08722EB
// program: CA388C44D4F5C19E, AD7922A63ED54CA7, 894D2A97E107BF7E
// program: 4940142D60DA9543, 5D764F9A6220D694, 25070A41D4D2F8A2
// program: 4940142D60DA9543, 5D764F9A6220D694, 3CD89482FB31182E
// reference: F2DBBDF09C8B5981, 4940142D60DA9543
// reference: 4EE59A6DB2B33B49, 4940142D60DA9543
// reference: 9115F1D5D383786A, 4940142D60DA9543
// program: 4940142D60DA9543, 5D764F9A6220D694, 566076D59903AA2D
// program: 4940142D60DA9543, 5D764F9A6220D694, 34F30E1A3AF1949D
// program: 4940142D60DA9543, 5D764F9A6220D694, 192055C797D85EC4
// program: CA388C44D4F5C19E, AD7922A63ED54CA7, 4BC2BF19C08722EB
// program: CA388C44D4F5C19E, AD7922A63ED54CA7, 894D2A97E107BF7E
// program: 4940142D60DA9543, 5D764F9A6220D694, 25070A41D4D2F8A2
// program: 4940142D60DA9543, 5D764F9A6220D694, 3CD89482FB31182E
// reference: F2DBBDF09C8B5981, 4940142D60DA9543
// reference: 4EE59A6DB2B33B49, 4940142D60DA9543
// program: 4940142D60DA9543, 5D764F9A6220D694, 566076D59903AA2D
// program: 4940142D60DA9543, 5D764F9A6220D694, 34F30E1A3AF1949D
// program: 4940142D60DA9543, 5D764F9A6220D694, 192055C797D85EC4
// program: CA388C44D4F5C19E, AD7922A63ED54CA7, 4BC2BF19C08722EB
// program: CA388C44D4F5C19E, AD7922A63ED54CA7, 894D2A97E107BF7E
// program: 4940142D60DA9543, 5D764F9A6220D694, 25070A41D4D2F8A2
// program: 4940142D60DA9543, 5D764F9A6220D694, 3CD89482FB31182E
// reference: F2DBBDF09C8B5981, 4940142D60DA9543
// reference: 4EE59A6DB2B33B49, 4940142D60DA9543
// program: 4940142D60DA9543, 5D764F9A6220D694, 566076D59903AA2D
// program: 4940142D60DA9543, 5D764F9A6220D694, 34F30E1A3AF1949D
// program: 4940142D60DA9543, 5D764F9A6220D694, 192055C797D85EC4
// program: CA388C44D4F5C19E, AD7922A63ED54CA7, 4BC2BF19C08722EB
// program: CA388C44D4F5C19E, AD7922A63ED54CA7, 894D2A97E107BF7E
// program: 4940142D60DA9543, 5D764F9A6220D694, 25070A41D4D2F8A2
// program: 4940142D60DA9543, 5D764F9A6220D694, 3CD89482FB31182E
// reference: F2DBBDF09C8B5981, 4940142D60DA9543
// reference: 4EE59A6DB2B33B49, 4940142D60DA9543
// program: 4940142D60DA9543, 5D764F9A6220D694, 566076D59903AA2D
// program: 4940142D60DA9543, 5D764F9A6220D694, 34F30E1A3AF1949D
// program: 4940142D60DA9543, 5D764F9A6220D694, 192055C797D85EC4
// program: CA388C44D4F5C19E, AD7922A63ED54CA7, 4BC2BF19C08722EB
// program: CA388C44D4F5C19E, AD7922A63ED54CA7, 894D2A97E107BF7E
// program: 4940142D60DA9543, 5D764F9A6220D694, 25070A41D4D2F8A2
// program: 4940142D60DA9543, 5D764F9A6220D694, 3CD89482FB31182E
// program: 0000000000000000, 0000000000000000, AB7B4CE05CF997D8
// program: 0000000000000000, 0000000000000000, 21CC92238CF1D017
// program: 0000000000000000, 0000000000000000, 762437C337E868E0
// program: 0000000000000000, 0000000000000000, 8D616F24C0E25220
// program: 0000000000000000, 0000000000000000, 1A58339DCCF6AB5D
// program: 0000000000000000, 0000000000000000, 82B5A33E385041E6
// program: 0000000000000000, 0000000000000000, 9EB7B040607099F1
// program: 0000000000000000, 0000000000000000, 96E36EB6437F55A2
// program: 0000000000000000, 0000000000000000, D8215EB19C38AF97
// program: 0000000000000000, 0000000000000000, 39FDAFE7F803EA7B
// program: 0000000000000000, 0000000000000000, 8A05C0C17BDE80E8
// program: 0000000000000000, 0000000000000000, CF3423106C0B6B02
// program: 0000000000000000, 0000000000000000, 7B757334736D860F
// program: 0000000000000000, 0000000000000000, 790C6C0A707C2BB5
// program: 0000000000000000, 0000000000000000, 88669612487D229F
// program: 0000000000000000, 0000000000000000, E63DE640059C026B
// program: 0000000000000000, 0000000000000000, DEAC746E254AC827
// program: 0000000000000000, 0000000000000000, 0830BCEB478EC9DD
// program: 0000000000000000, 0000000000000000, 2B4ABB8F5912C4B1
// program: 0000000000000000, 0000000000000000, 80840241D3DF1FC3
// program: 0000000000000000, 0000000000000000, C6E80D60AF8C04C5
// program: 0000000000000000, 0000000000000000, 8FB2FAB1A7C86087
// program: 0000000000000000, 0000000000000000, 786D7FBA3381D916
// program: 0000000000000000, 0000000000000000, 5E241297D0595DFC
// program: 0000000000000000, 0000000000000000, 566076D59903AA2D
// program: 0000000000000000, 0000000000000000, 34F30E1A3AF1949D
// program: 0000000000000000, 0000000000000000, 192055C797D85EC4
// program: 0000000000000000, 0000000000000000, 4BC2BF19C08722EB
// program: 0000000000000000, 0000000000000000, 894D2A97E107BF7E
// program: 0000000000000000, 0000000000000000, 25070A41D4D2F8A2
// program: 0000000000000000, 0000000000000000, 3CD89482FB31182E