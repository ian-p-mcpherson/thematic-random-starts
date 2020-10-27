#version 110
#define PIXEL_ART_FILTER

uniform vec4 robe_color;
uniform vec4 belt_color;
uniform vec4 hand_color;

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
	robe_color = vec4(1.0,1.0,1.0,1.0);
	belt_color = vec4(1.0,1.0,1.0,1.0);
	hand_color = vec4(1.0,1.0,1.0,1.0);

	vec2 uv = pixel_art_filter_uv( gl_TexCoord[0].xy, tex_size );
	
	vec4 color = texture2D( tex, uv );

	vec4 new_color = color;
	if (color.r > 0.57) {
	  if (color.r < 0.62) {
	    if (color.g > 0.40) {
	      if (color.g < 0.46) {
	        if (color.b > 0.58) {
                  if (color.b < 0.62) {
			new_color.rgb = robe_color.rgb;
			new_color.a = color.a * robe_color.a;
	          }
	        }
	      }
	    }
	  }
	}
	if (color.r > 0.47) {
	  if (color.r < 0.51) {
	    if (color.g > 0.30) {
	      if (color.g < 0.35) {
	        if (color.b > 0.44) {
                  if (color.b < 0.49) {
			new_color.rgb = robe_color.rgb * 0.8;
			new_color.a = color.a * robe_color.a;
	          }
	        }
	      }
	    }
	  }
	}
	if (color.r > 0.32) {
	  if (color.r < 0.36) {
	    if (color.g > 0.24) {
	      if (color.g < 0.28) {
	        if (color.b > 0.30) {
                  if (color.b < 0.34) {
			new_color.rgb = robe_color.rgb * 0.6;
			new_color.a = color.a * robe_color.a;
	          }
	        }
	      }
	    }
	  }
	}
	// BELT
	if (color.r > 0.81) {
	  if (color.r < 0.82) {
	    if (color.g > 0.6) {
	      if (color.g < 0.61) {
	        if (color.b > 0.23) {
                  if (color.b < 0.24) {
			new_color.rgb = belt_color.rgb * 0.6;
			new_color.a = color.a * belt_color.a;
	          }
	        }
	      }
	    }
	  }
	}
	// HAND
	if (color.r > 0.92) {
	  if (color.r < 0.93) {
	    if (color.g > 0.87) {
	      if (color.g < 0.88) {
	        if (color.b > 0.6) {
                  if (color.b < 0.61) {
			new_color.rgb = hand_color.rgb * 0.8;
			new_color.a = color.a * hand_color.a;
	          }
	        }
	      }
	    }
	  }
	}
	// HAND DARK
	if (color.r > 0.85) {
	  if (color.r < 0.86) {
	    if (color.g > 0.75) {
	      if (color.g < 0.76) {
	        if (color.b > 0.4) {
                  if (color.b < 0.41) {
			new_color.rgb = hand_color.rgb * 0.8;
			new_color.a = color.a * hand_color.a;
	          }
	        }
	      }
	    }
	  }
	}
	color = new_color;

	gl_FragColor = color * gl_Color;

}
