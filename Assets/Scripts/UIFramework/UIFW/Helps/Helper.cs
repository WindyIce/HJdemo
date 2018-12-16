using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace UIFW
{
    public class Helper : MonoBehaviour
    {

        //查找子节点对象
        public static Transform findChildNodeObj(GameObject parentObj, string name)
        {
            Transform childTransform = null;

            childTransform = parentObj.transform.Find(name);
            if (childTransform == null)
            {
                foreach (Transform trans in parentObj.transform)
                {
                    childTransform = findChildNodeObj(trans.gameObject, name);
                    if (childTransform != null)
                    {
                        return childTransform;
                    }
                }
            }
            return childTransform;
        }

        //获取子对象脚本
        public static T GetTheChildNodeComponetScripts<T>(GameObject goParent, string childName) where T : Component
        {
            Transform searchTranformNode = null;            //查找特定子节点

            searchTranformNode = findChildNodeObj(goParent, childName);
            if (searchTranformNode != null)
            {
                return searchTranformNode.gameObject.GetComponent<T>();
            }
            else
            {
                return null;
            }
        }

        
        //给子节点添加脚本
	    public static T AddChildNodeCompnent<T>(GameObject goParent, string childName) where T : Component
        {
            Transform searchTranform = null;                //查找特定节点结果

            //查找特定子节点
            searchTranform = findChildNodeObj(goParent, childName);
            //如果查找成功，则考虑如果已经有相同的脚本了，则先删除，否则直接添加。
            if (searchTranform != null)
            {
                //如果已经有相同的脚本了，则先删除
                T[] componentScriptsArray = searchTranform.GetComponents<T>();
                for (int i = 0; i < componentScriptsArray.Length; i++)
                {
                    if (componentScriptsArray[i] != null)
                    {
                        Destroy(componentScriptsArray[i]);
                    }
                }
                return searchTranform.gameObject.AddComponent<T>();
            }
            else
            {
                return null;
            }
            //如果查找不成功，返回Null.
        }

        // 将子节点添加到父对象上
       
	    public static void addChildNodeToParentNode(Transform parents, Transform child)
        {
            child.SetParent(parents, false);
            child.localPosition = Vector3.zero;
            child.localScale = Vector3.one;
            child.localEulerAngles = Vector3.zero;
        }
    }
}
