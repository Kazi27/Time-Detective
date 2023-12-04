using System.Collections;
using System.Collections.Generic;
using System.Runtime.CompilerServices;
using Unity.VisualScripting;
using UnityEngine;
using UnityEngine.XR.Interaction.Toolkit;

public class FalconCubeInteraction: MonoBehaviour
{
    public GameObject popupCanvasPrefab;

    private GameObject popupCanvasInstance;

    private void Start()
    {
        popupCanvasInstance = Instantiate(popupCanvasPrefab, Vector3.zero, Quaternion.identity);

        popupCanvasInstance.SetActive(false);
    }

    private void OnEnable()
    {
        GetComponent<XRGrabInteractable>().selectEntered.AddListener(ShowPopup);

        GetComponent<XRGrabInteractable>().selectExited.AddListener(HidePopup);
    }

    private void OnDisable()
    {
        GetComponent<XRGrabInteractable>().selectEntered.RemoveListener(ShowPopup);

        GetComponent<XRGrabInteractable>().selectExited.RemoveListener(HidePopup);
    }

    private void ShowPopup(SelectEnterEventArgs args)
    {
        Vector3 offset = new Vector3(0f, 0.5f, 0f);

        popupCanvasInstance.transform.position = transform.position + offset;

        popupCanvasInstance.SetActive(true);
    }

    private void HidePopup(SelectExitEventArgs args)
    {
        popupCanvasInstance.SetActive(false);
    }
}


