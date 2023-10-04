using System.Collections.Generic;
using UnityEditor.Rendering;
using UnityEngine;
using System;
using UnityEditor;
using UnityEngine.Rendering;

namespace HdrpTOUrpDowngrader
{
    class HdrpToUrpDowngrader : MaterialUpgrader
    {
        public HdrpToUrpDowngrader(string sourceShaderName, string destShaderName, MaterialFinalizer finalizer = null)
        {
            if (sourceShaderName == null) throw new ArgumentNullException("oldShaderName");

            RenameShader(sourceShaderName, destShaderName, finalizer);
            RenameTexture("_BaseColorMap", "_BaseMap");
            RenameTexture("_NormalMap", "_BumpMap");
            RenameTexture("_MaskMap", "_MetallicGlossMap");
            RenameFloat("_NormalScale", "_BumpScale");
            RenameTexture("_EmissiveColorMap", "_EmissionMap");
            RenameColor("_EmissiveColor", "_EmissionColor");
            RenameFloat("_AlphaCutoff", "_Cutoff");
        }

        public static void ConvertHDRPtoURPMaterialKeywords(Material material)
        {
            if (material == null)
                throw new ArgumentNullException("material");

            if (material.GetTexture("_MetallicGlossMap"))
                material.SetFloat("_Smoothness", 1);

            material.SetFloat("_WorkflowMode", 1.0f);
            CoreUtils.SetKeyword(material, "_OCCLUSIONMAP", material.GetTexture("_OcclusionMap"));
            CoreUtils.SetKeyword(material, "_METALLICSPECGLOSSMAP", material.GetTexture("_MetallicGlossMap"));
            DowngradeSurfaceTypeAndBlendModeNow(material);
            BaseShaderGUI.SetupMaterialBlendMode(material);
        }

        static void DowngradeSurfaceTypeAndBlendModeNow(Material material)
        {
            if (material.HasProperty("_SurfaceType"))
                material.SetInt("_Surface", (int)material.GetFloat("_SurfaceType"));
            if (material.HasProperty("_BlendMode"))
                material.SetInt("_Blend", (int)material.GetFloat("_BlendMode"));
        }
    }

    class DowngradeHdrpTOUrpMats
    {
        static List<MaterialUpgrader> GetHDtoURPUpgraders()
        {
            var upgraders = new List<MaterialUpgrader>();
            upgraders.Add(new HdrpToUrpDowngrader("HDRP/Lit", "Universal Render Pipeline/Lit", HdrpToUrpDowngrader.ConvertHDRPtoURPMaterialKeywords));
            return upgraders;
        }

        [MenuItem("Edit/Render Pipeline/Downgrade All HDRP Materials to URP Materials", priority = CoreUtils.editMenuPriority2)]
        internal static void UpgradeMaterialsProject()
        {
            MaterialUpgrader.UpgradeProjectFolder(GetHDtoURPUpgraders(), "Downgrading Now. Please Wait...");
        }

        [MenuItem("Edit/Render Pipeline/Downgrade Selected HDRP Materials to URP Materials", priority = CoreUtils.editMenuPriority2)]
        internal static void UpgradeMaterialsSelection()
        {
            MaterialUpgrader.UpgradeSelection(GetHDtoURPUpgraders(), "Downgrading Now. Please Wait...");
        }
    }
}
