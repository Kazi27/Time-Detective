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
            // Optionally, you can log a message or take some action for incorrect objects
            Debug.Log("Incorrect object collided with the collider!");
        }
    }

    public bool IsTriggered()
    {
        return isTriggered;
    }
}