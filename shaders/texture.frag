#version 150

// in vec3 v_color;
in vec2 v_tex_coords;
out vec4 color;

uniform sampler2D tex;

void main() {
    color = texture(tex, v_tex_coords);
    // color = vec4(0.0, 1.0, 1.0, 1.0);
}