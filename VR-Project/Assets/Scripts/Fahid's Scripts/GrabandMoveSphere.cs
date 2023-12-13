using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GrabandMoveSphere : MonoBehaviour
{
    private bool isGrabbed = false;
    private Vector3 initialOffset;
    private Transform handTransform;
    void Update()
    {
        if (isGrabbed)
        {
            // Get the updated position of the hand controller
            Vector3 handTransform = OVRInput.GetLocalControllerPosition(OVRInput.Controller.Hands);
            // Update the sphere's position based on the hand controller movement
            Quaternion handrotation = OVRInput.GetLocalControllerRotation(OVRInput.Controller.Hands);
            // Move the sphere in a circular path (you can adjust the radius and speed)
            float angle = Time.time; // You can use a different variable for a smoother rotation
            float radius = 2f;
            float x = Mathf.Cos(angle) * radius;
            float y = Mathf.Sin(angle) * radius;
            transform.position += new Vector3(x, y, 0);
        }
    }
    void OnTriggerEnter(Collider other)
    {
        // Check for hand controller trigger input to initiate grabbing
        if (OVRInput.Get(OVRInput.Button.PrimaryHandTrigger))
        {
            // Set the flag to indicate the sphere is grabbed
            isGrabbed = true; // Calculate the initial offset between the sphere and the hand controller position
            initialOffset = transform.position - handTransform.position;
        }
    }
    void OnTriggerExit(Collider other)
    {
        // Reset the grab flag when the hand controller trigger is released
        isGrabbed = false;
    }
}
