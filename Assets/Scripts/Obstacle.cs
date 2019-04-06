using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Obstacle : MonoBehaviour {

    [Header("撞击扣多少血")]
    public int minusHP = 1;

    [Header("多久扣一次血")]
    public float hitInterval = 1.0f;

    [Header("true: 撞了就消失 false: 持续扣血")]
    public bool hitMode = true;

    float timer = 0f;

    bool playerCrashing = false;
    
	
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
        if (other.gameObject.CompareTag("Player"))
        {
            if (hitMode)
            {
                SceneManager.Instance().player.OnHitObstacle(minusHP);
                Destroy(gameObject);
            }
            else
            {
                playerCrashing = true;
                timer = 0f;
            }
        }
    }

    public void OnTriggerExit(Collider other)
    {
        if (other.gameObject.CompareTag("Player"))
        {
            if (hitMode)
            {
                return;
            }
            playerCrashing = false;
            timer = 0f;
        }
    }
}
