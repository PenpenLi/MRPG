﻿Shader "Custom/hitshader" {
	Properties {
		_Color ("Color", Color) = (1,1,1,1)
	}
	SubShader {
		Tags { "RenderType"="Opaque" }
		LOD 200
		
		CGPROGRAM
		// Physically based Standard lighting model, and enable shadows on all light types
		#pragma surface surf Standard fullforwardshadows

		// Use shader model 3.0 target, to get nicer looking lighting
		#pragma target 3.0
 
		struct Input {
			float4 color;
		};
 
		fixed4 _Color;

		void surf (Input IN, inout SurfaceOutputStandard o) {
			o.Emission = _Color.rgb;
		}
		ENDCG
	}
	FallBack "Diffuse"
}