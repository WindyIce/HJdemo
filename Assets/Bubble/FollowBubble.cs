using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FollowBubble : MonoBehaviour
{
    public Transform followCamera;
    // Start is called before the first frame update
    void Start()
    {
        if (followCamera == null)
        {
            followCamera = Camera.main.transform;
        }
        transform.parent = followCamera;
        transform.localPosition = new Vector3(0f, 0f, 5f);
        transform.localRotation = Quaternion.Euler(-90f, 0f, 0f);
        
    }

    // Update is called once per frame
    void Update()
    {

    }
}
