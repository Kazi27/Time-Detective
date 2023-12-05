using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ParentScript : MonoBehaviour
{
    public string colliderTag = "Puzzle Cube";
    public GameObject objectToAppear;

    private ColliderScript[] colliders;

    void Awake()
    {
        // Initialize colliders array with references to specific child scripts
        colliders = GetComponentsInChildren<ColliderScript>();

        //Deactivate the portal at the start
        DeactivatePortal();
    }

    void Update()
    {
        // Check if all correct colliders are triggered
        if (CheckAllColliders())
        {
            // Do something when all correct colliders are triggered
            DoSomething();
        }
    }

    bool CheckAllColliders()
    {
        foreach (ColliderScript collider in colliders)
        {
            // Check if the collider has the specified tag and is triggered by the correct object
            if (collider.CompareTag(colliderTag) && !collider.IsTriggered())
            {
                return false; // Return false if any correct collider is not triggered
            }
        }
        return true; // All correct colliders are triggered
    }

    void DoSomething()
        {
            // Your action when all correct colliders are triggered
            Debug.Log("All specified colliders triggered!");

            // Activate the portal
            ActivatePortal();
        }

        void ActivatePortal()
        {
            if (objectToAppear != null)
            {
                objectToAppear.SetActive(true); // Activate the object
            }
        }

        void DeactivatePortal()
        {
            if (objectToAppear != null)
            {
                objectToAppear.SetActive(false); // Deactivate the object
            }
        }
    }
