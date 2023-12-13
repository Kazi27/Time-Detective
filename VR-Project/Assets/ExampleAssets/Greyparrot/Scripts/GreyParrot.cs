using UnityEngine;
using System.Collections;

public class GreyParrot : MonoBehaviour {
    Animator parrot;
    IEnumerator coroutine;
	// Use this for initialization
	void Start () {
        parrot = GetComponent<Animator>();
	}
	
	// Update is called once per frame
	void Update () {
        if (Input.GetKey(KeyCode.S))
        {
            parrot.SetBool("idle", true);
            parrot.SetBool("fly", false);
            parrot.SetBool("takeoff", false);
            parrot.SetBool("landing", false);
            parrot.SetBool("walk", false);
            parrot.SetBool("eat", false);
        }
        if (Input.GetKey(KeyCode.Space))
        {
            parrot.SetBool("takeoff", true);
            parrot.SetBool("idle", false);
            StartCoroutine("fly");
        }
        if (Input.GetKey(KeyCode.Space))
        {
            parrot.SetBool("landing", true);
            parrot.SetBool("fly", false);
            parrot.SetBool("flyleft", false);
            parrot.SetBool("flyright", false);
            StartCoroutine("idle");
        }
        if (Input.GetKey(KeyCode.A))
        {
            parrot.SetBool("flyleft", true);
            parrot.SetBool("fly", false);
            parrot.SetBool("flyright", false);
        }
        if (Input.GetKey(KeyCode.D))
        {
            parrot.SetBool("flyright", true);
            parrot.SetBool("fly", false);
            parrot.SetBool("flyleft", false);
        }
        if (Input.GetKey(KeyCode.W))
        {
            parrot.SetBool("idle", false);
            parrot.SetBool("fly", true);
            parrot.SetBool("walk", true);
            parrot.SetBool("flyleft", false);
            parrot.SetBool("flyright", false);
        }
        if (Input.GetKey(KeyCode.F))
        {
            parrot.SetBool("jump", true);
            parrot.SetBool("walk", false);
            parrot.SetBool("idle", false);
            StartCoroutine("idle");
        }
        if (Input.GetKey(KeyCode.Keypad0))
        {
            parrot.SetBool("idle", false);
            parrot.SetBool("die", true);
        }
        if (Input.GetKey(KeyCode.E))
        {
            parrot.SetBool("eat", true);
            parrot.SetBool("idle", false);
            StartCoroutine("idle");
        }
	}

    IEnumerator fly()
    {
        yield return new WaitForSeconds(0.1f);
        parrot.SetBool("takeoff", false);
        parrot.SetBool("fly", true);
    }
    IEnumerator idle()
    {
        yield return new WaitForSeconds(0.5f);
        parrot.SetBool("landing", false);
        parrot.SetBool("idle", true);
        parrot.SetBool("jump", false);
        parrot.SetBool("eat", false);
    }
}
