using System.Collections;
using System.Collections.Generic;
using UIFW;
using UnityEngine;

public class GameRoot : MonoBehaviour {

	// Use this for initialization
	void Start () {
        UIManager.getInstance().showUIForms(UIFormsName.MainsceneUIForm);
	}
	
}
