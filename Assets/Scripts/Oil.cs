using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Oil : MonoBehaviour {

    private float length;
    private float height;
    private float timer;

    private bool hasCrash = false;


    [Header("扩张的速度")]
    public float makeSonSpeed;
    [Header("扩张的最大程度（倍率）")]
    public float maxSize;

//    public void Init(float _length, float _height)
//    {
//        length = _length;
//        height = _height;
//        timer = 0f;
//        transform.localScale = new Vector3(length, transform.localScale.y, height);
//    }

	// Use this for initialization
    private void Awake()
    {
        length = transform.localScale.x;
        height = transform.localScale.y;
        timer = 0;
    }

    private int hasCreate = 0;
	
	// Update is called once per frame
	void Update () {
        if (hasCrash)
        {
            timer += Time.deltaTime;
            if (transform.localScale.x <= length * maxSize)
                transform.localScale += new Vector3(length * makeSonSpeed * Time.deltaTime, 0f,
                height * makeSonSpeed * Time.deltaTime);
        }
	}

    public void OnTriggerEnter(Collider other)
    {
        hasCrash = true;
        
        GetComponent<BoxCollider>().size = new Vector3(1, 1, 1);
        timer = 1.9f;
    }

    public void OnTriggerStay(Collider other)
    {
        if (timer >= 2f)
        {
            timer = 0f;
            SceneManager.Instance().player.OnHitObstacle();
        }
    }

}
