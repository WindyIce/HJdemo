using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace UIFW
{
    public class BaseUIForm : MonoBehaviour
    {

        private UIType currentUIType = new UIType();

        /* 属性*/
        //当前UI窗体类型
        public UIType CurrentUIType
        {
            get { return currentUIType; }
            set { currentUIType = value; }
        }

        
        #region  窗体的四种(生命周期)状态

        /// <summary>
        /// 显示状态
        /// </summary>
	    public virtual void display()
        {
            this.gameObject.SetActive(true);
            //设置模态窗体调用(必须是弹出窗体)
            if (currentUIType.uiShowType == UIShowType.Pop)
            {
                MaskManager.getInstance().setMask(this.gameObject, currentUIType.uiTransparentType);
            }
        }

        /// <summary>
        /// 隐藏状态
        /// </summary>
	    public virtual void hiding()
        {
            this.gameObject.SetActive(false);
            //取消模态窗体调用
            if (currentUIType.uiShowType == UIShowType.Pop)
            {
                MaskManager.getInstance().cancelMask();
            }
        }

        /// <summary>
        /// 重新显示状态
        /// </summary>
	    public virtual void redisplay()
        {
            this.gameObject.SetActive(true);
            //设置模态窗体调用(必须是弹出窗体)
            if (currentUIType.uiShowType == UIShowType.Pop)
            {
                MaskManager.getInstance().setMask(this.gameObject, currentUIType.uiTransparentType);
            }
        }

        /// <summary>
        /// 冻结状态
        /// </summary>
	    public virtual void freeze()
        {
            this.gameObject.SetActive(true);
        }


        #endregion

        #region 封装子类常用的方法

        /// <summary>
        /// 注册按钮事件
        /// </summary>
        /// <param name="buttonName">按钮节点名称</param>
        /// <param name="delHandle">委托：需要注册的方法</param>
	    protected void rigisterButtonEvent(string buttonName, EventListener.voidDelegate delHandle)
        {
            try
            {
                GameObject goButton = Helper.findChildNodeObj(this.gameObject, buttonName).gameObject;
                if (goButton != null)
                {
                    EventListener.getListener(goButton).onClick = delHandle;
                }
            }
            catch (Exception e)
            { }
            //给按钮注册事件方法
            
        }

        /// <summary>
        /// 打开UI窗体
        /// </summary>
        /// <param name="uiFormName"></param>
	    protected void openUIForm(string uiFormName)
        {
            UIManager.getInstance().showUIForms(uiFormName);
        }

        /// <summary>
        /// 关闭当前UI窗体
        /// </summary>
	    protected void closeUIForm()
        {
            string strUIFromName = string.Empty;            //处理后的UIFrom 名称
            int intPosition = -1;

            strUIFromName = GetType().ToString();             //命名空间+类名
            intPosition = strUIFromName.IndexOf('.');
            if (intPosition != -1)
            {
                //剪切字符串中“.”之间的部分
                strUIFromName = strUIFromName.Substring(intPosition + 1);
            }

            UIManager.getInstance().closeUIForms(strUIFromName);
        }

        /// <summary>
        /// 发送消息
        /// </summary>
        /// <param name="msgType">消息的类型</param>
        /// <param name="msgName">消息名称</param>
        /// <param name="msgContent">消息内容</param>
	    protected void sendMessage(string msgType, string msgName, object msgContent)
        {
            KeyValueUpdate kvs = new KeyValueUpdate(msgName, msgContent);
            EventCenter.SendMessage(msgType, kvs);
        }

        /// <summary>
        /// 接收消息
        /// </summary>
        /// <param name="messagType">消息分类</param>
        /// <param name="handler">消息委托</param>
	    public void receiveMessage(string messagType, EventCenter.delegateMessage handler)
        {
            EventCenter.AddMessageListener(messagType, handler);
        }
        #endregion

    }
}
