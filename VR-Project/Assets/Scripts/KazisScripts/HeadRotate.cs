using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AnimationTrigger : MonoBehaviour
{
    public Transform player;  
    public Transform target;  
    public float activationDistance = 3f;  

    private Animator animator;
    private bool isAnimationPlaying = false;

    private void Start()
    {
        animator = target.GetComponent<Animator>();

        if (animator == null)
        {
            Debug.LogError("Animator component not found on the target object."); //to see if it workd or not
        }
    }

    private void Update()
    {
        float distance = Vector3.Distance(player.position, target.position); //check distance

        if (distance < activationDistance && !isAnimationPlaying) //if close and animation isnt playing
        {
            animator.SetTrigger("rotate");  //trigger animation, rottate state is in animator window for all the busts
            isAnimationPlaying = true;
        }

        else if (distance >= activationDistance && isAnimationPlaying) //if ur not close
        {
            animator.ResetTrigger("rotate"); //just reset animation state
            isAnimationPlaying = false;
        }
    }
}