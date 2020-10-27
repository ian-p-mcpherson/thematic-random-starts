#version 110
#define PIXEL_ART_FILTER

uniform vec4 robe_hood;
uniform vec4 robe_light;
uniform vec4 robe_med;
uniform vec4 robe_dark;
uniform vec4 robe_belt;
uniform vec4 robe_glove;

uniform sampler2D tex;
uniform vec2 tex_size;


#ifdef PIXEL_ART_FILTER
	// generates a pixel art friendly texture coordinate ala https://csantosbh.wordpress.com/2014/01/25/manual-texture-filtering-for-pixelated-games-in-webgl/
	// NOTE: texture filtering mode must be set to bilinear for this trick to work
	vec2 pixel_art_filter_uv( vec2 uv, vec2 tex_size_pixels )
	{
		const vec2 alpha = vec2(0.08); // 'alpha' affects the size of the smoothly filtered border between virtual (art) pixels.

		uv *= tex_size_pixels;
		{
		  	vec2 x = fract(uv);
		  	x = clamp(0.5 / alpha * x, 0.0, 0.5) + clamp(0.5 / alpha * (x - 1.0) + 0.5, 0.0, 0.5);
			uv = floor(uv) + x;
		}
		uv /= tex_size_pixels;

		return uv;
	}
#else
	vec2 pixel_art_filter_uv( vec2 uv, vec2 tex_size_pixels )
	{
		return uv;
	}
#endif


void main()
{
	vec4 palatte_robe_hood = vec4(0.153,0.129,0.145,1.0);
	vec4 palatte_robe_light = vec4(0.522,0.522,0.522,1.0);
	vec4 palatte_robe_med = vec4(0.412,0.412,0.412,1.0);
	vec4 palatte_robe_dark = vec4(0.306,0.306,0.306,1.0);
	vec4 palatte_robe_belt = vec4(0.820,0.608,0.239,1.0);
	vec4 palatte_robe_glove = vec4(0.859,0.753,0.404,1.0);

	vec2 uv = pixel_art_filter_uv( gl_TexCoord[0].xy, tex_size );
	vec4 color = texture2D( tex, uv );

	vec4 new_color = color;
	if(color.r > palatte_robe_hood.r - 0.05) {
		if(color.r < palatte_robe_hood.r + 0.05) {
			new_color.rgb = robe_hood.rgb;
		}
	}
	if(color.r > palatte_robe_light.r - 0.05) {
		if(color.r < palatte_robe_light.r + 0.05) {
			new_color.rgb = robe_light.rgb;
		}
	}
	if(color.r == palatte_robe_med.r) {
		new_color.rgb = robe_med.rgb;
	}
	if(color.r == palatte_robe_dark.r) {
		new_color.rgb = robe_dark.rgb;
	}
	if(color.r == palatte_robe_belt.r) {
		new_color.rgb = robe_belt.rgb;
	}
	if(color.r == palatte_robe_glove.r) {
		new_color.rgb = robe_glove.rgb;
	}
	//color = new_color;

	gl_FragColor = color * gl_Color;
}
