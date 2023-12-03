using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;

public class Keyboard : MonoBehaviour
{
    public TMP_InputField inputField;
    public GameObject normalButtons;

    void Start()
    {
        
    }

    public void InsertChar(string c) {
        inputField.text += c;
    }

    public void DeleteChar() {
        if (inputField != null && inputField.text.Length > 0)
        {
            inputField.text = inputField.text.Substring(0, inputField.text.Length - 1);
        }

    }
}
