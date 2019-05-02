using System.Collections;
using System.Collections.Generic;
using MyScripts.UIScripts;
using UnityEngine;
using UnityEngine.UI;

public class MainView : MonoBehaviour
{
	private IngameUIViewTools t;
	private GameObject go_FailTips;
	private Button btn_failNextEnd;
	private GameObject go_WinTips;
	private Button btn_winNextEnd;
	private GameObject go_QuseTips;
	private Button btn_Yes;
	private Button btn_No;
	private void Awake()
	{
		t = IngameUIService.CheckHasUIViewTools(transform);
		go_FailTips = t.GetComponentByObjectName<Transform>("go_FailTips").gameObject;
		btn_failNextEnd = t.GetComponentByObjectName<Button>("btn_failNextEnd");
		go_WinTips = t.GetComponentByObjectName<Transform>("go_WinTips").gameObject;
		btn_winNextEnd = t.GetComponentByObjectName<Button>("btn_winNextEnd");
		go_QuseTips = t.GetComponentByObjectName<Transform>("go_QuseTips").gameObject;
		btn_Yes = t.GetComponentByObjectName<Button>("btn_Yes");
		btn_No = t.GetComponentByObjectName<Button>("btn_No");
		InitBtn();
	}

	private void Start()
	{
		InitEvent();
	}

	public void InitBtn()
	{
		btn_failNextEnd.onClick.AddListener(delegate
		{
			go_QuseTips.SetActive(true);
			go_FailTips.SetActive(false);
		});
		btn_winNextEnd.onClick.AddListener(delegate
		{
			go_QuseTips.SetActive(true);
			go_WinTips.SetActive(false);
		});
		btn_Yes.onClick.AddListener(delegate
		{
			GoingMenu();
		});
		btn_No.onClick.AddListener(delegate
		{
			GoingMenu();
		});
	}

	public void InitEvent()
	{
		Messenger.AddListener(SceneEvent.GAME_WIN,WinEvent);
		Messenger.AddListener(SceneEvent.GAME_OVER,FailEvent);
	}


	public void WinEvent()
	{
		go_WinTips.SetActive(true);
	}

	public void FailEvent()
	{
		go_FailTips.SetActive(true);	
	}
	
	public void GoingMenu()
	{
		UnityEngine.SceneManagement.SceneManager.LoadScene("MainMenu");
	}
	
}
