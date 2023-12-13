using UnityEngine;
using UnityEngine.XR.Interaction.Toolkit;
using System.Collections;


public class SoundRandomizer : MonoBehaviour
{
    public AudioClip[] MetalAudio;
    public AudioClip[] WoodAudio;
    private AudioSource source;

    [Range(0.1f, 0.5f)]
    public float volumeChangeMultiplier = 0.2f;
    public float pitchChangeMultiplier = 0.2f;
    public string _tag1 = "";
    public string _tag2 = "";

    // Flag to track if the initial collision has occurred so we don't
    // hear audio play the second the scene starts. Most objects are 
    // already resting on a collision that would cause noise.
    private bool objectActive = false;

    // Cooldown period in seconds
    public float soundCooldown = 1.0f;
    private bool canPlaySound = true;

    void Start()
    {
        source = GetComponent<AudioSource>();
    }

    // Subscribe to the XR Interaction Toolkit's event
    private void OnEnable()
    {
        // Subscribe to the OnSelectEntered event
        GetComponent<XRGrabInteractable>().onSelectEntered.AddListener(OnObjectGrabbed);
    }

    // Unsubscribe from the event when the script is disabled or destroyed
    private void OnDisable()
    {
        GetComponent<XRGrabInteractable>().onSelectEntered.RemoveListener(OnObjectGrabbed);
    }

    // Event handler for when the object is grabbed
    private void OnObjectGrabbed(XRBaseInteractor interactor)
    {
        // Set the boolean to true when the object is grabbed
        objectActive = true;

        // Your additional logic for when the object is grabbed
        Debug.Log("Object grabbed!");
    }

    // Should force sound to play on collision
    void OnCollisionEnter(Collision collision)
    {
        // Check if the collider has a specific tag, if the object is active, and if the cooldown has passed
        if (collision.collider.CompareTag(_tag1) && objectActive && canPlaySound)
        {
            // Play a random sound
            source.clip = MetalAudio[Random.Range(0, MetalAudio.Length)];
            source.volume = Random.Range(1 - volumeChangeMultiplier, 1);
            source.pitch = Random.Range(1 - pitchChangeMultiplier, 1);
            source.PlayOneShot(source.clip);

            // Set the cooldown flag to false
            canPlaySound = false;

            // Start the cooldown coroutine
            StartCoroutine(SoundCooldown());
        }
        if (collision.collider.CompareTag(_tag2) && objectActive && canPlaySound)
        {
            // Play a random sound
            source.clip = WoodAudio[Random.Range(0, WoodAudio.Length)];
            source.volume = Random.Range(1 - volumeChangeMultiplier, 1);
            source.pitch = Random.Range(1 - pitchChangeMultiplier, 1);
            source.PlayOneShot(source.clip);

            // Set the cooldown flag to false
            canPlaySound = false;

            // Start the cooldown coroutine
            StartCoroutine(SoundCooldown());
        }
    }

    // Coroutine for the sound cooldown
    IEnumerator SoundCooldown()
    {
        // Wait for the specified cooldown period
        yield return new WaitForSeconds(soundCooldown);

        // Set the cooldown flag to true
        canPlaySound = true;
    }
}
