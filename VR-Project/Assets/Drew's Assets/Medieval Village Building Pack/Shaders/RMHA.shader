// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:3,spmd:1,trmd:0,grmd:1,uamb:True,mssp:True,bkdf:True,hqlp:False,rprd:True,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:2865,x:32719,y:32712,varname:node_2865,prsc:2|diff-9197-OUT,spec-4467-G,gloss-4964-OUT,normal-416-OUT,difocc-9838-OUT,spcocc-9838-OUT;n:type:ShaderForge.SFN_Multiply,id:6343,x:29236,y:32316,varname:node_6343,prsc:2|A-3994-RGB,B-7736-RGB;n:type:ShaderForge.SFN_Tex2d,id:7736,x:29043,y:32224,ptovrint:True,ptlb:Base Color,ptin:_MainTex,varname:_MainTex,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-6156-UVOUT;n:type:ShaderForge.SFN_Tex2d,id:5964,x:29834,y:32820,ptovrint:True,ptlb:Normal Map,ptin:_BumpMap,varname:_BumpMap,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:3,isnm:True|UVIN-6156-UVOUT;n:type:ShaderForge.SFN_Tex2d,id:4467,x:29244,y:33610,varname:node_4467,prsc:2,ntxv:0,isnm:False|UVIN-6156-UVOUT,TEX-1674-TEX;n:type:ShaderForge.SFN_Slider,id:5421,x:30026,y:34026,ptovrint:False,ptlb:AO,ptin:_AO,varname:node_5421,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Lerp,id:9838,x:32342,y:33326,varname:node_9838,prsc:2|A-9793-OUT,B-9594-OUT,T-5421-OUT;n:type:ShaderForge.SFN_Vector1,id:9793,x:29244,y:33533,varname:node_9793,prsc:2,v1:1;n:type:ShaderForge.SFN_Slider,id:4997,x:29435,y:33455,ptovrint:False,ptlb:Roughness,ptin:_Roughness,varname:node_4997,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Lerp,id:4964,x:32342,y:33047,varname:node_4964,prsc:2|A-9793-OUT,B-2234-OUT,T-4997-OUT;n:type:ShaderForge.SFN_Tex2dAsset,id:1674,x:28896,y:33646,ptovrint:False,ptlb:RMHA,ptin:_RMHA,varname:node_1674,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Blend,id:8194,x:29990,y:32057,varname:node_8194,prsc:2,blmd:1,clmp:True|SRC-5892-RGB,DST-262-OUT;n:type:ShaderForge.SFN_Color,id:5892,x:29670,y:31907,ptovrint:False,ptlb:AO Color,ptin:_AOColor,varname:node_5892,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Lerp,id:9197,x:32337,y:32674,varname:node_9197,prsc:2|A-8194-OUT,B-262-OUT,T-9838-OUT;n:type:ShaderForge.SFN_Tex2d,id:8063,x:29057,y:31715,ptovrint:False,ptlb:Secondary Color,ptin:_SecondaryColor,varname:node_8063,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-3031-UVOUT;n:type:ShaderForge.SFN_Color,id:9442,x:29057,y:31900,ptovrint:False,ptlb:Secondary Tint,ptin:_SecondaryTint,varname:node_9442,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Multiply,id:5223,x:29346,y:31812,varname:node_5223,prsc:2|A-9442-RGB,B-8063-RGB;n:type:ShaderForge.SFN_Lerp,id:262,x:29670,y:32077,varname:node_262,prsc:2|A-6343-OUT,B-5223-OUT,T-2428-OUT;n:type:ShaderForge.SFN_Multiply,id:187,x:26025,y:31591,varname:node_187,prsc:2|A-6681-OUT,B-4751-UVOUT;n:type:ShaderForge.SFN_Slider,id:6681,x:25568,y:31307,ptovrint:False,ptlb:Mask Size,ptin:_MaskSize,varname:node_6681,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Slider,id:4289,x:26552,y:31494,ptovrint:False,ptlb:Mask 1,ptin:_Mask1,varname:node_4289,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Tex2d,id:3863,x:29809,y:33037,ptovrint:False,ptlb:Secondary Normal,ptin:_SecondaryNormal,varname:node_3863,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:3,isnm:True|UVIN-3031-UVOUT;n:type:ShaderForge.SFN_Lerp,id:416,x:32342,y:33210,varname:node_416,prsc:2|A-5964-RGB,B-3863-RGB,T-2428-OUT;n:type:ShaderForge.SFN_Tex2dAsset,id:318,x:28896,y:33884,ptovrint:False,ptlb:RMHA 2,ptin:_RMHA2,varname:node_318,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:8016,x:29244,y:33844,varname:node_8016,prsc:2,ntxv:0,isnm:False|UVIN-3031-UVOUT,TEX-318-TEX;n:type:ShaderForge.SFN_Power,id:3122,x:27070,y:31593,varname:node_3122,prsc:2|VAL-4289-OUT,EXP-6081-OUT;n:type:ShaderForge.SFN_Lerp,id:2234,x:29530,y:33634,varname:node_2234,prsc:2|A-4467-R,B-8016-R,T-2428-OUT;n:type:ShaderForge.SFN_Lerp,id:9594,x:29530,y:33810,varname:node_9594,prsc:2|A-4467-A,B-8016-A,T-2428-OUT;n:type:ShaderForge.SFN_Blend,id:2428,x:27379,y:31580,varname:node_2428,prsc:2,blmd:7,clmp:True|SRC-4002-OUT,DST-3122-OUT;n:type:ShaderForge.SFN_Parallax,id:3031,x:28523,y:31729,varname:node_3031,prsc:2|UVIN-6814-OUT,HEI-7131-OUT,DEP-8767-OUT;n:type:ShaderForge.SFN_TexCoord,id:4027,x:28092,y:31508,varname:node_4027,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Slider,id:8767,x:28481,y:31590,ptovrint:False,ptlb:Offset,ptin:_Offset,varname:node_8767,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Tex2d,id:8958,x:27187,y:32111,varname:node_8958,prsc:2,ntxv:0,isnm:False|TEX-1674-TEX;n:type:ShaderForge.SFN_Lerp,id:3574,x:28363,y:31257,varname:node_3574,prsc:2|A-8958-B,B-62-B,T-2428-OUT;n:type:ShaderForge.SFN_Tex2d,id:62,x:28643,y:33646,varname:node_62,prsc:2,ntxv:0,isnm:False|TEX-318-TEX;n:type:ShaderForge.SFN_Desaturate,id:7131,x:28550,y:31341,varname:node_7131,prsc:2|COL-3574-OUT;n:type:ShaderForge.SFN_Power,id:4002,x:27779,y:32164,varname:node_4002,prsc:2|VAL-2847-OUT,EXP-8958-B;n:type:ShaderForge.SFN_Slider,id:2847,x:27483,y:32477,ptovrint:False,ptlb:Mask 2,ptin:_Mask2,varname:node_2847,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Color,id:3994,x:29043,y:32424,ptovrint:False,ptlb:Tint,ptin:_Tint,varname:node_3994,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Tex2dAsset,id:4486,x:26395,y:32111,ptovrint:False,ptlb:Texture Mask,ptin:_TextureMask,varname:node_4486,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_ChannelBlend,id:6081,x:26885,y:31803,varname:node_6081,prsc:2,chbt:0|M-9856-OUT,R-69-RGB,G-189-RGB,B-3593-RGB;n:type:ShaderForge.SFN_FragmentPosition,id:7803,x:25084,y:31827,varname:node_7803,prsc:2;n:type:ShaderForge.SFN_Append,id:2182,x:25487,y:31725,varname:node_2182,prsc:2|A-7803-Y,B-7803-Z;n:type:ShaderForge.SFN_NormalVector,id:7798,x:25395,y:31550,prsc:2,pt:False;n:type:ShaderForge.SFN_Abs,id:7631,x:25562,y:31550,varname:node_7631,prsc:2|IN-7798-OUT;n:type:ShaderForge.SFN_Multiply,id:9856,x:25745,y:31550,varname:node_9856,prsc:2|A-7631-OUT,B-7631-OUT;n:type:ShaderForge.SFN_Append,id:8056,x:25487,y:31855,varname:node_8056,prsc:2|A-7803-X,B-7803-Z;n:type:ShaderForge.SFN_Append,id:2376,x:25487,y:31988,varname:node_2376,prsc:2|A-7803-X,B-7803-Y;n:type:ShaderForge.SFN_Multiply,id:1481,x:26025,y:31719,varname:node_1481,prsc:2|A-6681-OUT,B-7492-UVOUT;n:type:ShaderForge.SFN_Multiply,id:7412,x:26025,y:31851,varname:node_7412,prsc:2|A-6681-OUT,B-8867-UVOUT;n:type:ShaderForge.SFN_Tex2d,id:69,x:26631,y:31678,varname:node_69,prsc:2,ntxv:0,isnm:False|UVIN-187-OUT,TEX-4486-TEX;n:type:ShaderForge.SFN_Tex2d,id:189,x:26631,y:31843,varname:node_189,prsc:2,ntxv:0,isnm:False|UVIN-1481-OUT,TEX-4486-TEX;n:type:ShaderForge.SFN_Tex2d,id:3593,x:26631,y:32035,varname:node_3593,prsc:2,ntxv:0,isnm:False|UVIN-7412-OUT,TEX-4486-TEX;n:type:ShaderForge.SFN_Rotator,id:6156,x:28334,y:32293,varname:node_6156,prsc:2|UVIN-3031-UVOUT,ANG-8388-OUT;n:type:ShaderForge.SFN_Slider,id:6992,x:27517,y:32741,ptovrint:False,ptlb:Rotation,ptin:_Rotation,varname:node_6992,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_RemapRange,id:8388,x:27853,y:32742,varname:node_8388,prsc:2,frmn:0,frmx:1,tomn:0,tomx:6.28|IN-6992-OUT;n:type:ShaderForge.SFN_Rotator,id:4751,x:25721,y:31678,varname:node_4751,prsc:2|UVIN-2182-OUT,ANG-8388-OUT;n:type:ShaderForge.SFN_Rotator,id:7492,x:25721,y:31781,varname:node_7492,prsc:2|UVIN-8056-OUT,ANG-8388-OUT;n:type:ShaderForge.SFN_Rotator,id:8867,x:25738,y:31934,varname:node_8867,prsc:2|UVIN-2376-OUT,ANG-8388-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:6814,x:28034,y:31734,ptovrint:False,ptlb:Projection Mapping,ptin:_ProjectionMapping,varname:node_6814,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-4027-UVOUT,B-8056-OUT;proporder:5964-7736-3994-1674-5421-5892-4997-3863-8063-9442-318-4486-6681-4289-2847-8767-6992-6814;pass:END;sub:END;*/

Shader "Mikes Emporium/RMHA" {
    Properties {
        _BumpMap ("Normal Map", 2D) = "bump" {}
        _MainTex ("Base Color", 2D) = "white" {}
        _Tint ("Tint", Color) = (1,1,1,1)
        _RMHA ("RMHA", 2D) = "white" {}
        _AO ("AO", Range(0, 1)) = 0
        _AOColor ("AO Color", Color) = (0.5,0.5,0.5,1)
        _Roughness ("Roughness", Range(0, 1)) = 0
        _SecondaryNormal ("Secondary Normal", 2D) = "bump" {}
        _SecondaryColor ("Secondary Color", 2D) = "white" {}
        _SecondaryTint ("Secondary Tint", Color) = (0.5,0.5,0.5,1)
        _RMHA2 ("RMHA 2", 2D) = "white" {}
        _TextureMask ("Texture Mask", 2D) = "white" {}
        _MaskSize ("Mask Size", Range(0, 1)) = 0
        _Mask1 ("Mask 1", Range(0, 1)) = 0
        _Mask2 ("Mask 2", Range(0, 1)) = 0
        _Offset ("Offset", Range(0, 1)) = 0
        _Rotation ("Rotation", Range(0, 1)) = 0
        [MaterialToggle] _ProjectionMapping ("Projection Mapping", Float ) = 0
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform sampler2D _BumpMap; uniform float4 _BumpMap_ST;
            uniform float _AO;
            uniform float _Roughness;
            uniform sampler2D _RMHA; uniform float4 _RMHA_ST;
            uniform float4 _AOColor;
            uniform sampler2D _SecondaryColor; uniform float4 _SecondaryColor_ST;
            uniform float4 _SecondaryTint;
            uniform float _MaskSize;
            uniform float _Mask1;
            uniform sampler2D _SecondaryNormal; uniform float4 _SecondaryNormal_ST;
            uniform sampler2D _RMHA2; uniform float4 _RMHA2_ST;
            uniform float _Offset;
            uniform float _Mask2;
            uniform float4 _Tint;
            uniform sampler2D _TextureMask; uniform float4 _TextureMask_ST;
            uniform float _Rotation;
            uniform fixed _ProjectionMapping;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float2 uv2 : TEXCOORD2;
                float4 posWorld : TEXCOORD3;
                float3 normalDir : TEXCOORD4;
                float3 tangentDir : TEXCOORD5;
                float3 bitangentDir : TEXCOORD6;
                LIGHTING_COORDS(7,8)
                UNITY_FOG_COORDS(9)
                #if defined(LIGHTMAP_ON) || defined(UNITY_SHOULD_SAMPLE_SH)
                    float4 ambientOrLightmapUV : TEXCOORD10;
                #endif
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                #ifdef LIGHTMAP_ON
                    o.ambientOrLightmapUV.xy = v.texcoord1.xy * unity_LightmapST.xy + unity_LightmapST.zw;
                    o.ambientOrLightmapUV.zw = 0;
                #elif UNITY_SHOULD_SAMPLE_SH
                #endif
                #ifdef DYNAMICLIGHTMAP_ON
                    o.ambientOrLightmapUV.zw = v.texcoord2.xy * unity_DynamicLightmapST.xy + unity_DynamicLightmapST.zw;
                #endif
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float node_8388 = (_Rotation*6.28+0.0);
                float node_6156_ang = node_8388;
                float node_6156_spd = 1.0;
                float node_6156_cos = cos(node_6156_spd*node_6156_ang);
                float node_6156_sin = sin(node_6156_spd*node_6156_ang);
                float2 node_6156_piv = float2(0.5,0.5);
                float2 node_8056 = float2(i.posWorld.r,i.posWorld.b);
                float4 node_8958 = tex2D(_RMHA,TRANSFORM_TEX(i.uv0, _RMHA));
                float4 node_62 = tex2D(_RMHA2,TRANSFORM_TEX(i.uv0, _RMHA2));
                float3 node_7631 = abs(i.normalDir);
                float3 node_9856 = (node_7631*node_7631);
                float node_4751_ang = node_8388;
                float node_4751_spd = 1.0;
                float node_4751_cos = cos(node_4751_spd*node_4751_ang);
                float node_4751_sin = sin(node_4751_spd*node_4751_ang);
                float2 node_4751_piv = float2(0.5,0.5);
                float2 node_4751 = (mul(float2(i.posWorld.g,i.posWorld.b)-node_4751_piv,float2x2( node_4751_cos, -node_4751_sin, node_4751_sin, node_4751_cos))+node_4751_piv);
                float2 node_187 = (_MaskSize*node_4751);
                float4 node_69 = tex2D(_TextureMask,TRANSFORM_TEX(node_187, _TextureMask));
                float node_7492_ang = node_8388;
                float node_7492_spd = 1.0;
                float node_7492_cos = cos(node_7492_spd*node_7492_ang);
                float node_7492_sin = sin(node_7492_spd*node_7492_ang);
                float2 node_7492_piv = float2(0.5,0.5);
                float2 node_7492 = (mul(node_8056-node_7492_piv,float2x2( node_7492_cos, -node_7492_sin, node_7492_sin, node_7492_cos))+node_7492_piv);
                float2 node_1481 = (_MaskSize*node_7492);
                float4 node_189 = tex2D(_TextureMask,TRANSFORM_TEX(node_1481, _TextureMask));
                float node_8867_ang = node_8388;
                float node_8867_spd = 1.0;
                float node_8867_cos = cos(node_8867_spd*node_8867_ang);
                float node_8867_sin = sin(node_8867_spd*node_8867_ang);
                float2 node_8867_piv = float2(0.5,0.5);
                float2 node_8867 = (mul(float2(i.posWorld.r,i.posWorld.g)-node_8867_piv,float2x2( node_8867_cos, -node_8867_sin, node_8867_sin, node_8867_cos))+node_8867_piv);
                float2 node_7412 = (_MaskSize*node_8867);
                float4 node_3593 = tex2D(_TextureMask,TRANSFORM_TEX(node_7412, _TextureMask));
                float3 node_2428 = saturate((pow(_Mask1,(node_9856.r*node_69.rgb + node_9856.g*node_189.rgb + node_9856.b*node_3593.rgb))/(1.0-pow(_Mask2,node_8958.b))));
                float2 node_3031 = (_Offset*(dot(lerp(float3(node_8958.b,node_8958.b,node_8958.b),float3(node_62.b,node_62.b,node_62.b),node_2428),float3(0.3,0.59,0.11)) - 0.5)*mul(tangentTransform, viewDirection).xy + lerp( i.uv0, node_8056, _ProjectionMapping ));
                float2 node_6156 = (mul(node_3031.rg-node_6156_piv,float2x2( node_6156_cos, -node_6156_sin, node_6156_sin, node_6156_cos))+node_6156_piv);
                float3 _BumpMap_var = UnpackNormal(tex2D(_BumpMap,TRANSFORM_TEX(node_6156, _BumpMap)));
                float3 _SecondaryNormal_var = UnpackNormal(tex2D(_SecondaryNormal,TRANSFORM_TEX(node_3031.rg, _SecondaryNormal)));
                float3 normalLocal = lerp(_BumpMap_var.rgb,_SecondaryNormal_var.rgb,node_2428);
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
                float Pi = 3.141592654;
                float InvPi = 0.31830988618;
///////// Gloss:
                float node_9793 = 1.0;
                float4 node_4467 = tex2D(_RMHA,TRANSFORM_TEX(node_6156, _RMHA));
                float4 node_8016 = tex2D(_RMHA2,TRANSFORM_TEX(node_3031.rg, _RMHA2));
                float gloss = 1.0 - lerp(float3(node_9793,node_9793,node_9793),lerp(float3(node_4467.r,node_4467.r,node_4467.r),float3(node_8016.r,node_8016.r,node_8016.r),node_2428),_Roughness); // Convert roughness to gloss
                float perceptualRoughness = lerp(float3(node_9793,node_9793,node_9793),lerp(float3(node_4467.r,node_4467.r,node_4467.r),float3(node_8016.r,node_8016.r,node_8016.r),node_2428),_Roughness);
                float roughness = perceptualRoughness * perceptualRoughness;
                float specPow = exp2( gloss * 10.0 + 1.0 );
/////// GI Data:
                UnityLight light;
                #ifdef LIGHTMAP_OFF
                    light.color = lightColor;
                    light.dir = lightDirection;
                    light.ndotl = LambertTerm (normalDirection, light.dir);
                #else
                    light.color = half3(0.f, 0.f, 0.f);
                    light.ndotl = 0.0f;
                    light.dir = half3(0.f, 0.f, 0.f);
                #endif
                UnityGIInput d;
                d.light = light;
                d.worldPos = i.posWorld.xyz;
                d.worldViewDir = viewDirection;
                d.atten = attenuation;
                #if defined(LIGHTMAP_ON) || defined(DYNAMICLIGHTMAP_ON)
                    d.ambient = 0;
                    d.lightmapUV = i.ambientOrLightmapUV;
                #else
                    d.ambient = i.ambientOrLightmapUV;
                #endif
                #if UNITY_SPECCUBE_BLENDING || UNITY_SPECCUBE_BOX_PROJECTION
                    d.boxMin[0] = unity_SpecCube0_BoxMin;
                    d.boxMin[1] = unity_SpecCube1_BoxMin;
                #endif
                #if UNITY_SPECCUBE_BOX_PROJECTION
                    d.boxMax[0] = unity_SpecCube0_BoxMax;
                    d.boxMax[1] = unity_SpecCube1_BoxMax;
                    d.probePosition[0] = unity_SpecCube0_ProbePosition;
                    d.probePosition[1] = unity_SpecCube1_ProbePosition;
                #endif
                d.probeHDR[0] = unity_SpecCube0_HDR;
                d.probeHDR[1] = unity_SpecCube1_HDR;
                Unity_GlossyEnvironmentData ugls_en_data;
                ugls_en_data.roughness = 1.0 - gloss;
                ugls_en_data.reflUVW = viewReflectDirection;
                UnityGI gi = UnityGlobalIllumination(d, 1, normalDirection, ugls_en_data );
                lightDirection = gi.light.dir;
                lightColor = gi.light.color;
////// Specular:
                float NdotL = saturate(dot( normalDirection, lightDirection ));
                float3 node_9838 = lerp(float3(node_9793,node_9793,node_9793),lerp(float3(node_4467.a,node_4467.a,node_4467.a),float3(node_8016.a,node_8016.a,node_8016.a),node_2428),_AO);
                float3 specularAO = node_9838.r;
                float LdotH = saturate(dot(lightDirection, halfDirection));
                float3 specularColor = node_4467.g;
                float specularMonochrome;
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(node_6156, _MainTex));
                float4 _SecondaryColor_var = tex2D(_SecondaryColor,TRANSFORM_TEX(node_3031.rg, _SecondaryColor));
                float3 node_262 = lerp((_Tint.rgb*_MainTex_var.rgb),(_SecondaryTint.rgb*_SecondaryColor_var.rgb),node_2428);
                float3 diffuseColor = lerp(saturate((_AOColor.rgb*node_262)),node_262,node_9838); // Need this for specular when using metallic
                diffuseColor = DiffuseAndSpecularFromMetallic( diffuseColor, specularColor, specularColor, specularMonochrome );
                specularMonochrome = 1.0-specularMonochrome;
                float NdotV = abs(dot( normalDirection, viewDirection ));
                float NdotH = saturate(dot( normalDirection, halfDirection ));
                float VdotH = saturate(dot( viewDirection, halfDirection ));
                float visTerm = SmithJointGGXVisibilityTerm( NdotL, NdotV, roughness );
                float normTerm = GGXTerm(NdotH, roughness);
                float specularPBL = (visTerm*normTerm) * UNITY_PI;
                #ifdef UNITY_COLORSPACE_GAMMA
                    specularPBL = sqrt(max(1e-4h, specularPBL));
                #endif
                specularPBL = max(0, specularPBL * NdotL);
                #if defined(_SPECULARHIGHLIGHTS_OFF)
                    specularPBL = 0.0;
                #endif
                half surfaceReduction;
                #ifdef UNITY_COLORSPACE_GAMMA
                    surfaceReduction = 1.0-0.28*roughness*perceptualRoughness;
                #else
                    surfaceReduction = 1.0/(roughness*roughness + 1.0);
                #endif
                specularPBL *= any(specularColor) ? 1.0 : 0.0;
                float3 directSpecular = attenColor*specularPBL*FresnelTerm(specularColor, LdotH);
                half grazingTerm = saturate( gloss + specularMonochrome );
                float3 indirectSpecular = (gi.indirect.specular) * specularAO;
                indirectSpecular *= FresnelLerp (specularColor, grazingTerm, NdotV);
                indirectSpecular *= surfaceReduction;
                float3 specular = (directSpecular + indirectSpecular);
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                half fd90 = 0.5 + 2 * LdotH * LdotH * (1-gloss);
                float nlPow5 = Pow5(1-NdotL);
                float nvPow5 = Pow5(1-NdotV);
                float3 directDiffuse = ((1 +(fd90 - 1)*nlPow5) * (1 + (fd90 - 1)*nvPow5) * NdotL) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += gi.indirect.diffuse;
                indirectDiffuse *= node_9838.r; // Diffuse AO
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "FORWARD_DELTA"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform sampler2D _BumpMap; uniform float4 _BumpMap_ST;
            uniform float _AO;
            uniform float _Roughness;
            uniform sampler2D _RMHA; uniform float4 _RMHA_ST;
            uniform float4 _AOColor;
            uniform sampler2D _SecondaryColor; uniform float4 _SecondaryColor_ST;
            uniform float4 _SecondaryTint;
            uniform float _MaskSize;
            uniform float _Mask1;
            uniform sampler2D _SecondaryNormal; uniform float4 _SecondaryNormal_ST;
            uniform sampler2D _RMHA2; uniform float4 _RMHA2_ST;
            uniform float _Offset;
            uniform float _Mask2;
            uniform float4 _Tint;
            uniform sampler2D _TextureMask; uniform float4 _TextureMask_ST;
            uniform float _Rotation;
            uniform fixed _ProjectionMapping;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float2 uv2 : TEXCOORD2;
                float4 posWorld : TEXCOORD3;
                float3 normalDir : TEXCOORD4;
                float3 tangentDir : TEXCOORD5;
                float3 bitangentDir : TEXCOORD6;
                LIGHTING_COORDS(7,8)
                UNITY_FOG_COORDS(9)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float node_8388 = (_Rotation*6.28+0.0);
                float node_6156_ang = node_8388;
                float node_6156_spd = 1.0;
                float node_6156_cos = cos(node_6156_spd*node_6156_ang);
                float node_6156_sin = sin(node_6156_spd*node_6156_ang);
                float2 node_6156_piv = float2(0.5,0.5);
                float2 node_8056 = float2(i.posWorld.r,i.posWorld.b);
                float4 node_8958 = tex2D(_RMHA,TRANSFORM_TEX(i.uv0, _RMHA));
                float4 node_62 = tex2D(_RMHA2,TRANSFORM_TEX(i.uv0, _RMHA2));
                float3 node_7631 = abs(i.normalDir);
                float3 node_9856 = (node_7631*node_7631);
                float node_4751_ang = node_8388;
                float node_4751_spd = 1.0;
                float node_4751_cos = cos(node_4751_spd*node_4751_ang);
                float node_4751_sin = sin(node_4751_spd*node_4751_ang);
                float2 node_4751_piv = float2(0.5,0.5);
                float2 node_4751 = (mul(float2(i.posWorld.g,i.posWorld.b)-node_4751_piv,float2x2( node_4751_cos, -node_4751_sin, node_4751_sin, node_4751_cos))+node_4751_piv);
                float2 node_187 = (_MaskSize*node_4751);
                float4 node_69 = tex2D(_TextureMask,TRANSFORM_TEX(node_187, _TextureMask));
                float node_7492_ang = node_8388;
                float node_7492_spd = 1.0;
                float node_7492_cos = cos(node_7492_spd*node_7492_ang);
                float node_7492_sin = sin(node_7492_spd*node_7492_ang);
                float2 node_7492_piv = float2(0.5,0.5);
                float2 node_7492 = (mul(node_8056-node_7492_piv,float2x2( node_7492_cos, -node_7492_sin, node_7492_sin, node_7492_cos))+node_7492_piv);
                float2 node_1481 = (_MaskSize*node_7492);
                float4 node_189 = tex2D(_TextureMask,TRANSFORM_TEX(node_1481, _TextureMask));
                float node_8867_ang = node_8388;
                float node_8867_spd = 1.0;
                float node_8867_cos = cos(node_8867_spd*node_8867_ang);
                float node_8867_sin = sin(node_8867_spd*node_8867_ang);
                float2 node_8867_piv = float2(0.5,0.5);
                float2 node_8867 = (mul(float2(i.posWorld.r,i.posWorld.g)-node_8867_piv,float2x2( node_8867_cos, -node_8867_sin, node_8867_sin, node_8867_cos))+node_8867_piv);
                float2 node_7412 = (_MaskSize*node_8867);
                float4 node_3593 = tex2D(_TextureMask,TRANSFORM_TEX(node_7412, _TextureMask));
                float3 node_2428 = saturate((pow(_Mask1,(node_9856.r*node_69.rgb + node_9856.g*node_189.rgb + node_9856.b*node_3593.rgb))/(1.0-pow(_Mask2,node_8958.b))));
                float2 node_3031 = (_Offset*(dot(lerp(float3(node_8958.b,node_8958.b,node_8958.b),float3(node_62.b,node_62.b,node_62.b),node_2428),float3(0.3,0.59,0.11)) - 0.5)*mul(tangentTransform, viewDirection).xy + lerp( i.uv0, node_8056, _ProjectionMapping ));
                float2 node_6156 = (mul(node_3031.rg-node_6156_piv,float2x2( node_6156_cos, -node_6156_sin, node_6156_sin, node_6156_cos))+node_6156_piv);
                float3 _BumpMap_var = UnpackNormal(tex2D(_BumpMap,TRANSFORM_TEX(node_6156, _BumpMap)));
                float3 _SecondaryNormal_var = UnpackNormal(tex2D(_SecondaryNormal,TRANSFORM_TEX(node_3031.rg, _SecondaryNormal)));
                float3 normalLocal = lerp(_BumpMap_var.rgb,_SecondaryNormal_var.rgb,node_2428);
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
                float Pi = 3.141592654;
                float InvPi = 0.31830988618;
///////// Gloss:
                float node_9793 = 1.0;
                float4 node_4467 = tex2D(_RMHA,TRANSFORM_TEX(node_6156, _RMHA));
                float4 node_8016 = tex2D(_RMHA2,TRANSFORM_TEX(node_3031.rg, _RMHA2));
                float gloss = 1.0 - lerp(float3(node_9793,node_9793,node_9793),lerp(float3(node_4467.r,node_4467.r,node_4467.r),float3(node_8016.r,node_8016.r,node_8016.r),node_2428),_Roughness); // Convert roughness to gloss
                float perceptualRoughness = lerp(float3(node_9793,node_9793,node_9793),lerp(float3(node_4467.r,node_4467.r,node_4467.r),float3(node_8016.r,node_8016.r,node_8016.r),node_2428),_Roughness);
                float roughness = perceptualRoughness * perceptualRoughness;
                float specPow = exp2( gloss * 10.0 + 1.0 );
////// Specular:
                float NdotL = saturate(dot( normalDirection, lightDirection ));
                float LdotH = saturate(dot(lightDirection, halfDirection));
                float3 specularColor = node_4467.g;
                float specularMonochrome;
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(node_6156, _MainTex));
                float4 _SecondaryColor_var = tex2D(_SecondaryColor,TRANSFORM_TEX(node_3031.rg, _SecondaryColor));
                float3 node_262 = lerp((_Tint.rgb*_MainTex_var.rgb),(_SecondaryTint.rgb*_SecondaryColor_var.rgb),node_2428);
                float3 node_9838 = lerp(float3(node_9793,node_9793,node_9793),lerp(float3(node_4467.a,node_4467.a,node_4467.a),float3(node_8016.a,node_8016.a,node_8016.a),node_2428),_AO);
                float3 diffuseColor = lerp(saturate((_AOColor.rgb*node_262)),node_262,node_9838); // Need this for specular when using metallic
                diffuseColor = DiffuseAndSpecularFromMetallic( diffuseColor, specularColor, specularColor, specularMonochrome );
                specularMonochrome = 1.0-specularMonochrome;
                float NdotV = abs(dot( normalDirection, viewDirection ));
                float NdotH = saturate(dot( normalDirection, halfDirection ));
                float VdotH = saturate(dot( viewDirection, halfDirection ));
                float visTerm = SmithJointGGXVisibilityTerm( NdotL, NdotV, roughness );
                float normTerm = GGXTerm(NdotH, roughness);
                float specularPBL = (visTerm*normTerm) * UNITY_PI;
                #ifdef UNITY_COLORSPACE_GAMMA
                    specularPBL = sqrt(max(1e-4h, specularPBL));
                #endif
                specularPBL = max(0, specularPBL * NdotL);
                #if defined(_SPECULARHIGHLIGHTS_OFF)
                    specularPBL = 0.0;
                #endif
                specularPBL *= any(specularColor) ? 1.0 : 0.0;
                float3 directSpecular = attenColor*specularPBL*FresnelTerm(specularColor, LdotH);
                float3 specular = directSpecular;
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                half fd90 = 0.5 + 2 * LdotH * LdotH * (1-gloss);
                float nlPow5 = Pow5(1-NdotL);
                float nvPow5 = Pow5(1-NdotV);
                float3 directDiffuse = ((1 +(fd90 - 1)*nlPow5) * (1 + (fd90 - 1)*nvPow5) * NdotL) * attenColor;
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
                fixed4 finalRGBA = fixed4(finalColor * 1,0);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "Meta"
            Tags {
                "LightMode"="Meta"
            }
            Cull Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_META 1
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #include "UnityMetaPass.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float _AO;
            uniform float _Roughness;
            uniform sampler2D _RMHA; uniform float4 _RMHA_ST;
            uniform float4 _AOColor;
            uniform sampler2D _SecondaryColor; uniform float4 _SecondaryColor_ST;
            uniform float4 _SecondaryTint;
            uniform float _MaskSize;
            uniform float _Mask1;
            uniform sampler2D _RMHA2; uniform float4 _RMHA2_ST;
            uniform float _Offset;
            uniform float _Mask2;
            uniform float4 _Tint;
            uniform sampler2D _TextureMask; uniform float4 _TextureMask_ST;
            uniform float _Rotation;
            uniform fixed _ProjectionMapping;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float2 uv2 : TEXCOORD2;
                float4 posWorld : TEXCOORD3;
                float3 normalDir : TEXCOORD4;
                float3 tangentDir : TEXCOORD5;
                float3 bitangentDir : TEXCOORD6;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityMetaVertexPosition(v.vertex, v.texcoord1.xy, v.texcoord2.xy, unity_LightmapST, unity_DynamicLightmapST );
                return o;
            }
            float4 frag(VertexOutput i) : SV_Target {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                UnityMetaInput o;
                UNITY_INITIALIZE_OUTPUT( UnityMetaInput, o );
                
                o.Emission = 0;
                
                float node_8388 = (_Rotation*6.28+0.0);
                float node_6156_ang = node_8388;
                float node_6156_spd = 1.0;
                float node_6156_cos = cos(node_6156_spd*node_6156_ang);
                float node_6156_sin = sin(node_6156_spd*node_6156_ang);
                float2 node_6156_piv = float2(0.5,0.5);
                float2 node_8056 = float2(i.posWorld.r,i.posWorld.b);
                float4 node_8958 = tex2D(_RMHA,TRANSFORM_TEX(i.uv0, _RMHA));
                float4 node_62 = tex2D(_RMHA2,TRANSFORM_TEX(i.uv0, _RMHA2));
                float3 node_7631 = abs(i.normalDir);
                float3 node_9856 = (node_7631*node_7631);
                float node_4751_ang = node_8388;
                float node_4751_spd = 1.0;
                float node_4751_cos = cos(node_4751_spd*node_4751_ang);
                float node_4751_sin = sin(node_4751_spd*node_4751_ang);
                float2 node_4751_piv = float2(0.5,0.5);
                float2 node_4751 = (mul(float2(i.posWorld.g,i.posWorld.b)-node_4751_piv,float2x2( node_4751_cos, -node_4751_sin, node_4751_sin, node_4751_cos))+node_4751_piv);
                float2 node_187 = (_MaskSize*node_4751);
                float4 node_69 = tex2D(_TextureMask,TRANSFORM_TEX(node_187, _TextureMask));
                float node_7492_ang = node_8388;
                float node_7492_spd = 1.0;
                float node_7492_cos = cos(node_7492_spd*node_7492_ang);
                float node_7492_sin = sin(node_7492_spd*node_7492_ang);
                float2 node_7492_piv = float2(0.5,0.5);
                float2 node_7492 = (mul(node_8056-node_7492_piv,float2x2( node_7492_cos, -node_7492_sin, node_7492_sin, node_7492_cos))+node_7492_piv);
                float2 node_1481 = (_MaskSize*node_7492);
                float4 node_189 = tex2D(_TextureMask,TRANSFORM_TEX(node_1481, _TextureMask));
                float node_8867_ang = node_8388;
                float node_8867_spd = 1.0;
                float node_8867_cos = cos(node_8867_spd*node_8867_ang);
                float node_8867_sin = sin(node_8867_spd*node_8867_ang);
                float2 node_8867_piv = float2(0.5,0.5);
                float2 node_8867 = (mul(float2(i.posWorld.r,i.posWorld.g)-node_8867_piv,float2x2( node_8867_cos, -node_8867_sin, node_8867_sin, node_8867_cos))+node_8867_piv);
                float2 node_7412 = (_MaskSize*node_8867);
                float4 node_3593 = tex2D(_TextureMask,TRANSFORM_TEX(node_7412, _TextureMask));
                float3 node_2428 = saturate((pow(_Mask1,(node_9856.r*node_69.rgb + node_9856.g*node_189.rgb + node_9856.b*node_3593.rgb))/(1.0-pow(_Mask2,node_8958.b))));
                float2 node_3031 = (_Offset*(dot(lerp(float3(node_8958.b,node_8958.b,node_8958.b),float3(node_62.b,node_62.b,node_62.b),node_2428),float3(0.3,0.59,0.11)) - 0.5)*mul(tangentTransform, viewDirection).xy + lerp( i.uv0, node_8056, _ProjectionMapping ));
                float2 node_6156 = (mul(node_3031.rg-node_6156_piv,float2x2( node_6156_cos, -node_6156_sin, node_6156_sin, node_6156_cos))+node_6156_piv);
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(node_6156, _MainTex));
                float4 _SecondaryColor_var = tex2D(_SecondaryColor,TRANSFORM_TEX(node_3031.rg, _SecondaryColor));
                float3 node_262 = lerp((_Tint.rgb*_MainTex_var.rgb),(_SecondaryTint.rgb*_SecondaryColor_var.rgb),node_2428);
                float node_9793 = 1.0;
                float4 node_4467 = tex2D(_RMHA,TRANSFORM_TEX(node_6156, _RMHA));
                float4 node_8016 = tex2D(_RMHA2,TRANSFORM_TEX(node_3031.rg, _RMHA2));
                float3 node_9838 = lerp(float3(node_9793,node_9793,node_9793),lerp(float3(node_4467.a,node_4467.a,node_4467.a),float3(node_8016.a,node_8016.a,node_8016.a),node_2428),_AO);
                float3 diffColor = lerp(saturate((_AOColor.rgb*node_262)),node_262,node_9838);
                float specularMonochrome;
                float3 specColor;
                diffColor = DiffuseAndSpecularFromMetallic( diffColor, node_4467.g, specColor, specularMonochrome );
                float roughness = lerp(float3(node_9793,node_9793,node_9793),lerp(float3(node_4467.r,node_4467.r,node_4467.r),float3(node_8016.r,node_8016.r,node_8016.r),node_2428),_Roughness);
                o.Albedo = diffColor + specColor * roughness * roughness * 0.5;
                
                return UnityMetaFragment( o );
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
