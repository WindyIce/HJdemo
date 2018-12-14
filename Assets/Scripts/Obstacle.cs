using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[RequireComponent(typeof(Collider))]
public class Obstacle : MonoBehaviour {

    [Header("撞击扣多少血")]
    public int minusHP = 1;

    [Header("多久扣一次血")]
    public float hitInterval = 1.0f;

    [Header("true: 撞了就消失 false: 持续扣血")]
    public bool hitMode = true;

    float timer = 0f;

    bool playerCrashing = false;
    
	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
        if (playerCrashing&&!hitMode)
        {
            timer += Time.deltaTime;
            if (timer >= hitInterval)
            {
                timer -= hitInterval;
                SceneManager.Instance().player.OnHitObstacle(minusHP);
            }
        }
	}

    public void OnTriggerEnter(Collider other)
    {
        if (other.gameObject == SceneManager.Instance().playerObject)
        {
            playerCrashing = true;
            SceneManager.Instance().player.OnHitObstacle(minusHP);
            timer = 0f;
        }
        if (hitMode)
        {
            // 这里要消失，可以把消失的效果写在这
            Destroy(gameObject);
        }
    }

    public void OnTriggerExit(Collider other)
    {
        if (other.gameObject == SceneManager.Instance().playerObject)
        {
            playerCrashing = false;
            timer = 0f;
        }
    }
}
