using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Controller : MonoBehaviour
{
public Camera _camera;

    public void Update()
    {
		if (Input.GetButton("Fire1"))
		{
		this.transform.Rotate (0,Input.GetAxis("Mouse X"), 0);
		}
		if (Input.GetMouseButton(1) || Input.GetMouseButton(2))
		{
		_camera.transform.Translate (Input.GetAxis("Mouse X"),Input.GetAxis("Mouse Y"), 0);
		}
		if (Input.GetAxis("Mouse ScrollWheel") < 0)
		{
		_camera.transform.Translate(0,0,-5);
		}
		if (Input.GetAxis("Mouse ScrollWheel") > 0)
		{
		_camera.transform.Translate(0,0,5);
		}
        
    }
}
