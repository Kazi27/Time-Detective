using UnityEngine;
using UnityEngine.XR.Interaction.Toolkit;
public class DescriptionOnHover : MonoBehaviour
{
    private XRGrabInteractable grabInteractable; 
    private bool isHovering = false;

    [System.Obsolete]
    void Start() { 
        grabInteractable = GetComponent<XRGrabInteractable>(); 
        if (grabInteractable != null) { 
            grabInteractable.onHoverEntered.AddListener(OnHoverEnter); 
            grabInteractable.onHoverExited.AddListener(OnHoverExit); 
        } 
        else { 
            Debug.LogError("XRGrabInteractable component not found on the GameObject."); } }
    private void OnHoverEnter(XRBaseInteractor interactor) { 
        isHovering = true; 
        DisplayDescription("The thief is a menace! He loves cats!"); }
    private void OnHoverExit(XRBaseInteractor interactor) { 
        isHovering = false; 
        HideDescription(); }
    private void DisplayDescription(string description)
    { 
        Debug.Log(description); 
    } 
    private void HideDescription() { 
        Debug.Log("Description hidden!"); 
    } 
    // Optional: You can update the description continuously if needed
    void Update() { 
        if (isHovering) { 
            // Implement continuous update logic for the description if needed
           } 
    }
}
