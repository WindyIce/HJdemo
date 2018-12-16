using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PalformDefine : MonoBehaviour {

    public static int palformState = 0;

	// Use this for initialization
	void Start () {
        palformDefine();
	}

    void palformDefine()
    {
#if UNITY_EDITOR
        palformState = 1;
#elif UNITY_STANDALONE_WIN
        palformState=2;
#endif
        Debug.Log("state" + palformState);

    }
	// Update is called once per frame
	void Update () {
		
	}
}
