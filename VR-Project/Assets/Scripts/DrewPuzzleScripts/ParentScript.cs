using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ParentScript : MonoBehaviour
{
    public string colliderTag = "Puzzle Cube"; //default set to "Puzzle Cube" but can be changed in environment.
    
    public Collider coll; //collider preventing drawer from opening
    public GameObject objectToOpen; //drawer

    private ColliderScript[] colliders; //array of collider game objects.

    void Awake()
    {
        // Initialize colliders array with references to specific child scripts
        colliders = GetComponentsInChildren<ColliderScript>();
    }

    void Update()
    {
        // Check if all correct colliders are triggered
        if (CheckAllColliders())
        {
            // A small bridge pattern to do something when all correct colliders are triggered
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
            
            Debug.Log("All specified colliders triggered!");

            // Activate the drawer for clue reveal.
            OpenDrawer();
        }

        void OpenDrawer()
        {
            coll.enabled = false;  //remove block so drawer can slide out
            objectToOpen.transform.position += new Vector3(0, 0, -0.2f); //move drawer out from current position
        }

    }
