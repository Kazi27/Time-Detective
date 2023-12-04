using System;
using System.Collections;
using TMPro;
using UnityEngine;
using UnityEngine.Events;
using UnityEngine.XR.Interaction.Toolkit;

namespace NavKeypad { 
public class Keypad : MonoBehaviour
{
    [Header("Events")]
    [SerializeField] private UnityEvent onAccessGranted;
    [SerializeField] private UnityEvent onAccessDenied;
    [Header("Combination Code (9 Numbers Max)")]
    [SerializeField] private int keypadCombo = 15140;

    public UnityEvent OnAccessGranted => onAccessGranted;
    public UnityEvent OnAccessDenied => onAccessDenied;

    [Header("Settings")]
    [SerializeField] private string accessGrantedText = "Granted";
    [SerializeField] private string accessDeniedText = "Denied";

    [Header("Visuals")]
    [SerializeField] private float displayResultTime = 1f;
    [Range(0,5)]
    [SerializeField] private float screenIntensity = 2.5f;
    [Header("Colors")]
    [SerializeField] private Color screenNormalColor = new (0.98f, 0.50f, 0.032f, 1f); //orangy
    [SerializeField] private Color screenDeniedColor = new(1f, 0f, 0f, 1f); //red
    [SerializeField] private Color screenGrantedColor = new(0f, 0.62f, 0.07f); //greenish
    [Header("SoundFx")]
    [SerializeField] private AudioClip buttonClickedSfx;
    [SerializeField] private AudioClip accessDeniedSfx;
    [SerializeField] private AudioClip accessGrantedSfx;
    [Header("Component References")]
    [SerializeField] private Renderer panelMesh;
    [SerializeField] private TMP_Text keypadDisplayText;
    [SerializeField] private AudioSource audioSource;


    private string currentInput;
    private bool displayingResult = false;
    private bool accessWasGranted = false;

    private void Awake()
    {
        ClearInput();
        panelMesh.material.SetVector("_EmissionColor", screenNormalColor * screenIntensity);
    }


    //Gets value from pressedbutton
    public void AddInput(string input)
    {
        audioSource.PlayOneShot(buttonClickedSfx);
        if (displayingResult || accessWasGranted) return;
        switch (input)
        {
            case "enter":
                CheckCombo();
                break;
            default:
                if (currentInput != null && currentInput.Length == 4) // 4 max passcode size 
                {
                    return;
                }
                currentInput += input;
                keypadDisplayText.text = currentInput;
                break;
        }
        
    }
    public void CheckCombo()
    {
        if(int.TryParse(currentInput, out var currentKombo))
        {
            bool granted = currentKombo == keypadCombo;
            if (!displayingResult)
            {
                StartCoroutine(DisplayResultRoutine(granted));
            }
        }
        else
        {
            Debug.LogWarning("Couldn't process input for some reason..");
        }

    }

    //mainly for animations 
    private IEnumerator DisplayResultRoutine(bool granted)
    {
        displayingResult = true;

        if (granted) AccessGranted();
        else AccessDenied();

        yield return new WaitForSeconds(displayResultTime);
        displayingResult = false;
        if (granted) yield break;
        ClearInput();
        panelMesh.material.SetVector("_EmissionColor", screenNormalColor * screenIntensity);

    }

    private void AccessDenied()
    {
        keypadDisplayText.text = accessDeniedText;
        onAccessDenied?.Invoke();
        panelMesh.material.SetVector("_EmissionColor", screenDeniedColor * screenIntensity);
        audioSource.PlayOneShot(accessDeniedSfx);
    }

    private void ClearInput()
    {
        currentInput = "";
        keypadDisplayText.text = currentInput;
    }

    private void AccessGranted()
    {
        accessWasGranted = true;
        keypadDisplayText.text = accessGrantedText;
        onAccessGranted?.Invoke();
        panelMesh.material.SetVector("_EmissionColor", screenGrantedColor * screenIntensity);
        audioSource.PlayOneShot(accessGrantedSfx);
    }

}
}