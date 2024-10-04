shader_type canvas_item;

uniform sampler2D video_texture;

void fragment() {
    vec2 uv = UV;
    vec4 color = texture(video_texture, uv);
    COLOR = color;
}