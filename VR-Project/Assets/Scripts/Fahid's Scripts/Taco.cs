using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.XR.Interaction.Toolkit;

public class Taco : MonoBehaviour
{
    private XRBaseInteractable interactable;
    private bool captionDisplayed = false;

    [System.Obsolete]
    private void Start()
    {
        interactable = gameObject.GetComponent<XRBaseInteractable>();
        if (interactable == null)
        {
            interactable = gameObject.AddComponent<XRBaseInteractable>();
        }
        interactable.onSelectEntered.AddListener(OnSelectEntered);
    }

    private void OnSelectEntered(XRBaseInteractor interactor)
    {
        DisplayCaption();
    }

    private void DisplayCaption()
    {
        if (!captionDisplayed)
        {
            Debug.Log("This is the hieroglyphic of the bread bun that represents the letter T");

            captionDisplayed = true;
        }
    }
}
