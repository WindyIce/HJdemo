/**********************************************************
 *
 *主题：UI框架
 * 
 * 功能：
 * 1：定义系统常量
 * 2：定义枚举类型
 * 3：定义全局函数
 * 
 * 
 * */
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace UIFW{

    /// <summary>
    /// 定义枚举类型
    /// </summary>
    
    //窗口位置类型
    public enum UIShowType
    {
        Normal=0,
        Fix,
        Pop
    }
    //窗口显示类型
    public enum UIShowMode
    {
        Normal=0,
        Reverse,
        HideOther
    }
    //窗口透明度类型
    public enum UITransparentType
    {
        AllTrans=0,
        HalfTrans
    }
    public class SysDefine : MonoBehaviour {

        /// <summary>
        /// 定义系统常量
        /// </summary>


        //路径
        //public const string SYS_PATH_CANVAS = "Prefabs\\UIPrefabs\\Canvas";
        public const string SYS_PATH_CANVAS = "Prefabs/UIPrefabs/Canvas";
        public const string SYS_PATH_CONFIGINFO = "UIConfigInfo";

        //标签
        public const string SYS_TAG_CANVAS = "TagCanvas";
        //节点
        public const string SYS_NODE_NORMAL = "Normal";
        public const string SYS_NODE_FIX = "Fix";
        public const string SYS_NODE_POP = "Pop";
        public const string SYS_NODE_SCRIPTMANAGER = "ScriptManager";

        //透明度
        public const float SYS_TRANSPARENT_ALL_RGB = 255 / 255F;
        public const float SYS_TRANSPARENT_ALL_RGB_A = 0F / 255F;

        public const float SYS_TRANSPARENT_HALF_RGB = 200 / 255F;
        public const float SYS_TRANSPARENT_HALF_RGB_A = 50F / 255F;
        
    }
}
