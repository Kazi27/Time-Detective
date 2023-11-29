using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;

public class WipeController : MonoBehaviour
{

    private Animator _animator;
    private Image _image;
    private readonly int _circleSizeId = Shader.PropertyToID(name: "_Circle_Size");
    private bool _isIn = false;

    public float circleSize = 0;
    public string nextSceneName;

    // Start is called before the first frame update
    void Start()
    {
        _animator = gameObject.GetComponent<Animator>();
        _image = gameObject.GetComponent<Image>();
    }

    public void AnimateIn()
    {
        _animator.SetTrigger(name:"In");
        _isIn = true;
    }

    public void AnimateOut()
    {
        _animator.SetTrigger(name:"Out");
        _isIn = false;
    }
    public void StartTransition()
    {
        if(_isIn)
        {
            AnimateOut();
            StartCoroutine(LoadNextSceneDelayed());
        }
    }

    // Update is called once per frame
    void Update()
    {
        if(!_isIn){
            AnimateIn();
        }
        _image.materialForRendering.SetFloat(_circleSizeId, circleSize);
    }

    IEnumerator LoadNextSceneDelayed()
    {
        yield return new WaitForSeconds(0);
        SceneManager.LoadScene(nextSceneName);
    }

}
