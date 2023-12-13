using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.XR;
using Oculus;

public class ShowTravDev : MonoBehaviour
{

    public OVRInput.Button activationButton = OVRInput.Button.One; // Change as needed (one = A, two = B)
    public GameObject ObjectToAppear;

    void Update()
    {
        OVRInput.Update();
        // Check if button is pressed
        if (OVRInput.Get(activationButton))
        {
            //toggle the UI Keyboard (or whatever else you need to toggle)
            ObjectToAppear.SetActive(!ObjectToAppear.activeSelf);
        }
    }
}
