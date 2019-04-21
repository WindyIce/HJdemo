using System.Collections;
using System.Collections.Generic;
using MyScripts.UIScripts;
using UnityEngine;
using UnityEngine.UI;
using UIFW;

public class MainsceneUIForm : BaseUIForm {

    private IngameUIViewTools t;
    private Image image_hp;
    private Text txt_hpCur;
    private Text txt_hpMax;
    private Text txt_needCur;
    private Text txt_needMax;
    private Button btn_NextEnd;
    private GameObject go_TaskTips;
    private Text txt_taskNeedNum;
    private void Awake()
    {
        CurrentUIType.uiShowMode = UIShowMode.Normal;
        t = IngameUIService.CheckHasUIViewTools(transform);
        image_hp = t.GetComponentByObjectName<Image>("image_hp");
        txt_hpCur = t.GetComponentByObjectName<Text>("txt_hpCur");
        txt_hpMax = t.GetComponentByObjectName<Text>("txt_hpMax");
        txt_needCur = t.GetComponentByObjectName<Text>("txt_needCur");
        txt_needMax = t.GetComponentByObjectName<Text>("txt_needMax");
        btn_NextEnd = t.GetComponentByObjectName<Button>("btn_NextEnd");
        go_TaskTips = t.GetComponentByObjectName<Transform>("go_TaskTips").gameObject;
        txt_taskNeedNum = t.GetComponentByObjectName<Text>("txt_taskNeedNum");
    }
    
    public override void display() {
        base.display();

        Messenger<int, int>.AddListener(UIEvent.Update_PlayerHP, UpdatePlayerHPHandle);
        Messenger<int, int>.AddListener(UIEvent.Update_StillNeedNum, UpdateStillNeedNum);
        btn_NextEnd.onClick.AddListener(delegate { SceneManager.Instance().Player.SetMovementLock(false); });
        Init("第一关","收集能量");
    }


    public void OnDestroy() {
        //移除事件监听
        Messenger<int,int>.RemoveListener(UIEvent.Update_PlayerHP, UpdatePlayerHPHandle);
        Messenger<int,int>.RemoveListener(UIEvent.Update_StillNeedNum, UpdateStillNeedNum);
    }

    private void Init(string title,string targetTitle) {
        SetTextNeedNum(SceneManager.Instance().coralNeeded);
        SetTextStillNeedNum(SceneManager.Instance().coralNeeded,SceneManager.Instance().coralGot);
        SetHp(SceneManager.Instance().Player.maxHP,SceneManager.Instance().Player.maxHP);
    }

    private void UpdatePlayerHPHandle(int curHp,int maxHp) {
        SetHp(curHp,maxHp);
    }

    private void UpdateStillNeedNum(int needNum,int gotNum) {
        SetTextStillNeedNum(needNum,gotNum);
    }

    private void SetTextNeedNum(int num) {
        txt_taskNeedNum.text = num.ToString();
    }
    
    private void SetHp(int curHp,int maxHp) {
        float value = (float)curHp / maxHp;
        image_hp.fillAmount = value;
        txt_hpCur.text = curHp.ToString();
        txt_hpMax.text = maxHp.ToString();
    }

    private void SetTextStillNeedNum(int needNum,int gotNum) {
        txt_needCur.text = gotNum.ToString();
        txt_needMax.text = needNum.ToString();
    }
}
