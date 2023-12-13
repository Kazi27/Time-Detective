using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ColliderScript : MonoBehaviour
{
    public string requiredObjectName = "";

    private bool isTriggered = false;

    void OnTriggerEnter(Collider other)
    {
        // Check if the collider is triggered by the correct object
        if (other.name.Equals(requiredObjectName))
        {
            isTriggered = true;
        }
        else
        {
            //Logging for incorrect object error. Could also be used as a method to trigger something.
            Debug.Log("Incorrect object collided with the collider!");
        }
    }

    public bool IsTriggered()
    {
        return isTriggered;
    }
}