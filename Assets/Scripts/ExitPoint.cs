﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ExitPoint : MonoBehaviour {

	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		
	}

    public void OnTriggerEnter(Collider other)
    {
        if (other.gameObject == SceneManager.Instance().PlayerObject)
        {
            Messenger.Broadcast(SceneEvent.GAME_WIN);
        }
    }
}
