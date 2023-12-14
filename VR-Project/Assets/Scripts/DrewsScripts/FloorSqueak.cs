using UnityEngine;
using System.Collections;

public class FloorSqueak : MonoBehaviour
{
    public AudioClip[] SqueakFX;
    private AudioSource source;
    private bool hasPlayed = false;

    [Range(0.1f, 0.5f)]
    public float volumeChangeMultiplier = 0.2f;
    public float pitchChangeMultiplier = 0.2f;

    // Cooldown period in seconds
    public float soundCooldown = 1.0f;
    private bool canPlaySound = true;

    void Start()
    {
        source = GetComponent<AudioSource>();
    }

    // Should force sound to play on collision
    void OnCollisionEnter(Collision collision)
    {
        // Checks if it's the "player" that entered the trigger and if it's played yet or not.
        if (collision.gameObject.CompareTag("Player") && !hasPlayed)
        {
            // Play a random sound
            source.clip = SqueakFX[Random.Range(0, SqueakFX.Length)];
            source.volume = Random.Range(1 - volumeChangeMultiplier, 1);
            source.pitch = Random.Range(1 - pitchChangeMultiplier, 1);
            source.PlayOneShot(source.clip);

            // Set the cooldown flag to false
            canPlaySound = false;

            // Start the cooldown coroutine
            StartCoroutine(SoundCooldown());
        }
    }

    void OnTriggerExit(Collider other)
    {
        if (other.gameObject.CompareTag("Player"))
        {
            // Reset the flag when the player exits the trigger zone
            hasPlayed = false;
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
