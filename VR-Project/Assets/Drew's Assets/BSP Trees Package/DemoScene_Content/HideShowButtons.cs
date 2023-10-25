using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class HideShowButtons : MonoBehaviour
{
	public GameObject buttons;
	private bool areVisible;
	
    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
		if(Input.GetKeyDown(KeyCode.Tab))
		{
	    areVisible = !areVisible;
     if(areVisible)
         buttons.SetActive(false);
     else
          buttons.SetActive(true);
        
	}
	}
}


