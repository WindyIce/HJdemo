using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UIFW;

public class LobbyUIForm :  BaseUIForm{


    public void Awake()
    {
        CurrentUIType.uiShowMode = UIShowMode.HideOther;

        //设置用户名
        

        rigisterButtonEvent("BtnHelp",
            p =>
            {

                //音效
               
                //closeUIForm();
                //openUIForm("HelpUIForm");
            }
            );

        rigisterButtonEvent("BtnSingle",
            p =>
            {
                //音效
                
            }
            );

        rigisterButtonEvent("BtnMulti",
            p =>
            {
                //音效
              

                
            }
            );

        
    }
    
}
