using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LightsOnOrOff : MonoBehaviour
{
    public void SwitchState()
    {
        gameObject.SetActive(!gameObject.activeInHierarchy);
    }
}
