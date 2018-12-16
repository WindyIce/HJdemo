/**********************************************************
 * 
 * 主题：UI框架
 * 
 * 功能：实现对事件的监听功能
 * 
 * */
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.EventSystems;

namespace UIFW
{
    public class EventListener : UnityEngine.EventSystems.EventTrigger
    {

        //声明事件的委托
        public delegate void voidDelegate(GameObject gameObject);
        public voidDelegate onClick;
        public voidDelegate onDown;
        public voidDelegate onEnter;
        public voidDelegate onExit;
        public voidDelegate onUp;
        public voidDelegate onSelect;
        public voidDelegate onUpdateSelect;

        ///<summary>
        ///获取监听器组件
        /// </summary>
        public static EventListener getListener(GameObject gameObject)
        {
            EventListener listener = gameObject.GetComponent<EventListener>();
            if (listener == null)
            {
                listener = gameObject.AddComponent<EventListener>();
            }
            return listener;
        }

        #region 重写事件处理函数
        public override void OnPointerClick(PointerEventData eventData)
        {
            if (onClick != null)
            {
                onClick(gameObject);
            }
        }

        public override void OnPointerDown(PointerEventData eventData)
        {
            if (onDown != null)
            {
                onDown(gameObject);
            }
        }

        public override void OnPointerEnter(PointerEventData eventData)
        {
            if (onEnter != null)
            {
                onEnter(gameObject);
            }
        }

        public override void OnPointerExit(PointerEventData eventData)
        {
            if (onExit != null)
            {
                onExit(gameObject);
            }
        }

        public override void OnPointerUp(PointerEventData eventData)
        {
            if (onUp != null)
            {
                onUp(gameObject);
            }
        }

        public override void OnSelect(BaseEventData eventBaseData)
        {
            if (onSelect != null)
            {
                onSelect(gameObject);
            }
        }

        public override void OnUpdateSelected(BaseEventData eventBaseData)
        {
            if (onUpdateSelect != null)
            {
                onUpdateSelect(gameObject);
            }
        }
        #endregion
    }
}
