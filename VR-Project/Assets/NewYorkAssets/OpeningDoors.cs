using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class OpeningDoors : MonoBehaviour
{
    private Animator animator;

    private GameObject Light1;
    private GameObject Light2;
    private GameObject Light3;
    private GameObject Light4;

    private void Start()
    {
        // Get the Animator component attached to the GameObject
        animator = GetComponent<Animator>();

        Light1 = GameObject.Find("Light1 (1)");
        Light2 = GameObject.Find("Light2 (1)");
        Light3 = GameObject.Find("Light3 (1)");
        Light4 = GameObject.Find("Light4 (1)");

        // Check if lights are assigned
        if (Light1 == null || Light2 == null || Light3 == null || Light4 == null)
        {
            Debug.LogError("One or more lights not assigned!");
        }
    }

    private void Update()
    {
        // Example: Play the animation when a key is pressed (you can replace this with your trigger condition)
        if (Light1.activeSelf && Light2.activeSelf && Light3.activeSelf && Light4.activeSelf)
        {
            // Trigger the animation by setting a parameter
            animator.SetTrigger("PlayAnimation");
        }
    }
}
