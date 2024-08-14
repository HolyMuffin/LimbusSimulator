//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	
	float R = gl_FragColor.r;
	float G = gl_FragColor.g;
	float B = gl_FragColor.b;
	float AVG = (R + G + B) / 3.0;
	
	float grey_factor = 6.5;
	R = (AVG * (grey_factor - 1.0) + R) / grey_factor;
	
	grey_factor = 7.0;
	G = (AVG * (grey_factor - 1.0) + G) / grey_factor;
	
	grey_factor = 9.0;
	B = (AVG * (grey_factor - 1.0) + B) / grey_factor;
	
	
	R *= 1.03;
	G *= 0.89;
	B *= 0.73;
	
	gl_FragColor.rgb = vec3(R, G, B);
}
