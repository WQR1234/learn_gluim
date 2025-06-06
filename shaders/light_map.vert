#version 330 core

in vec3 position;
in vec3 normal;
in vec2 tex_coords;

out vec3 FragPos;  
out vec3 Normal;
out vec2 TexCoords;

uniform mat4 model;
uniform mat4 view;
uniform mat4 projection;

void main() {
    gl_Position = projection * view * model * vec4(position, 1.0);
    FragPos = vec3(model * vec4(position, 1.0));
    Normal = mat3(transpose(inverse(model))) * normal;

    TexCoords = tex_coords;
}