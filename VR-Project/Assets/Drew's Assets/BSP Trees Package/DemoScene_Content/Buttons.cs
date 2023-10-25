using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Buttons : MonoBehaviour
{
	public Camera _camera;
	public GameObject ash;
	public GameObject aspen;
	public GameObject fir;
	public GameObject old;
	public GameObject pine;
	public GameObject plane;
	public GameObject poplar;
	public GameObject willow;
	public GameObject winter_fir;
	public GameObject winter_pine;
	public Material sky01;
	public Material sky02;
	
	public void Ash()
	{
		
		_camera.transform.position = new Vector3(77.24f, 19f, -12f);
		RenderSettings.skybox = sky01;
		ash.transform.rotation = Quaternion.identity;
		ash.SetActive(true);
		aspen.SetActive(false);
		fir.SetActive(false);
		old.SetActive(false);
		pine.SetActive(false);
		plane.SetActive(false);
		poplar.SetActive(false);
		willow.SetActive(false);
		winter_fir.SetActive(false);
		winter_pine.SetActive(false);
	}
		public void Aspen()
	{
		_camera.transform.position = new Vector3(75.95f, 15.3f, 2.67f);
		RenderSettings.skybox = sky01;
		aspen.transform.rotation = Quaternion.identity;
		ash.SetActive(false);
		aspen.SetActive(true);
		fir.SetActive(false);
		old.SetActive(false);
		pine.SetActive(false);
		plane.SetActive(false);
		poplar.SetActive(false);
		willow.SetActive(false);
		winter_fir.SetActive(false);
		winter_pine.SetActive(false);
	}
	
		public void Fir()
	{
		_camera.transform.position = new Vector3(75.95f, 19.97f, -4.05f);
		RenderSettings.skybox = sky01;
		fir.transform.rotation = Quaternion.identity;
		ash.SetActive(false);
		aspen.SetActive(false);
		fir.SetActive(true);
		old.SetActive(false);
		pine.SetActive(false);
		plane.SetActive(false);
		poplar.SetActive(false);
		willow.SetActive(false);
		winter_fir.SetActive(false);
		winter_pine.SetActive(false);
	}
	
		public void Old()
	{
		_camera.transform.position = new Vector3(75.95f, 15.07f, -9.3f);
		RenderSettings.skybox = sky01;
		old.transform.rotation = Quaternion.identity;
		ash.SetActive(false);
		aspen.SetActive(false);
		fir.SetActive(false);
		old.SetActive(true);
		pine.SetActive(false);
		plane.SetActive(false);
		poplar.SetActive(false);
		willow.SetActive(false);
		winter_fir.SetActive(false);
		winter_pine.SetActive(false);
	}
		
		public void Pine()
	{
		_camera.transform.position = new Vector3(71.94f, 21.5f, -12.9f);
		RenderSettings.skybox = sky01;
		fir.transform.rotation = Quaternion.identity;
		ash.SetActive(false);
		aspen.SetActive(false);
		fir.SetActive(false);
		old.SetActive(false);
		pine.SetActive(true);
		plane.SetActive(false);
		poplar.SetActive(false);
		willow.SetActive(false);
		winter_fir.SetActive(false);
		winter_pine.SetActive(false);
	}
	
		public void Plane()
	{
		_camera.transform.position = new Vector3(66.47f, 14.4f, 1.66f);
		RenderSettings.skybox = sky01;
		plane.transform.rotation = Quaternion.identity;
		ash.SetActive(false);
		aspen.SetActive(false);
		fir.SetActive(false);
		old.SetActive(false);
		pine.SetActive(false);
		plane.SetActive(true);
		poplar.SetActive(false);
		willow.SetActive(false);
		winter_fir.SetActive(false);
		winter_pine.SetActive(false);
	}
	
		public void Poplar()
	{
		_camera.transform.position = new Vector3(63.8f, 20.6f, -3.89f);
		RenderSettings.skybox = sky01;
		poplar.transform.rotation = Quaternion.identity;
		ash.SetActive(false);
		aspen.SetActive(false);
		fir.SetActive(false);
		old.SetActive(false);
		pine.SetActive(false);
		plane.SetActive(false);
		poplar.SetActive(true);
		willow.SetActive(false);
		winter_fir.SetActive(false);
		winter_pine.SetActive(false);
	}
	
		public void Willow()
	{
		_camera.transform.position = new Vector3(77.24f, 18.4f, -12f);
		RenderSettings.skybox = sky01;
		willow.transform.rotation = Quaternion.identity;
		ash.SetActive(false);
		aspen.SetActive(false);
		fir.SetActive(false);
		old.SetActive(false);
		pine.SetActive(false);
		plane.SetActive(false);
		poplar.SetActive(false);
		willow.SetActive(true);
		winter_fir.SetActive(false);
		winter_pine.SetActive(false);
	}
	
		public void Winterfir()
	{
		_camera.transform.position = new Vector3(75.95f, 16.03f, 0f);
		RenderSettings.skybox = sky02;
		pine.transform.rotation = Quaternion.identity;
		ash.SetActive(false);
		aspen.SetActive(false);
		fir.SetActive(false);
		old.SetActive(false);
		pine.SetActive(false);
		plane.SetActive(false);
		poplar.SetActive(false);
		willow.SetActive(false);
		winter_fir.SetActive(true);
		winter_pine.SetActive(false);
	}
	
		public void WinterPine()
	{
		_camera.transform.position = new Vector3(71.94f, 21.5f, -12.9f);
		RenderSettings.skybox = sky02;
		winter_pine.transform.rotation = Quaternion.identity;
		ash.SetActive(false);
		aspen.SetActive(false);
		fir.SetActive(false);
		old.SetActive(false);
		pine.SetActive(false);
		plane.SetActive(false);
		poplar.SetActive(false);
		willow.SetActive(false);
		winter_fir.SetActive(false);
		winter_pine.SetActive(true);
	}
	
}
