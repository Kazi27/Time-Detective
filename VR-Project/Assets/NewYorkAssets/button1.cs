using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.XR.Interaction.Toolkit;

public class light_puzzle : MonoBehaviour
{
    public Light light2;
    public Light light3;
  

    public bool isOn = false;

    // Start is called before the first frame update
    void Start()
    {
        light2.enabled = isOn;
        light3.enabled = isOn;
    }

    private void OnTriggerEnter(Collider other)
    {
        // Check if the collider is the VR button's collider
        if (other.CompareTag("Button1"))
        {
            ToggleLight();
        }
    }

    public void ToggleLight()
    {
        isOn = !isOn;
        light2.enabled = isOn;
        light3.enabled = isOn;
    }
}


