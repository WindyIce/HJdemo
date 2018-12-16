using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UIFW;

public class MainsceneUIForm : BaseUIForm {

    private GameObject targetBoardObj;
    private Text textNeedNum;
    private Text textTargetTitle;
    private Text textTitle;
    private Text textTargetNum;

    public Slider lifeSlider;
    public Text textStillNeedNum;
    

    public void Awake() {
        CurrentUIType.uiShowMode = UIShowMode.Normal;

        rigisterButtonEvent("BtnConfirm",
            p => {

                //TODO:确认按钮
                targetBoardObj.SetActive(false);
            }
            );

    }

    public override void display() {
        base.display();

        Messenger<int, int>.AddListener(UIEvent.Update_PlayerHP, UpdatePlayerHPHandle);
        Messenger<int>.AddListener(UIEvent.Update_StillNeedNum, UpdateStillNeedNum);

        targetBoardObj = transform.Find("TargetBoard").gameObject;
        textNeedNum = targetBoardObj.transform.Find("TextTargetNeedNum").gameObject.GetComponent<Text>();
        textTargetTitle = targetBoardObj.transform.Find("TextTarget").gameObject.GetComponent<Text>();
        textTitle = Helper.findChildNodeObj(targetBoardObj, "TextLevel").GetComponent<Text>();
        textTargetNum = Helper.findChildNodeObj(targetBoardObj, "TargetNum").GetComponent<Text>();

        lifeSlider = transform.Find("LifeSlider").GetComponent<Slider>();
        textStillNeedNum = Helper.findChildNodeObj(gameObject, "TextNeedNum").GetComponent<Text>();

        Init("第一关","收集能量",12);
    }


    public void OnDestroy() {
        //移除事件监听
        Messenger<int,int>.RemoveListener(UIEvent.Update_PlayerHP, UpdatePlayerHPHandle);
        Messenger<int>.RemoveListener(UIEvent.Update_StillNeedNum, UpdateStillNeedNum);
    }

    private void Init(string title,string targetTitle,int targetNum) {
        SetTitle(title);
        SetTargetTitle(targetTitle);
        SetTextNeedNum(targetNum);
        SetTextStillNeedNum(targetNum);
        SetTextTargetNum(targetNum);
        SetLifeSlider(1);
    }

    private void UpdatePlayerHPHandle(int curHp,int maxHp) {
        float value = (float)curHp / maxHp;
        SetLifeSlider(value);
    }

    private void UpdateStillNeedNum(int needNum) {
        SetTextStillNeedNum(needNum);
    }

    private void SetTextNeedNum(int num) {
        textNeedNum.text = "× " + num.ToString();
    }

    private void SetTargetTitle(string title) {
        textTargetTitle.text = title;
    }

    private void SetTitle(string title) {
        textTitle.text = title;
    }

    private void SetLifeSlider(float value) {
        lifeSlider.value = value;
    }

    private void SetTextStillNeedNum(int num) {
        textStillNeedNum.text = "× " + num.ToString();
    }

    private void SetTextTargetNum(int num) {
        textTargetNum.text = string.Format("× {0}", num);
    }
}
