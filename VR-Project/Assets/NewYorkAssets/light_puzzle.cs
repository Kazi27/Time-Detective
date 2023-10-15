using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.XR.Interaction.Toolkit;

public class light_puzzle : MonoBehaviour
{
    public GameObject light1;
    public GameObject light2;
    public GameObject light3;
    public GameObject light4;

    public bool isOn = false;

    // Start is called before the first frame update
    void Start()
    {
        light1 = GameObject.Find("Point Light 1");
        light2 = GameObject.Find("Point Light 2");
        light3 = GameObject.Find("Point Light 3");
        light4 = GameObject.Find("Point Light 4");

        light1.SetActive(false);
        light2.SetActive(false);
        light3.SetActive(false);
        light4.SetActive(false);
    }

    // Update is called once per frame
    //void Update()
    //{  
    //}

    public void Toggle1()
    {
        light1.SetActive(!light1.activeSelf);
    }
    public void Toggle2()
    {
        light2.SetActive(!light2.activeSelf);
    }
    public void Toggle3()
    {
        light3.SetActive(!light3.activeSelf);
    }
    public void Toggle4()
    {
        light4.SetActive(!light4.activeSelf);
    }
}


