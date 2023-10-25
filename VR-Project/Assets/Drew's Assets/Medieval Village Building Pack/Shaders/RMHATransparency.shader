// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:3,spmd:1,trmd:0,grmd:1,uamb:True,mssp:True,bkdf:True,hqlp:False,rprd:True,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:2865,x:32719,y:32712,varname:node_2865,prsc:2|diff-6050-OUT,spec-5399-G,gloss-7764-OUT,normal-3323-RGB,alpha-2213-A;n:type:ShaderForge.SFN_Multiply,id:2458,x:31722,y:32571,varname:node_2458,prsc:2|A-2213-RGB,B-3716-RGB;n:type:ShaderForge.SFN_Color,id:3716,x:31529,y:32664,ptovrint:False,ptlb:Color,ptin:_Color,varname:_Color,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5019608,c2:0.5019608,c3:0.5019608,c4:1;n:type:ShaderForge.SFN_Tex2d,id:2213,x:31529,y:32479,ptovrint:True,ptlb:Base Color,ptin:_MainTex,varname:_MainTex,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-9163-OUT;n:type:ShaderForge.SFN_Tex2d,id:3323,x:31529,y:32855,ptovrint:True,ptlb:Normal Map,ptin:_BumpMap,varname:_BumpMap,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:3,isnm:True|UVIN-9163-OUT;n:type:ShaderForge.SFN_Tex2d,id:5399,x:31529,y:33278,varname:node_4467,prsc:2,ntxv:0,isnm:False|UVIN-9163-OUT,TEX-5487-TEX;n:type:ShaderForge.SFN_Slider,id:242,x:31372,y:33458,ptovrint:False,ptlb:AO,ptin:_AO,varname:node_5421,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Lerp,id:5841,x:31888,y:33416,varname:node_5841,prsc:2|A-8452-OUT,B-5399-A,T-242-OUT;n:type:ShaderForge.SFN_Vector1,id:8452,x:31529,y:33543,varname:node_8452,prsc:2,v1:1;n:type:ShaderForge.SFN_Slider,id:3196,x:31372,y:33186,ptovrint:False,ptlb:Roughness,ptin:_Roughness,varname:node_4997,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Lerp,id:7764,x:31745,y:33147,varname:node_7764,prsc:2|A-8452-OUT,B-5399-R,T-3196-OUT;n:type:ShaderForge.SFN_Tex2dAsset,id:5487,x:31006,y:33257,ptovrint:False,ptlb:RMHA,ptin:_RMHA,varname:node_1674,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Blend,id:3157,x:32043,y:32552,varname:node_3157,prsc:2,blmd:1,clmp:True|SRC-8373-RGB,DST-2458-OUT;n:type:ShaderForge.SFN_Color,id:8373,x:31722,y:32367,ptovrint:False,ptlb:AO Color,ptin:_AOColor,varname:node_5892,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Lerp,id:6050,x:32258,y:32623,varname:node_6050,prsc:2|A-3157-OUT,B-2458-OUT,T-5841-OUT;n:type:ShaderForge.SFN_Code,id:8680,x:29775,y:32395,varname:node_8680,prsc:2,code:IAB2AGkAZQB3AEQAaQByACAAPQAgAG4AbwByAG0AYQBsAGkAegBlACgAdgBpAGUAdwBEAGkAcgApADsACgAKACAAZgBsAG8AYQB0ADMAIABwACAAPQAgAGYAbABvAGEAdAAzACgAVQBWACoAVABpAGwAaQBuAGcALAAgADAAKQA7AAoAIABmAGwAbwBhAHQAMwAgAG4AZQB3AFYAaQBlAHcAIAA9ACAAbgBvAHIAbQBhAGwAaQB6AGUAKAB2AGkAZQB3AEQAaQByACAAKgAgAC0AMQApADsACgAgAG4AZQB3AFYAaQBlAHcALgB6ACAAIAAgACAAIAAgAD0AIABhAGIAcwAoAG4AZQB3AFYAaQBlAHcALgB6ACkAOwAKAAoAIABmAGwAbwBhAHQAIABkAGUAcAB0AGgAQgBpAGEAcwAgAD0AIAAxAC4AMAAgAC0AIABuAGUAdwBWAGkAZQB3AC4AegA7AAoAIABkAGUAcAB0AGgAQgBpAGEAcwAgACoAPQAgAGQAZQBwAHQAaABCAGkAYQBzADsACgAgAGQAZQBwAHQAaABCAGkAYQBzACAAKgA9ACAAZABlAHAAdABoAEIAaQBhAHMAOwAKACAAZABlAHAAdABoAEIAaQBhAHMAIAA9ACAAMQAuADAAIAAtACAAZABlAHAAdABoAEIAaQBhAHMAIAAqACAAZABlAHAAdABoAEIAaQBhAHMAOwAKAAoAIABuAGUAdwBWAGkAZQB3AC4AeAB5ACAAKgA9ACAAZABlAHAAdABoAEIAaQBhAHMAOwAKACAAbgBlAHcAVgBpAGUAdwAuAHgAeQAgACoAPQAgAEQAZQBwAHQAaAA7AAoACgAgAGMAbwBuAHMAdAAgAGkAbgB0ACAAYgBpAG4AYQByAHkAUwBlAGEAcgBjAGgAUwB0AGUAcABzACAAPQAgADEAMAA7AAoACgAgAG4AZQB3AFYAaQBlAHcAIAAvAD0AIABuAGUAdwBWAGkAZQB3AC4AegAgACoAIABsAGkAbgBlAGEAcgBTAGUAYQByAGMAaABTAHQAZQBwAHMAOwAKAAoAIAAvAC8AcAByAG8AZAB1AGMAZQBzACAAZABlAHAAdABoAAoAIABpAG4AdAAgAGkAOwAKACAAZgBvAHIAKAAgAGkAPQAwADsAIABpADwAbABpAG4AZQBhAHIAUwBlAGEAcgBjAGgAUwB0AGUAcABzADsAIABpACsAKwApAHsACgAgACAAZgBsAG8AYQB0ACAAdABlAHgAIAA9ACAAdABlAHgAMgBEACgASABlAGkAZwBoAHQATQBhAHAALAAgAHAALgB4AHkAKQAuAHIAOwAKACAAIABpAGYAIAAoAHAALgB6ADwAdABlAHgAKQAgAHAAKwA9AG4AZQB3AFYAaQBlAHcAOwAKACAAfQAKAAoACgAgAGYAbwByACgAIABpAD0AMAA7ACAAaQA8AGIAaQBuAGEAcgB5AFMAZQBhAHIAYwBoAFMAdABlAHAAcwA7ACAAaQArACsAIAApAHsACgAgACAAbgBlAHcAVgBpAGUAdwAgACoAPQAgADAALgA1ADsACgAgACAAZgBsAG8AYQB0ACAAdABlAHgAIAA9ACAAdABlAHgAMgBEACgASABlAGkAZwBoAHQATQBhAHAALAAgAHAALgB4AHkAKQAuAHIAOwAKACAAIABpAGYAKABwAC4AegAgADwAIAB0AGUAeAApACAAcAArAD0AIABuAGUAdwBWAGkAZQB3ADsACgAgACAAZQBsAHMAZQAgAHAAIAAtAD0AIABuAGUAdwBWAGkAZQB3ADsACgAgAH0ACgAKACAALwAvAHAALgB6ACAAcgBlAGEAcwBzAGkAZwBuAGUAZAAgAHQAbwAgAGEAbABwAGgAYQAKACAAcAAuAHoAIAA9ACAAMQA7AAoAIABpAGYAKABwAC4AeAAgADwAIAAwACkAcAAuAHoAIAA9ACAAMAA7AAoAIABpAGYAKABwAC4AeQAgADwAIAAwACkAcAAuAHoAIAA9ACAAMAA7AAoAIABpAGYAKABwAC4AeAAgAD4AIABUAGkAbABpAG4AZwApAHAALgB6AD0AMAA7AAoAIABpAGYAKABwAC4AeQAgAD4AIABUAGkAbABpAG4AZwApAHAALgB6AD0AMAA7AAoAIAByAGUAdAB1AHIAbgAgAHAAOwA=,output:2,fname:Relief,width:504,height:587,input:2,input:12,input:0,input:0,input:1,input:0,input_1_label:viewDir,input_2_label:HeightMap,input_3_label:Depth,input_4_label:linearSearchSteps,input_5_label:UV,input_6_label:Tiling|A-7223-XYZ,B-2186-TEX,C-3347-OUT,D-6576-OUT,E-6364-UVOUT,F-570-OUT;n:type:ShaderForge.SFN_ViewVector,id:9424,x:29242,y:32116,varname:node_9424,prsc:2;n:type:ShaderForge.SFN_Tex2dAsset,id:2186,x:29398,y:32321,ptovrint:False,ptlb:Height Map,ptin:_HeightMap,varname:_HeightMap,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_ValueProperty,id:6576,x:29398,y:32582,ptovrint:False,ptlb:Relief Quality,ptin:_ReliefQuality,varname:_ReliefQuality,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:16;n:type:ShaderForge.SFN_ComponentMask,id:3652,x:30491,y:32579,varname:node_3652,prsc:2,cc1:0,cc2:1,cc3:2,cc4:-1|IN-8680-OUT;n:type:ShaderForge.SFN_Transform,id:7223,x:29398,y:32116,varname:node_7223,prsc:2,tffrom:0,tfto:2|IN-9424-OUT;n:type:ShaderForge.SFN_ValueProperty,id:570,x:29398,y:32806,ptovrint:False,ptlb:UV Tiling,ptin:_UVTiling,varname:_UVTiling,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Slider,id:3347,x:29241,y:32498,ptovrint:False,ptlb:Relief Depth,ptin:_ReliefDepth,varname:_ReliefDepth,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-1,cur:0,max:1;n:type:ShaderForge.SFN_TexCoord,id:6364,x:29398,y:32644,varname:node_6364,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Append,id:9163,x:30837,y:32704,varname:node_9163,prsc:2|A-3652-R,B-3652-G;proporder:3716-2213-242-5487-8373-3196-2186-6576-570-3347-3323;pass:END;sub:END;*/

Shader "Mikes Emporium/RMHATransparency" {
    Properties {
        _Color ("Color", Color) = (0.5019608,0.5019608,0.5019608,1)
        _MainTex ("Base Color", 2D) = "white" {}
        _AO ("AO", Range(0, 1)) = 0
        _RMHA ("RMHA", 2D) = "white" {}
        _AOColor ("AO Color", Color) = (0.5,0.5,0.5,1)
        _Roughness ("Roughness", Range(0, 1)) = 0
        _HeightMap ("Height Map", 2D) = "white" {}
        _ReliefQuality ("Relief Quality", Float ) = 16
        _UVTiling ("UV Tiling", Float ) = 1
        _ReliefDepth ("Relief Depth", Range(-1, 1)) = 0
        _BumpMap ("Normal Map", 2D) = "bump" {}
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend SrcAlpha OneMinusSrcAlpha
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdbase
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _Color;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform sampler2D _BumpMap; uniform float4 _BumpMap_ST;
            uniform float _AO;
            uniform float _Roughness;
            uniform sampler2D _RMHA; uniform float4 _RMHA_ST;
            uniform float4 _AOColor;
            float3 Relief( float3 viewDir , sampler2D HeightMap , float Depth , float linearSearchSteps , float2 UV , float Tiling ){
             viewDir = normalize(viewDir);
            
             float3 p = float3(UV*Tiling, 0);
             float3 newView = normalize(viewDir * -1);
             newView.z      = abs(newView.z);
            
             float depthBias = 1.0 - newView.z;
             depthBias *= depthBias;
             depthBias *= depthBias;
             depthBias = 1.0 - depthBias * depthBias;
            
             newView.xy *= depthBias;
             newView.xy *= Depth;
            
             const int binarySearchSteps = 10;
            
             newView /= newView.z * linearSearchSteps;
            
             //produces depth
             int i;
             for( i=0; i<linearSearchSteps; i++){
              float tex = tex2D(HeightMap, p.xy).r;
              if (p.z<tex) p+=newView;
             }
            
            
             for( i=0; i<binarySearchSteps; i++ ){
              newView *= 0.5;
              float tex = tex2D(HeightMap, p.xy).r;
              if(p.z < tex) p+= newView;
              else p -= newView;
             }
            
             //p.z reassigned to alpha
             p.z = 1;
             if(p.x < 0)p.z = 0;
             if(p.y < 0)p.z = 0;
             if(p.x > Tiling)p.z=0;
             if(p.y > Tiling)p.z=0;
             return p;
            }
            
            uniform sampler2D _HeightMap; uniform float4 _HeightMap_ST;
            uniform float _ReliefQuality;
            uniform float _UVTiling;
            uniform float _ReliefDepth;
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
                UNITY_FOG_COORDS(7)
                #if defined(LIGHTMAP_ON) || defined(UNITY_SHOULD_SAMPLE_SH)
                    float4 ambientOrLightmapUV : TEXCOORD8;
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
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 node_3652 = Relief( mul( tangentTransform, viewDirection ).xyz.rgb , _HeightMap , _ReliefDepth , _ReliefQuality , i.uv0 , _UVTiling ).rgb;
                float2 node_9163 = float2(node_3652.r,node_3652.g);
                float3 _BumpMap_var = UnpackNormal(tex2D(_BumpMap,TRANSFORM_TEX(node_9163, _BumpMap)));
                float3 normalLocal = _BumpMap_var.rgb;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = 1;
                float3 attenColor = attenuation * _LightColor0.xyz;
                float Pi = 3.141592654;
                float InvPi = 0.31830988618;
///////// Gloss:
                float node_8452 = 1.0;
                float4 node_4467 = tex2D(_RMHA,TRANSFORM_TEX(node_9163, _RMHA));
                float gloss = 1.0 - lerp(node_8452,node_4467.r,_Roughness); // Convert roughness to gloss
                float perceptualRoughness = lerp(node_8452,node_4467.r,_Roughness);
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
                float LdotH = saturate(dot(lightDirection, halfDirection));
                float3 specularColor = node_4467.g;
                float specularMonochrome;
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(node_9163, _MainTex));
                float3 node_2458 = (_MainTex_var.rgb*_Color.rgb);
                float3 diffuseColor = lerp(saturate((_AOColor.rgb*node_2458)),node_2458,lerp(node_8452,node_4467.a,_AO)); // Need this for specular when using metallic
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
                float3 indirectSpecular = (gi.indirect.specular);
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
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
                fixed4 finalRGBA = fixed4(finalColor,_MainTex_var.a);
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
            ZWrite Off
            
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
            #pragma multi_compile_fwdadd
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _Color;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform sampler2D _BumpMap; uniform float4 _BumpMap_ST;
            uniform float _AO;
            uniform float _Roughness;
            uniform sampler2D _RMHA; uniform float4 _RMHA_ST;
            uniform float4 _AOColor;
            float3 Relief( float3 viewDir , sampler2D HeightMap , float Depth , float linearSearchSteps , float2 UV , float Tiling ){
             viewDir = normalize(viewDir);
            
             float3 p = float3(UV*Tiling, 0);
             float3 newView = normalize(viewDir * -1);
             newView.z      = abs(newView.z);
            
             float depthBias = 1.0 - newView.z;
             depthBias *= depthBias;
             depthBias *= depthBias;
             depthBias = 1.0 - depthBias * depthBias;
            
             newView.xy *= depthBias;
             newView.xy *= Depth;
            
             const int binarySearchSteps = 10;
            
             newView /= newView.z * linearSearchSteps;
            
             //produces depth
             int i;
             for( i=0; i<linearSearchSteps; i++){
              float tex = tex2D(HeightMap, p.xy).r;
              if (p.z<tex) p+=newView;
             }
            
            
             for( i=0; i<binarySearchSteps; i++ ){
              newView *= 0.5;
              float tex = tex2D(HeightMap, p.xy).r;
              if(p.z < tex) p+= newView;
              else p -= newView;
             }
            
             //p.z reassigned to alpha
             p.z = 1;
             if(p.x < 0)p.z = 0;
             if(p.y < 0)p.z = 0;
             if(p.x > Tiling)p.z=0;
             if(p.y > Tiling)p.z=0;
             return p;
            }
            
            uniform sampler2D _HeightMap; uniform float4 _HeightMap_ST;
            uniform float _ReliefQuality;
            uniform float _UVTiling;
            uniform float _ReliefDepth;
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
                float3 node_3652 = Relief( mul( tangentTransform, viewDirection ).xyz.rgb , _HeightMap , _ReliefDepth , _ReliefQuality , i.uv0 , _UVTiling ).rgb;
                float2 node_9163 = float2(node_3652.r,node_3652.g);
                float3 _BumpMap_var = UnpackNormal(tex2D(_BumpMap,TRANSFORM_TEX(node_9163, _BumpMap)));
                float3 normalLocal = _BumpMap_var.rgb;
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
                float node_8452 = 1.0;
                float4 node_4467 = tex2D(_RMHA,TRANSFORM_TEX(node_9163, _RMHA));
                float gloss = 1.0 - lerp(node_8452,node_4467.r,_Roughness); // Convert roughness to gloss
                float perceptualRoughness = lerp(node_8452,node_4467.r,_Roughness);
                float roughness = perceptualRoughness * perceptualRoughness;
                float specPow = exp2( gloss * 10.0 + 1.0 );
////// Specular:
                float NdotL = saturate(dot( normalDirection, lightDirection ));
                float LdotH = saturate(dot(lightDirection, halfDirection));
                float3 specularColor = node_4467.g;
                float specularMonochrome;
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(node_9163, _MainTex));
                float3 node_2458 = (_MainTex_var.rgb*_Color.rgb);
                float3 diffuseColor = lerp(saturate((_AOColor.rgb*node_2458)),node_2458,lerp(node_8452,node_4467.a,_AO)); // Need this for specular when using metallic
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
                fixed4 finalRGBA = fixed4(finalColor * _MainTex_var.a,0);
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
            uniform float4 _Color;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float _AO;
            uniform float _Roughness;
            uniform sampler2D _RMHA; uniform float4 _RMHA_ST;
            uniform float4 _AOColor;
            float3 Relief( float3 viewDir , sampler2D HeightMap , float Depth , float linearSearchSteps , float2 UV , float Tiling ){
             viewDir = normalize(viewDir);
            
             float3 p = float3(UV*Tiling, 0);
             float3 newView = normalize(viewDir * -1);
             newView.z      = abs(newView.z);
            
             float depthBias = 1.0 - newView.z;
             depthBias *= depthBias;
             depthBias *= depthBias;
             depthBias = 1.0 - depthBias * depthBias;
            
             newView.xy *= depthBias;
             newView.xy *= Depth;
            
             const int binarySearchSteps = 10;
            
             newView /= newView.z * linearSearchSteps;
            
             //produces depth
             int i;
             for( i=0; i<linearSearchSteps; i++){
              float tex = tex2D(HeightMap, p.xy).r;
              if (p.z<tex) p+=newView;
             }
            
            
             for( i=0; i<binarySearchSteps; i++ ){
              newView *= 0.5;
              float tex = tex2D(HeightMap, p.xy).r;
              if(p.z < tex) p+= newView;
              else p -= newView;
             }
            
             //p.z reassigned to alpha
             p.z = 1;
             if(p.x < 0)p.z = 0;
             if(p.y < 0)p.z = 0;
             if(p.x > Tiling)p.z=0;
             if(p.y > Tiling)p.z=0;
             return p;
            }
            
            uniform sampler2D _HeightMap; uniform float4 _HeightMap_ST;
            uniform float _ReliefQuality;
            uniform float _UVTiling;
            uniform float _ReliefDepth;
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
                
                float3 node_3652 = Relief( mul( tangentTransform, viewDirection ).xyz.rgb , _HeightMap , _ReliefDepth , _ReliefQuality , i.uv0 , _UVTiling ).rgb;
                float2 node_9163 = float2(node_3652.r,node_3652.g);
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(node_9163, _MainTex));
                float3 node_2458 = (_MainTex_var.rgb*_Color.rgb);
                float node_8452 = 1.0;
                float4 node_4467 = tex2D(_RMHA,TRANSFORM_TEX(node_9163, _RMHA));
                float3 diffColor = lerp(saturate((_AOColor.rgb*node_2458)),node_2458,lerp(node_8452,node_4467.a,_AO));
                float specularMonochrome;
                float3 specColor;
                diffColor = DiffuseAndSpecularFromMetallic( diffColor, node_4467.g, specColor, specularMonochrome );
                float roughness = lerp(node_8452,node_4467.r,_Roughness);
                o.Albedo = diffColor + specColor * roughness * roughness * 0.5;
                
                return UnityMetaFragment( o );
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
