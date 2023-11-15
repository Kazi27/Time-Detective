// Made with Amplify Shader Editor
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "Danilec/MapRollDoubleSided"
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
		_RollValue("RollValue", Range( 0 , 1)) = 1
		_Amplitude("Amplitude", Range( 1 , 20)) = 11.08
		_SpiralCoefficient("SpiralCoefficient", Range( 0.1 , 1)) = 0.39
		_NoiseTexture("NoiseTexture", 2D) = "bump" {}
		_NoiseStrength("NoiseStrength", Float) = 0
		_NoiseVerticalOffset("NoiseVerticalOffset", Float) = 0
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

		uniform float _MapLength;
		uniform float _RollValue;
		uniform float _Amplitude;
		uniform float _SpiralCoefficient;
		uniform sampler2D _NoiseTexture;
		uniform float4 _NoiseTexture_ST;
		uniform float _NoiseStrength;
		uniform float _NoiseVerticalOffset;
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
			float3 ase_vertex3Pos = v.vertex.xyz;
			float P109 = ( _MapLength * _RollValue );
			float A112 = _Amplitude;
			float Coeff186 = ( A112 / 1.3 );
			float vertexPosX156 = ( ( abs( ase_vertex3Pos.x ) - P109 ) * Coeff186 );
			float B116 = _SpiralCoefficient;
			float direction196 = ( ase_vertex3Pos.x > 0.0 ? 1.0 : -1.0 );
			float M118 = ( 1.3 / A112 );
			float xOffset127 = ( ( ( ( ( 1.0 - ( ( vertexPosX156 * B116 ) / A112 ) ) * sin( ( vertexPosX156 * direction196 ) ) ) + ( Coeff186 * P109 * direction196 ) ) * M118 ) - ase_vertex3Pos.x );
			float yOffset138 = ( M118 * ( 1.0 - ( ( 1.0 - ( ( vertexPosX156 * B116 ) / A112 ) ) * cos( vertexPosX156 ) ) ) );
			float3 appendResult136 = (float3(xOffset127 , yOffset138 , 0.0));
			float3 myVertexOffset119 = appendResult136;
			float2 uv_NoiseTexture = v.texcoord * _NoiseTexture_ST.xy + _NoiseTexture_ST.zw;
			float3 tex2DNode259 = UnpackNormal( tex2Dlod( _NoiseTexture, float4( uv_NoiseTexture, 0, 0.0) ) );
			float noise236 = ( ( tex2DNode259.r * tex2DNode259.g * tex2DNode259.b * _NoiseStrength ) + _NoiseVerticalOffset );
			float3 appendResult245 = (float3(0.0 , noise236 , 0.0));
			v.vertex.xyz += ( ( ( abs( ase_vertex3Pos.x ) - P109 ) > 0.0 ? myVertexOffset119 : float3( 0,0,0 ) ) + appendResult245 );
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
1536;72;1536;739;3341.092;951.6722;3.073544;True;True
Node;AmplifyShaderEditor.CommentaryNode;182;-1646.424,949.4631;Inherit;False;1376.035;1483.803;;30;261;260;236;246;259;241;118;181;180;196;194;116;156;115;195;163;178;187;179;186;228;219;109;185;184;110;112;111;263;264;Variables;1,1,1,1;0;0
Node;AmplifyShaderEditor.RangedFloatNode;111;-1098.508,1071.951;Float;False;Property;_Amplitude;Amplitude;9;0;Create;True;0;0;0;False;0;False;11.08;11.02;1;20;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;263;-1594.326,994.562;Inherit;False;Property;_MapLength;MapLength;7;0;Create;True;0;0;0;False;0;False;1.5;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;110;-1595.508,1072.95;Float;False;Property;_RollValue;RollValue;8;0;Create;True;0;0;0;False;0;False;1;0.953;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;112;-794.5066,1071.951;Float;False;A;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;264;-1274.326,990.562;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;184;-1105.399,1499.2;Inherit;False;112;A;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleDivideOpNode;185;-924.5096,1502.248;Inherit;False;2;0;FLOAT;1.3;False;1;FLOAT;1.3;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;109;-794.5066,987.3135;Float;False;P;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.PosVertexDataNode;219;-1541.645,1818.718;Inherit;False;0;0;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.AbsOpNode;228;-1329.596,1857.704;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;186;-794.5096,1496.142;Float;False;Coeff;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;179;-1416.836,1970.439;Inherit;False;109;P;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;178;-1177.768,1876.952;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;187;-1168.336,1990.867;Inherit;False;186;Coeff;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.PosVertexDataNode;195;-1176.776,1624.657;Inherit;False;0;0;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;115;-1097.508,1156.951;Float;False;Property;_SpiralCoefficient;SpiralCoefficient;10;0;Create;True;0;0;0;False;0;False;0.39;0.54;0.1;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;163;-938.5503,1881.505;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;156;-640.5699,1874.83;Float;False;vertexPosX;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;207;966.7244,1511.886;Inherit;False;1933.606;615.4329;;21;229;127;125;123;126;177;122;120;230;124;188;121;131;129;160;132;134;159;133;266;267;X equation;0.9974964,1,0.740566,1;0;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;116;-793.5066,1156.951;Float;False;B;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.Compare;194;-909.7755,1624.657;Inherit;False;2;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;3;FLOAT;-1;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;208;981.9935,2271.222;Inherit;False;1573.194;528.4072;;13;138;140;141;144;143;146;145;147;162;149;148;161;150;Y equation;0.9974964,1,0.740566,1;0;0
Node;AmplifyShaderEditor.GetLocalVarNode;133;987.0842,1641.124;Inherit;False;116;B;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;159;978.7281,1559.416;Inherit;False;156;vertexPosX;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;196;-735.7755,1623.657;Float;False;direction;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;229;1253.694,2052.729;Inherit;False;196;direction;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;161;1057.007,2335.087;Inherit;False;156;vertexPosX;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;132;1209.082,1751.124;Inherit;False;112;A;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;134;1252.082,1620.124;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;160;1249.795,1965.502;Inherit;False;156;vertexPosX;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;150;1045.07,2414.696;Inherit;False;116;B;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;180;-1103.396,1388.903;Inherit;False;112;A;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;149;1280.07,2390.696;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;129;1480.837,1929.019;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;148;1248.07,2512.696;Inherit;False;112;A;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleDivideOpNode;131;1398.082,1673.124;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;120;1590.444,1651.043;Inherit;False;2;0;FLOAT;1;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;188;1949.64,1777.917;Inherit;False;186;Coeff;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleDivideOpNode;181;-922.5066,1391.951;Inherit;False;2;0;FLOAT;1.3;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SinOpNode;121;1647.566,1842.197;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;230;1949.394,1954.846;Inherit;False;196;direction;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;124;1944.3,1859.906;Inherit;False;109;P;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;162;1438.607,2610.688;Inherit;False;156;vertexPosX;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleDivideOpNode;147;1470.07,2443.696;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;122;1772.401,1650.004;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;177;2153.163,1789.864;Inherit;False;3;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;146;1658.07,2420.696;Inherit;False;2;0;FLOAT;1;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CosOpNode;145;1650.67,2615.297;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;118;-794.5066,1375.951;Float;False;M;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;143;1790.67,2521.297;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;123;2335.503,1658.402;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;126;2352.503,1799.804;Inherit;False;118;M;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;141;1967.485,2350.382;Inherit;False;118;M;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;125;2503.204,1657.503;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;144;1958.671,2486.297;Inherit;False;2;0;FLOAT;1;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.PosVertexDataNode;267;2449.436,1929.172;Inherit;False;0;0;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleSubtractOpNode;266;2659.34,1807.047;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;140;2138.485,2453.382;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;183;-179.5485,1693.722;Inherit;False;696.0487;244.1651;;4;119;136;139;137;Final displacement;0.9974964,1,0.740566,1;0;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;127;2680.342,1654.303;Float;False;xOffset;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;259;-1290.88,2106.146;Inherit;True;Property;_NoiseTexture;NoiseTexture;11;0;Create;True;0;0;0;False;0;False;-1;1a1e99c7f4bb0a4479e4e5c835fd6c98;1a1e99c7f4bb0a4479e4e5c835fd6c98;True;0;True;bump;Auto;True;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;241;-1172.13,2296.299;Float;False;Property;_NoiseStrength;NoiseStrength;12;0;Create;True;0;0;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;138;2357.284,2452.722;Float;False;yOffset;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;137;-139.4584,1748.752;Inherit;False;127;xOffset;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;261;-940.4717,2294.155;Inherit;False;Property;_NoiseVerticalOffset;NoiseVerticalOffset;13;0;Create;True;0;0;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;246;-898.0533,2134.509;Inherit;False;4;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;139;-138.1845,1840.104;Inherit;False;138;yOffset;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.PosVertexDataNode;82;-67.46069,950.2814;Inherit;False;0;0;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.DynamicAppendNode;136;166.8616,1763.24;Inherit;False;FLOAT3;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleAddOpNode;260;-709.4717,2163.155;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.AbsOpNode;217;125.4951,974.244;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;86;-53.0972,1089.046;Inherit;False;109;P;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;12;-1275.848,-587.2426;Inherit;False;1252.009;1229.961;;10;4;5;8;10;11;6;9;3;1;2;Two sided shader using Switch by Face;1,1,1,1;0;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;236;-546.0984,2133.492;Float;False;noise;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;119;311.0336,1759.019;Float;False;myVertexOffset;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SamplerNode;8;-869.7573,-155.2426;Inherit;True;Property;_BackAlbedo;BackAlbedo;5;0;Create;True;0;0;0;False;0;False;-1;73c22871f2ee2f349a9483fde4089d5d;73c22871f2ee2f349a9483fde4089d5d;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;1;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;244;240.0946,1215.744;Inherit;False;236;noise;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;85;250.6872,974.5909;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;4;-869.7573,-523.2426;Inherit;True;Property;_MainTex;MainTex;2;0;Create;True;0;0;0;False;0;False;-1;73c22871f2ee2f349a9483fde4089d5d;43af129951d750c479e9bc8c68324872;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;1;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;77;-84.7619,1167.337;Inherit;False;119;myVertexOffset;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ColorNode;5;-824.0714,-329.8129;Float;False;Property;_Color;Color;4;0;Create;True;0;0;0;False;0;False;1,0.9333333,0.8078431,0;1,1,1,1;False;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.Compare;81;400.0334,970.797;Inherit;False;2;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SamplerNode;11;-813.7573,412.7573;Inherit;True;Property;_BackNormalMap;BackNormalMap;6;0;Create;True;0;0;0;False;0;False;-1;1a1e99c7f4bb0a4479e4e5c835fd6c98;1aebbb812b32bde4b8eb211cdcaa87d6;True;0;True;bump;Auto;True;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;1;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;10;-811.5575,186.1573;Inherit;True;Property;_FrontNormalMap;FrontNormalMap;3;0;Create;True;0;0;0;False;0;False;-1;1a1e99c7f4bb0a4479e4e5c835fd6c98;1aebbb812b32bde4b8eb211cdcaa87d6;True;0;True;bump;Auto;True;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;1;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.DynamicAppendNode;245;421.3807,1196.216;Inherit;False;FLOAT3;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;6;-518.7582,-347.1423;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;9;-522.8581,-174.1427;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SwitchByFaceNode;3;-373.7574,212.7574;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SamplerNode;1;-357.7574,340.7573;Inherit;True;Property;_OpacityMask;OpacityMask;1;0;Create;True;0;0;0;False;0;False;-1;73c22871f2ee2f349a9483fde4089d5d;43af129951d750c479e9bc8c68324872;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;1;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SwitchByFaceNode;2;-261.7574,-171.2426;Inherit;False;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;265;592.4087,1093.449;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.StandardSurfaceOutputNode;0;814.1843,803.7697;Float;False;True;-1;2;ASEMaterialInspector;0;0;Standard;Danilec/MapRollDoubleSided;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;Off;0;False;-1;0;False;-1;False;0;False;-1;0;False;-1;False;0;Masked;0.5;True;True;0;False;TransparentCutout;;AlphaTest;All;14;all;True;True;True;True;0;False;-1;False;0;False;-1;255;False;-1;255;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;False;0;4;10;25;False;0.5;True;0;0;False;-1;0;False;-1;0;0;False;-1;0;False;-1;1;False;-1;1;False;-1;0;False;0;0,0,0,0;VertexOffset;True;False;Cylindrical;False;Relative;0;;0;-1;-1;-1;0;False;0;0;False;-1;-1;0;False;-1;0;0;0;False;0.1;False;-1;0;False;-1;False;16;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT;0;False;4;FLOAT;0;False;5;FLOAT;0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT;0;False;9;FLOAT;0;False;10;FLOAT;0;False;13;FLOAT3;0,0,0;False;11;FLOAT3;0,0,0;False;12;FLOAT3;0,0,0;False;14;FLOAT4;0,0,0,0;False;15;FLOAT3;0,0,0;False;0
WireConnection;112;0;111;0
WireConnection;264;0;263;0
WireConnection;264;1;110;0
WireConnection;185;0;184;0
WireConnection;109;0;264;0
WireConnection;228;0;219;1
WireConnection;186;0;185;0
WireConnection;178;0;228;0
WireConnection;178;1;179;0
WireConnection;163;0;178;0
WireConnection;163;1;187;0
WireConnection;156;0;163;0
WireConnection;116;0;115;0
WireConnection;194;0;195;1
WireConnection;196;0;194;0
WireConnection;134;0;159;0
WireConnection;134;1;133;0
WireConnection;149;0;161;0
WireConnection;149;1;150;0
WireConnection;129;0;160;0
WireConnection;129;1;229;0
WireConnection;131;0;134;0
WireConnection;131;1;132;0
WireConnection;120;1;131;0
WireConnection;181;1;180;0
WireConnection;121;0;129;0
WireConnection;147;0;149;0
WireConnection;147;1;148;0
WireConnection;122;0;120;0
WireConnection;122;1;121;0
WireConnection;177;0;188;0
WireConnection;177;1;124;0
WireConnection;177;2;230;0
WireConnection;146;1;147;0
WireConnection;145;0;162;0
WireConnection;118;0;181;0
WireConnection;143;0;146;0
WireConnection;143;1;145;0
WireConnection;123;0;122;0
WireConnection;123;1;177;0
WireConnection;125;0;123;0
WireConnection;125;1;126;0
WireConnection;144;1;143;0
WireConnection;266;0;125;0
WireConnection;266;1;267;1
WireConnection;140;0;141;0
WireConnection;140;1;144;0
WireConnection;127;0;266;0
WireConnection;138;0;140;0
WireConnection;246;0;259;1
WireConnection;246;1;259;2
WireConnection;246;2;259;3
WireConnection;246;3;241;0
WireConnection;136;0;137;0
WireConnection;136;1;139;0
WireConnection;260;0;246;0
WireConnection;260;1;261;0
WireConnection;217;0;82;1
WireConnection;236;0;260;0
WireConnection;119;0;136;0
WireConnection;85;0;217;0
WireConnection;85;1;86;0
WireConnection;81;0;85;0
WireConnection;81;2;77;0
WireConnection;245;1;244;0
WireConnection;6;0;4;0
WireConnection;6;1;5;0
WireConnection;9;0;5;0
WireConnection;9;1;8;0
WireConnection;3;0;10;0
WireConnection;3;1;11;0
WireConnection;2;0;6;0
WireConnection;2;1;9;0
WireConnection;265;0;81;0
WireConnection;265;1;245;0
WireConnection;0;0;2;0
WireConnection;0;1;3;0
WireConnection;0;10;1;4
WireConnection;0;11;265;0
ASEEND*/
//CHKSM=5E7D2EA473951CAB5648ED697ED262782A53E183