using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UIFW;
using UnityEngine.UI;

public class AsyLoadUIForm : BaseUIForm {

    private float loadRate;
    private float maxRate;

    public Slider slider;
    // Use this for initialization
    public void Awake()
    {
        CurrentUIType.uiShowMode = UIShowMode.HideOther;
        loadRate = 0f;
        maxRate = 0f;
    }

    // Update is called once per frame
    void Update () {
        //maxRate = GameManager.instance.rate;
        //if (loadRate < maxRate)
        //{
        //    loadRate += Time.deltaTime;
        //}
        //else
        //{
        //    loadRate = maxRate;
        //}

        //slider.value = loadRate;

        //if (loadRate > 0.98f)
        //{
        //    Debug.Log("关闭asyloading");
        //    closeUIForm();
        //    GameManager.instance.enterPlaying();
        //    GameManager.instance.rate = 0f;

        //}



	}
}
