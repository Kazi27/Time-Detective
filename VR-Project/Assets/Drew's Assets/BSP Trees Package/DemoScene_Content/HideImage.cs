using UnityEngine;

public class HideImage : MonoBehaviour
{
public GameObject controlsImage;
    void Start()
    {
      controlsImage.SetActive(false);
    }

}
