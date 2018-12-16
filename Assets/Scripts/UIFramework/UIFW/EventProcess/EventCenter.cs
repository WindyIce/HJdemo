/**********************************************************
 * 
 * 主题：UI框架
 * 
 * 功能：负责事件的转发
 * 
 * */
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace UIFW
{
    public class EventCenter
    {
        public delegate void delegateMessage(KeyValueUpdate kv);

        //事件中心缓存集合
        public static Dictionary<string, delegateMessage> dictionaryMessage = new Dictionary<string, delegateMessage>();

        /// <summary>
        /// 增加消息的监听。
        /// </summary>
        /// <param name="messageType">消息分类</param>
        /// <param name="handler">消息委托</param>
	    public static void AddMessageListener(string messageType, delegateMessage handler)
        {
            if (!dictionaryMessage.ContainsKey(messageType))
            {
                dictionaryMessage.Add(messageType, null);
            }
            dictionaryMessage[messageType] += handler;
        }

        /// <summary>
        /// 取消消息的监听
        /// </summary>
        /// <param name="messageType">消息分类</param>
        /// <param name="handele">消息委托</param>
	    public static void RemoveMessageListener(string messageType, delegateMessage handele)
        {
            if (dictionaryMessage.ContainsKey(messageType))
            {
                dictionaryMessage[messageType] -= handele;
            }

        }

        /// <summary>
        /// 取消所有指定消息的监听
        /// </summary>
	    public static void ClearALLMsgListener()
        {
            if (dictionaryMessage != null)
            {
                dictionaryMessage.Clear();
            }
        }

        /// <summary>
        /// 发送消息
        /// </summary>
        /// <param name="messageType">消息的分类</param>
        /// <param name="kv">键值对(对象)</param>
	    public static void SendMessage(string messageType, KeyValueUpdate kv)
        {
            delegateMessage del;                         //委托

            if (dictionaryMessage.TryGetValue(messageType, out del))
            {
                if (del != null)
                {
                    //调用委托
                    del(kv);
                }
            }
        }
    }

    /// <summary>
    /// 数值对更新
    /// 实现委托数据传递
    /// </summary>
    public class KeyValueUpdate
    {
        private string _key;
        private object _values;

        public string key
        {
            get
            {
                return _key;
            }
        }
        public object values
        {
            get
            {
                return _values;
            }
        }

        public KeyValueUpdate(string key,object values)
        {
            _key = key;
            _values = values;
        }
    }
}
