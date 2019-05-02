// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

Shader "Custom/Scroll2LayersAditive-addtiveBlend" {

	Properties{
		_MainTex("Base layer (RGB)", 2D) = "white" {}       //前层图
		_DetailTex("2nd layer (RGB)", 2D) = "white" {}      //后层图
		_ScrollX("Base layer Scroll speed X", Float) = 1.0  // 前层图X方向的速度
		_ScrollY("Base layer Scroll speed Y", Float) = 0.0  // 前层图Y方向的速度
		_Scroll2X("2nd layer Scroll speed X", Float) = 1.0  // 后层图X方向的速度
		_Scroll2Y("2nd layer Scroll speed Y", Float) = 0.0  // 后层图Y方向的速度
		_AMultiplier("Layer Multiplier", Float) = 0.5
		_TintColor("Tint color",Color) = (1,1,1,1)
	}

		SubShader{
			Tags {"Queue" = "Transparent" "RenderType" = "Transparent" }

			Blend One One
			ZWrite Off
			Lighting Off Fog { Mode Off }

			LOD 100


			CGINCLUDE
			#pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
			#include "UnityCG.cginc"
			sampler2D _MainTex;
			sampler2D _DetailTex;

			float4 _MainTex_ST;
			float4 _DetailTex_ST;

			float _ScrollX;
			float _ScrollY;
			float _Scroll2X;
			float _Scroll2Y;
			float _AMultiplier;
			float4 _TintColor;

			struct v2f {
				float4 pos : SV_POSITION;
				float2 uv : TEXCOORD0;
				float2 uv2 : TEXCOORD1;
				fixed4 color : TEXCOORD2;
			};


			v2f vert(appdata_full v)
			{
				v2f o;
				o.pos = UnityObjectToClipPos(v.vertex);
				o.uv = TRANSFORM_TEX(v.texcoord.xy,_MainTex) + frac(float2(_ScrollX, _ScrollY) * _Time);  //frac    返回输入值的小数部分。
				o.uv2 = TRANSFORM_TEX(v.texcoord.xy,_DetailTex) + frac(float2(_Scroll2X, _Scroll2Y) * _Time);
				o.color = v.color * _TintColor * _TintColor.a;
				o.color.xyz *= _AMultiplier;

				return o;
			}
			ENDCG


			Pass {
				CGPROGRAM
				#pragma vertex vert
				#pragma fragment frag
				#pragma fragmentoption ARB_precision_hint_fastest		
				fixed4 frag(v2f i) : COLOR
				{
					fixed4 o;
					fixed4 tex = tex2D(_MainTex, i.uv);
					fixed4 tex2 = tex2D(_DetailTex, i.uv2);

					o = (tex + tex2) * i.color;

					return o;
				}
				ENDCG
			}
		}
}