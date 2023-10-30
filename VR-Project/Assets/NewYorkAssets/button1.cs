using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.XR.Interaction.Toolkit;

public class light_puzzle : MonoBehaviour
{
    public GameObject light2;
    public GameObject light3;
    //public GameObject light3;
    //public GameObject light4;

    //public bool isOn = false;

    // Start is called before the first frame update
    void Start()
    {
        light2 = GameObject.Find("Light2");
        light3 = GameObject.Find("Light3");
        //light3 = GameObject.Find("Point Light 3");
        //light4 = GameObject.Find("Point Light 4");

        //light1.SetActive(false);
        //light2.SetActive(false);
        //light3.SetActive(false);
        //light4.SetActive(false);
    }

    //Update is called once per frame
    void Update()
    {
        // Check for button press in your VR controller
        // For example, using the Input.GetButtonDown method
        if (Input.GetButtonDown("Push Button 1"))
        {
            Toggle2();
            Toggle3();
        }
    }

    public void Toggle2()
    {
        light2.SetActive(!light2.activeSelf);
    }
    public void Toggle3()
    {
        light3.SetActive(!light3.activeSelf);
    }
    //public void Toggle3()
    //{
    //    light3.SetActive(!light3.activeSelf);
    //}
    //public void Toggle4()
    //{
    //    light4.SetActive(!light4.activeSelf);
    //}
}


