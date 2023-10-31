using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ToggleOnOff : MonoBehaviour
{
    public void Toggle() {
        gameObject.SetActive(!gameObject.activeSelf);
    }
}
