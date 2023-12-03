using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class OpeningDoors : MonoBehaviour
{
    private Animator animator;

    // Expose lights as public variables
    public GameObject light1;
    public GameObject light2;
    public GameObject light3;
    public GameObject light4;

    private void Start()
    {
        // Get the Animator component attached to the GameObject
        animator = GetComponent<Animator>();

        // Check if lights are assigned
        if (light1 == null || light2 == null || light3 == null || light4 == null)
        {
            Debug.LogError("One or more lights not assigned!");
        }
    }

    private void Update()
    {
        // Example: Play the animation when a key is pressed (you can replace this with your trigger condition)
        if (light1.activeSelf && light2.activeSelf && light3.activeSelf && light4.activeSelf)
        {
            // Trigger the animation by setting a parameter
            animator.SetTrigger("PlayAnimation");
        }
    }
}
