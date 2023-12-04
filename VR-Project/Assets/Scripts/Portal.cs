using System.Collections;
 using System.Collections.Generic;
 using UnityEngine;
 using UnityEngine.SceneManagement;

 public class nextscene : MonoBehaviour
 {
     public string sceneName;

    void OnTriggerEnter(Collider other){
        if(other.CompareTag("Player")){
            SceneManager.LoadScene(sceneName);
        }
    }
 }