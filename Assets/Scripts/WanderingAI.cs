using System;

using System.Collections;

using System.Collections.Generic;

using UnityEngine;



public class WanderingAI : MonoBehaviour
{

    public float speed = 3.0f;

    public const float baseSpeed = 3.0f;

    public float obstacleRange = 5.0f;

    // Use this for initialization

    void Start()
    {

    }



    void Awake()

    {

    }



    private void OnSpeedChanged(float value)

    {

        speed = baseSpeed * value;

    }



    void OnDestroy()

    {

    }

    // Update is called once per frame

    public void FixedUpdate()
    {
        transform.Translate(0, 0, speed * Time.deltaTime);

        Ray ray = new Ray(transform.position, transform.forward);

        RaycastHit hit;



        if (Physics.SphereCast(ray, 0.75f, out hit))

        {

            GameObject hitObject = hit.transform.gameObject;

            if (hitObject == SceneManager.Instance().PlayerObject)
            {

            }
            else
            if (hit.distance < obstacleRange)

            {

                float angle = UnityEngine.Random.Range(-110, 110);

                transform.Rotate(0, angle, 0);

            }

        }
    }

    void Update()
    {

        



    }

}
