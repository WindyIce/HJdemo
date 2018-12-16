using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

namespace UIFW
{
    public class MaskManager : MonoBehaviour
    {
        /*  字段 */
        //本脚本私有单例
        private static MaskManager instance = null;
        //UI根节点对象
        private GameObject goCanvasRoot = null;
        //UI脚本节点对象
        private Transform traUIScriptsNode = null;
        //顶层面板
        private GameObject goTopPanel;
        //遮罩面板
        private GameObject goMaskPanel;
        //UI摄像机
        private Camera UICamera;
        //UI摄像机原始的“层深”
        private float originalUICameralDepth;

        //得到实例
        public static MaskManager getInstance()
        {
            if (instance == null)
            {
                Debug.Log("maskmanager");
                instance = new GameObject("UIMaskManager").AddComponent<MaskManager>();
            }
            return instance;
        }




        void Awake()
        {
            //得到UI根节点对象、脚本节点对象
            goCanvasRoot = GameObject.FindGameObjectWithTag(SysDefine.SYS_TAG_CANVAS);
            traUIScriptsNode = Helper.findChildNodeObj(goCanvasRoot, SysDefine.SYS_NODE_SCRIPTMANAGER);
            //把本脚本实例，作为“脚本节点对象”的子节点。
            Helper.addChildNodeToParentNode(traUIScriptsNode, this.gameObject.transform);
            //得到“顶层面板”、“遮罩面板”
            goTopPanel = goCanvasRoot;
            goMaskPanel = Helper.findChildNodeObj(goCanvasRoot, "MaskManager").gameObject;
            //得到UI摄像机原始的“层深”
            UICamera = GameObject.FindGameObjectWithTag("UICamera").GetComponent<Camera>();
            if (UICamera != null)
            {
                //得到UI摄像机原始“层深”
                originalUICameralDepth = UICamera.depth;
            }
            else
            {
                Debug.Log(GetType() + "/Start()/UI_Camera is Null!,Please Check! ");
            }
        }

        /// <summary>
        /// 设置遮罩状态
        /// </summary>
        /// <param name="goDisplayUIForms">需要显示的UI窗体</param>
        /// <param name="lucenyType">显示透明度属性</param>
	    public void setMask(GameObject goDisplayUIForms, UITransparentType lucenyType = UITransparentType.AllTrans)
        {
            //顶层窗体下移
            goTopPanel.transform.SetAsLastSibling();
            //启用遮罩窗体以及设置透明度
            switch (lucenyType)
            {
                //完全透明，不能穿透
                case UITransparentType.AllTrans:
                    goMaskPanel.SetActive(true);
                    Color newColor1 = new Color(SysDefine.SYS_TRANSPARENT_ALL_RGB, SysDefine.SYS_TRANSPARENT_ALL_RGB, SysDefine.SYS_TRANSPARENT_ALL_RGB, SysDefine.SYS_TRANSPARENT_ALL_RGB_A);
                    goMaskPanel.GetComponent<Image>().color = newColor1;
                    break;
                //半透明，不能穿透
                case UITransparentType.HalfTrans:
                    goMaskPanel.SetActive(true);
                    Color newColor2 = new Color(SysDefine.SYS_TRANSPARENT_HALF_RGB, SysDefine.SYS_TRANSPARENT_HALF_RGB, SysDefine.SYS_TRANSPARENT_HALF_RGB, SysDefine.SYS_TRANSPARENT_HALF_RGB_A);
                    goMaskPanel.GetComponent<Image>().color = newColor2;
                    break;
     

                default:
                    break;
            }



            //遮罩窗体下移
            goMaskPanel.transform.SetAsLastSibling();
            //显示窗体的下移
            goDisplayUIForms.transform.SetAsLastSibling();
            //增加当前UI摄像机的层深（保证当前摄像机为最前显示）
            if (UICamera != null)
            {
                UICamera.depth = UICamera.depth + 100;    //增加层深
            }

        }

        /// <summary>
        /// 取消遮罩状态
        /// </summary>
	    public void cancelMask()
        {
            //顶层窗体上移
            goTopPanel.transform.SetAsFirstSibling();
            //禁用遮罩窗体
            if (goMaskPanel.activeInHierarchy)
            {
                //隐藏
                goMaskPanel.SetActive(false);
            }

            //恢复当前UI摄像机的层深 
            if (UICamera != null)
            {
                UICamera.depth = originalUICameralDepth;  //恢复层深
            }
        }


    }
}
