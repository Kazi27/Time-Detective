// Made with Amplify Shader Editor
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "Danilec/MapRollDoubleSidedOneDirection"
{
	Properties
	{
		_Cutoff( "Mask Clip Value", Float ) = 0.5
		_OpacityMask("OpacityMask", 2D) = "white" {}
		_MainTex("MainTex", 2D) = "white" {}
		_FrontNormalMap("FrontNormalMap", 2D) = "bump" {}
		_Color("Color", Color) = (1,0.9333333,0.8078431,0)
		_BackAlbedo("BackAlbedo", 2D) = "white" {}
		_BackNormalMap("BackNormalMap", 2D) = "bump" {}
		_MapLength("MapLength", Float) = 1.5
		_RollValue("RollValue", Range( 0 , 1)) = 0
		_Amplitude("Amplitude", Range( 0 , 20)) = 6.649974
		_SpiralCoefficient("SpiralCoefficient", Range( 0.1 , 1)) = 0.39
		_RollDirection("RollDirection", Range( -1 , 1)) = -1
		_NoiseTexture1("NoiseTexture", 2D) = "bump" {}
		_NoiseStrength1("NoiseStrength", Float) = 0
		_NoiseVerticalOffset1("NoiseVerticalOffset", Float) = 0
		[HideInInspector] _texcoord( "", 2D ) = "white" {}
		[HideInInspector] __dirty( "", Int ) = 1
	}

	SubShader
	{
		Tags{ "RenderType" = "TransparentCutout"  "Queue" = "AlphaTest+0" }
		Cull Off
		CGPROGRAM
		#pragma target 3.0
		#pragma surface surf Standard keepalpha addshadow fullforwardshadows vertex:vertexDataFunc 
		struct Input
		{
			float2 uv_texcoord;
			half ASEVFace : VFACE;
		};

		uniform float _RollDirection;
		uniform float _RollValue;
		uniform float _MapLength;
		uniform float _Amplitude;
		uniform float _SpiralCoefficient;
		uniform sampler2D _NoiseTexture1;
		uniform float4 _NoiseTexture1_ST;
		uniform float _NoiseStrength1;
		uniform float _NoiseVerticalOffset1;
		uniform sampler2D _FrontNormalMap;
		uniform float4 _FrontNormalMap_ST;
		uniform sampler2D _BackNormalMap;
		uniform float4 _BackNormalMap_ST;
		uniform sampler2D _MainTex;
		uniform float4 _MainTex_ST;
		uniform float4 _Color;
		uniform sampler2D _BackAlbedo;
		uniform float4 _BackAlbedo_ST;
		uniform sampler2D _OpacityMask;
		uniform float4 _OpacityMask_ST;
		uniform float _Cutoff = 0.5;

		void vertexDataFunc( inout appdata_full v, out Input o )
		{
			UNITY_INITIALIZE_OUTPUT( Input, o );
			float normalizeResult222 = normalize( _RollDirection );
			float RollDirection212 = normalizeResult222;
			float3 ase_vertex3Pos = v.vertex.xyz;
			float P109 = ( ( ( _RollValue * 2.0 * _MapLength ) + ( _MapLength * -1.0 ) ) * RollDirection212 );
			float temp_output_85_0 = ( ase_vertex3Pos.x - P109 );
			float A112 = _Amplitude;
			float Coeff186 = ( A112 / 1.3 );
			float vertexPosX156 = ( ( ase_vertex3Pos.x - P109 ) * Coeff186 );
			float B116 = ( RollDirection212 * _SpiralCoefficient );
			float R114 = 1.0;
			float M118 = ( 1.3 / A112 );
			float xOffset280 = ( ( ( ( ( 1.0 - ( ( vertexPosX156 * B116 ) / A112 ) ) * sin( ( R114 * vertexPosX156 ) ) ) + ( Coeff186 * P109 ) ) * M118 ) - ase_vertex3Pos.x );
			float yOffset281 = ( M118 * ( 1.0 - ( ( 1.0 - ( ( vertexPosX156 * B116 ) / A112 ) ) * cos( ( R114 * vertexPosX156 ) ) ) ) );
			float3 appendResult136 = (float3(xOffset280 , yOffset281 , 0.0));
			float3 myVertexOffset119 = appendResult136;
			float2 uv_NoiseTexture1 = v.texcoord * _NoiseTexture1_ST.xy + _NoiseTexture1_ST.zw;
			float3 tex2DNode225 = UnpackNormal( tex2Dlod( _NoiseTexture1, float4( uv_NoiseTexture1, 0, 0.0) ) );
			float noise229 = ( ( tex2DNode225.r * tex2DNode225.g * tex2DNode225.b * _NoiseStrength1 ) + _NoiseVerticalOffset1 );
			float3 appendResult232 = (float3(0.0 , noise229 , 0.0));
			v.vertex.xyz += ( ( RollDirection212 > 0.0 ? ( temp_output_85_0 >= 0.0 ? myVertexOffset119 : float3( 0,0,0 ) ) : ( temp_output_85_0 >= 0.0 ? float3( 0,0,0 ) : myVertexOffset119 ) ) + appendResult232 );
			v.vertex.w = 1;
		}

		void surf( Input i , inout SurfaceOutputStandard o )
		{
			float2 uv_FrontNormalMap = i.uv_texcoord * _FrontNormalMap_ST.xy + _FrontNormalMap_ST.zw;
			float2 uv_BackNormalMap = i.uv_texcoord * _BackNormalMap_ST.xy + _BackNormalMap_ST.zw;
			float3 switchResult3 = (((i.ASEVFace>0)?(UnpackNormal( tex2D( _FrontNormalMap, uv_FrontNormalMap ) )):(UnpackNormal( tex2D( _BackNormalMap, uv_BackNormalMap ) ))));
			o.Normal = switchResult3;
			float2 uv_MainTex = i.uv_texcoord * _MainTex_ST.xy + _MainTex_ST.zw;
			float2 uv_BackAlbedo = i.uv_texcoord * _BackAlbedo_ST.xy + _BackAlbedo_ST.zw;
			float4 switchResult2 = (((i.ASEVFace>0)?(( tex2D( _MainTex, uv_MainTex ) * _Color )):(( _Color * tex2D( _BackAlbedo, uv_BackAlbedo ) ))));
			o.Albedo = switchResult2.rgb;
			o.Alpha = 1;
			float2 uv_OpacityMask = i.uv_texcoord * _OpacityMask_ST.xy + _OpacityMask_ST.zw;
			clip( tex2D( _OpacityMask, uv_OpacityMask ).a - _Cutoff );
		}

		ENDCG
	}
	Fallback "Diffuse"
	CustomEditor "ASEMaterialInspector"
}
/*ASEBEGIN
Version=18900
1536;72;1536;739;4285.992;1213.406;5.063684;True;True
Node;AmplifyShaderEditor.CommentaryNode;182;-1776.776,949.4631;Inherit;False;1487.945;1464.166;;37;194;196;118;181;180;114;156;113;116;217;163;178;115;187;186;195;179;185;109;184;223;112;212;220;222;219;221;111;209;218;110;224;225;226;227;228;229;Variables;1,1,1,1;0;0
Node;AmplifyShaderEditor.RangedFloatNode;110;-1745.508,988.9503;Float;False;Property;_RollValue;RollValue;8;0;Create;True;0;0;0;False;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;218;-1746.237,1062.665;Inherit;False;Property;_MapLength;MapLength;7;0;Create;True;0;0;0;False;0;False;1.5;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;209;-1752.703,1226.678;Float;False;Property;_RollDirection;RollDirection;11;0;Create;True;0;0;0;False;0;False;-1;-1;-1;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;111;-1098.508,1071.951;Float;False;Property;_Amplitude;Amplitude;9;0;Create;True;0;0;0;False;0;False;6.649974;14;0;20;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;221;-1466.237,995.6647;Inherit;False;3;3;0;FLOAT;0;False;1;FLOAT;2;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;219;-1534.237,1102.665;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;-1;False;1;FLOAT;0
Node;AmplifyShaderEditor.NormalizeNode;222;-1472.385,1229.953;Inherit;False;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;112;-794.5066,1071.951;Float;False;A;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;212;-1315.029,1226.674;Float;False;RollDirection;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;220;-1321.237,994.6647;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;223;-1138.385,984.9526;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;184;-1105.399,1499.2;Inherit;False;112;A;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;109;-794.5066,991.9503;Float;False;P;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleDivideOpNode;185;-924.5096,1502.248;Inherit;False;2;0;FLOAT;1.3;False;1;FLOAT;1.3;False;1;FLOAT;0
Node;AmplifyShaderEditor.PosVertexDataNode;195;-1176.776,1624.657;Inherit;False;0;0;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RegisterLocalVarNode;186;-794.5096,1498.248;Float;False;Coeff;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;179;-1157.135,1976.239;Inherit;False;109;P;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;178;-924.0673,1872.752;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;115;-1385.508,1302.951;Float;False;Property;_SpiralCoefficient;SpiralCoefficient;10;0;Create;True;0;0;0;False;0;False;0.39;0.4;0.1;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;187;-914.6351,1986.667;Inherit;False;186;Coeff;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;217;-947.2366,1262.665;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;163;-750.8505,1878.305;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;156;-599.8702,1975.63;Float;False;vertexPosX;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;116;-794.5066,1279.951;Float;False;B;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;113;-1098.508,1183.951;Float;False;Constant;_r;r;11;0;Create;True;0;0;0;False;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;247;-123.5783,1990.449;Inherit;False;1937.506;525.7327;;20;283;282;280;278;277;276;274;272;269;266;265;264;263;261;260;259;258;257;250;249;X equation;0.9974964,1,0.740566,1;0;0
Node;AmplifyShaderEditor.GetLocalVarNode;259;-72.82931,2044.22;Inherit;False;156;vertexPosX;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;282;-67.82928,2126.22;Inherit;False;116;B;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;248;-131.3533,2625.469;Inherit;False;1573.194;528.4072;;15;281;279;275;273;271;270;268;267;262;256;255;254;253;252;251;Y equation;0.9974964,1,0.740566,1;0;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;114;-794.5066,1183.951;Float;False;R;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;258;129.2324,2433.044;Inherit;False;156;vertexPosX;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;260;136.2324,2351.044;Inherit;False;114;R;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;261;165.6817,2098.687;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;283;135.1706,2223.221;Inherit;False;112;A;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;252;-43.27642,2764.943;Inherit;False;116;B;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;251;-56.33931,2689.334;Inherit;False;156;vertexPosX;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;253;134.7237,2866.943;Inherit;False;112;A;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;180;-1103.396,1388.903;Inherit;False;112;A;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;255;154.3238,3056.544;Inherit;False;156;vertexPosX;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;264;394.4366,2407.584;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleDivideOpNode;263;351.6815,2151.687;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;262;166.7237,2744.943;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;254;141.2608,2975.935;Inherit;False;114;R;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;249;857.9,2338.47;Inherit;False;109;P;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleDivideOpNode;268;356.7235,2797.943;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;267;380.3235,2979.544;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SinOpNode;266;561.1658,2320.76;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;265;519.0438,2129.606;Inherit;False;2;0;FLOAT;1;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;257;863.2398,2256.48;Inherit;False;186;Coeff;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleDivideOpNode;181;-922.5066,1391.951;Inherit;False;2;0;FLOAT;1.3;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;118;-794.5066,1375.951;Float;False;M;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CosOpNode;271;537.3239,2969.544;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;269;1066.759,2268.427;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;272;685.9999,2128.568;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;270;544.7238,2774.943;Inherit;False;2;0;FLOAT;1;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;250;1266.097,2278.367;Inherit;False;118;M;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;274;1249.098,2136.965;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;273;677.324,2875.544;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;277;1416.798,2136.067;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.PosVertexDataNode;276;1432.976,2336.229;Inherit;False;0;0;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;256;854.139,2704.629;Inherit;False;118;M;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;275;845.3238,2840.544;Inherit;False;2;0;FLOAT;1;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;279;1025.136,2807.629;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;278;1564.976,2197.229;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;280;1615.935,2082.601;Float;False;xOffset;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;183;-125.083,1583.386;Inherit;False;692.0487;242.165;;4;119;136;139;137;Final displacement;0.9974964,1,0.740566,1;0;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;281;1196.933,2806.969;Float;False;yOffset;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;137;-84.9929,1638.416;Inherit;False;280;xOffset;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;139;-83.71897,1725.768;Inherit;False;281;yOffset;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;224;-1302.542,2325.535;Float;False;Property;_NoiseStrength1;NoiseStrength;13;0;Create;True;0;0;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;225;-1421.292,2135.382;Inherit;True;Property;_NoiseTexture1;NoiseTexture;12;0;Create;True;0;0;0;False;0;False;-1;1a1e99c7f4bb0a4479e4e5c835fd6c98;1a1e99c7f4bb0a4479e4e5c835fd6c98;True;0;True;bump;Auto;True;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;226;-1028.466,2163.745;Inherit;False;4;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;227;-1070.884,2323.391;Inherit;False;Property;_NoiseVerticalOffset1;NoiseVerticalOffset;14;0;Create;True;0;0;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.DynamicAppendNode;136;191.3271,1650.904;Inherit;False;FLOAT3;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;119;353.4991,1645.683;Float;False;myVertexOffset;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;86;-136.0972,1021.046;Inherit;False;109;P;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.PosVertexDataNode;82;-149.4607,873.2814;Inherit;False;0;0;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleAddOpNode;228;-839.8838,2192.391;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;12;-1275.848,-587.2426;Inherit;False;1252.009;1229.961;;10;4;5;8;10;11;6;9;3;1;2;Two sided shader using Switch by Face;1,1,1,1;0;0
Node;AmplifyShaderEditor.GetLocalVarNode;77;-166.1616,1133.987;Inherit;False;119;myVertexOffset;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;85;82.68723,953.5906;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;229;-676.5105,2162.728;Float;False;noise;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;8;-872.7573,-79.2426;Inherit;True;Property;_BackAlbedo;BackAlbedo;5;0;Create;True;0;0;0;False;0;False;-1;73c22871f2ee2f349a9483fde4089d5d;73c22871f2ee2f349a9483fde4089d5d;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;1;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;231;282.0078,1295.17;Inherit;False;229;noise;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;215;273.9484,887.6921;Inherit;False;212;RollDirection;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;4;-869.7573,-445.2426;Inherit;True;Property;_MainTex;MainTex;2;0;Create;True;0;0;0;False;0;False;-1;73c22871f2ee2f349a9483fde4089d5d;43af129951d750c479e9bc8c68324872;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;1;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.Compare;216;278.631,1138.085;Inherit;False;3;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.Compare;81;279.0334,976.797;Inherit;False;3;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ColorNode;5;-868.6855,-251.243;Float;False;Property;_Color;Color;4;0;Create;True;0;0;0;False;0;False;1,0.9333333,0.8078431,0;1,1,1,1;False;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;6;-522.7582,-237.1423;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SamplerNode;10;-829.7573,214.7574;Inherit;True;Property;_FrontNormalMap;FrontNormalMap;3;0;Create;True;0;0;0;False;0;False;-1;1a1e99c7f4bb0a4479e4e5c835fd6c98;1aebbb812b32bde4b8eb211cdcaa87d6;True;0;True;bump;Auto;True;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;1;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;9;-527.8581,-101.1427;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.Compare;214;513.9484,1024.692;Inherit;False;2;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.DynamicAppendNode;232;519.2939,1190.642;Inherit;False;FLOAT3;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SamplerNode;11;-813.7573,412.7573;Inherit;True;Property;_BackNormalMap;BackNormalMap;6;0;Create;True;0;0;0;False;0;False;-1;1a1e99c7f4bb0a4479e4e5c835fd6c98;0bebe40e9ebbecc48b8e9cfea982da7e;True;0;True;bump;Auto;True;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;1;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleAddOpNode;230;675.3219,1172.875;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;196;-736.7755,1624.657;Float;False;direction;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SwitchByFaceNode;3;-373.7574,212.7574;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SwitchByFaceNode;2;-261.7574,-171.2426;Inherit;False;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.Compare;194;-909.7755,1624.657;Inherit;False;2;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;3;FLOAT;-1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;1;-357.7574,340.7573;Inherit;True;Property;_OpacityMask;OpacityMask;1;0;Create;True;0;0;0;False;0;False;-1;73c22871f2ee2f349a9483fde4089d5d;43af129951d750c479e9bc8c68324872;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;1;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.StandardSurfaceOutputNode;0;814.1843,803.7697;Float;False;True;-1;2;ASEMaterialInspector;0;0;Standard;Danilec/MapRollDoubleSidedOneDirection;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;Off;0;False;-1;0;False;-1;False;0;False;-1;0;False;-1;False;0;Masked;0.5;True;True;0;False;TransparentCutout;;AlphaTest;All;14;all;True;True;True;True;0;False;-1;False;0;False;-1;255;False;-1;255;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;False;0;4;10;25;False;0.5;True;0;0;False;-1;0;False;-1;0;0;False;-1;0;False;-1;1;False;-1;1;False;-1;0;False;0;0,0,0,0;VertexOffset;True;False;Cylindrical;False;Relative;0;;0;-1;-1;-1;0;False;0;0;False;-1;-1;0;False;-1;0;0;0;False;0.1;False;-1;0;False;-1;False;16;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT;0;False;4;FLOAT;0;False;5;FLOAT;0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT;0;False;9;FLOAT;0;False;10;FLOAT;0;False;13;FLOAT3;0,0,0;False;11;FLOAT3;0,0,0;False;12;FLOAT3;0,0,0;False;14;FLOAT4;0,0,0,0;False;15;FLOAT3;0,0,0;False;0
WireConnection;221;0;110;0
WireConnection;221;2;218;0
WireConnection;219;0;218;0
WireConnection;222;0;209;0
WireConnection;112;0;111;0
WireConnection;212;0;222;0
WireConnection;220;0;221;0
WireConnection;220;1;219;0
WireConnection;223;0;220;0
WireConnection;223;1;212;0
WireConnection;109;0;223;0
WireConnection;185;0;184;0
WireConnection;186;0;185;0
WireConnection;178;0;195;1
WireConnection;178;1;179;0
WireConnection;217;0;212;0
WireConnection;217;1;115;0
WireConnection;163;0;178;0
WireConnection;163;1;187;0
WireConnection;156;0;163;0
WireConnection;116;0;217;0
WireConnection;114;0;113;0
WireConnection;261;0;259;0
WireConnection;261;1;282;0
WireConnection;264;0;260;0
WireConnection;264;1;258;0
WireConnection;263;0;261;0
WireConnection;263;1;283;0
WireConnection;262;0;251;0
WireConnection;262;1;252;0
WireConnection;268;0;262;0
WireConnection;268;1;253;0
WireConnection;267;0;254;0
WireConnection;267;1;255;0
WireConnection;266;0;264;0
WireConnection;265;1;263;0
WireConnection;181;1;180;0
WireConnection;118;0;181;0
WireConnection;271;0;267;0
WireConnection;269;0;257;0
WireConnection;269;1;249;0
WireConnection;272;0;265;0
WireConnection;272;1;266;0
WireConnection;270;1;268;0
WireConnection;274;0;272;0
WireConnection;274;1;269;0
WireConnection;273;0;270;0
WireConnection;273;1;271;0
WireConnection;277;0;274;0
WireConnection;277;1;250;0
WireConnection;275;1;273;0
WireConnection;279;0;256;0
WireConnection;279;1;275;0
WireConnection;278;0;277;0
WireConnection;278;1;276;1
WireConnection;280;0;278;0
WireConnection;281;0;279;0
WireConnection;226;0;225;1
WireConnection;226;1;225;2
WireConnection;226;2;225;3
WireConnection;226;3;224;0
WireConnection;136;0;137;0
WireConnection;136;1;139;0
WireConnection;119;0;136;0
WireConnection;228;0;226;0
WireConnection;228;1;227;0
WireConnection;85;0;82;1
WireConnection;85;1;86;0
WireConnection;229;0;228;0
WireConnection;216;0;85;0
WireConnection;216;3;77;0
WireConnection;81;0;85;0
WireConnection;81;2;77;0
WireConnection;6;0;4;0
WireConnection;6;1;5;0
WireConnection;9;0;5;0
WireConnection;9;1;8;0
WireConnection;214;0;215;0
WireConnection;214;2;81;0
WireConnection;214;3;216;0
WireConnection;232;1;231;0
WireConnection;230;0;214;0
WireConnection;230;1;232;0
WireConnection;196;0;194;0
WireConnection;3;0;10;0
WireConnection;3;1;11;0
WireConnection;2;0;6;0
WireConnection;2;1;9;0
WireConnection;194;0;195;1
WireConnection;0;0;2;0
WireConnection;0;1;3;0
WireConnection;0;10;1;4
WireConnection;0;11;230;0
ASEEND*/
//CHKSM=AF521E2E4F8F928275208DD1ED4DEE52974CA153