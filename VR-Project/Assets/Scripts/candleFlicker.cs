using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class candleFlicker : MonoBehaviour
{
    public float flickerIntensity = 0.2f;
    public float flickersPerSecond = 3.0f;
    public float speedRandomness = 1.0f;

    private float time;
    private float startingIntensity;
    private Light light;

    void Start()
    {
        light = GetComponent<Light>();
        startingIntensity = light.intensity;
        
    }

    // Update is called once per frame
    void Update()
    {
        time += Time.deltaTime * (1 - Random.Range(-speedRandomness, speedRandomness)) * Mathf.PI;
        light.intensity = startingIntensity + Mathf.Sin(time * flickersPerSecond) * flickerIntensity;
    }
}


