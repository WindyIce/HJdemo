/**********************************************************
 * 
 * 主题：UI框架
 * 
 * 功能：窗口类型类
 * 
 * */
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace UIFW{
    public class UIType
    {
        public bool isClearStack = false;
        //窗口类型
        public UIShowType uiShowType = UIShowType.Normal;
        //窗口显示模式（窗口弹出是发生的事情）
        public UIShowMode uiShowMode = UIShowMode.Normal;
        //窗口透明度
        public UITransparentType uiTransparentType = UITransparentType.AllTrans;

        //TODO:第三个显示类型具体显示方式。
       
    }
}
