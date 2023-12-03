using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MarkSystem : MonoBehaviour
{
    bool player_detection = false;
    
    // Update is called once per frame
    void Update()
    {
        if (player_detection && Input.GetKeyDown(KeyCode.X)){
            print("Dialogue Started!");
        }
    }

    private void OnTriggerEnter(Collider other)
    {
        if(other.name == "PlayerBody")
        {
            player_detection = true;
        }
    }
    
    private void OnTriggerExit(Collider other)
    {
        player_detection = false;
    }

}
