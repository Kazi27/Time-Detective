using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FP_Movement : MonoBehaviour
{
    public Rigidbody player;
    public float m_speed, rotatespeed;

    void FixedUpdate() {
        if(Input.GetKey(KeyCode.W)){
            player.velocity = transform.forward * m_speed * Time.deltaTime;
        }
        if(Input.GetKey(KeyCode.S)){
            player.velocity = -transform.forward * m_speed * Time.deltaTime;
        }
    }
    void Update() {
        if(Input.GetKey(KeyCode.A)){
            transform.Rotate(0, -rotatespeed * Time.deltaTime, 0);
        }
        if(Input.GetKey(KeyCode.D)){
            transform.Rotate(0, rotatespeed * Time.deltaTime, 0);
    }
}
}
