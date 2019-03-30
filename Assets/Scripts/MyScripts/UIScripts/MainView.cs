using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class MainView : MonoBehaviour
{

	private Text txt_Hp;
	private void Awake()
	{
		txt_Hp = transform.Find("Health").GetComponent<Text>();
		Init();
	}

	public void Init()
	{
		Messenger<int,int>.AddListener(UIEvent.Update_PlayerHP,ShowHp);
	}

	public void ShowHp(int cur, int max)
	{
		txt_Hp.text = "Health:" + cur + "/" + max;
	}

	private void OnDestroy()
	{
		Messenger<int,int>.RemoveListener(UIEvent.Update_PlayerHP,ShowHp);
	}
}
