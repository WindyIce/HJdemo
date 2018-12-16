using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UIFW;

public class BalanceUIForm :BaseUIForm{

    public void Awake()
    {
        CurrentUIType.uiShowMode = UIShowMode.HideOther;

        rigisterButtonEvent("BtnReturn",
            p =>
            {
                closeUIForm();
                openUIForm("LobbyUIForm");
            });
    }
}
