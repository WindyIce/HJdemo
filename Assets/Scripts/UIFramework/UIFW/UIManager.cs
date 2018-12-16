using System.Collections;
using System.Collections.Generic;
using System.Net.Mime;
using UnityEngine;
using UnityEngine.UI;
namespace UIFW
{



    public class UIManager : MonoBehaviour
    {
        /* 字段 */
        private static UIManager instance = null;
        //UI窗体预设路径(参数1：窗体预设名称，2：表示窗体预设路径)
        private Dictionary<string, string> dictionaryFormPath;
        //缓存所有UI窗体
        private Dictionary<string, BaseUIForm> dictionaryAllUI;
        //当前显示的UI窗体
        private Dictionary<string, BaseUIForm> dictionaryCurrentShowUI;
        //定义“栈”集合,存储显示当前所有[反向切换]的窗体类型
        private Stack<BaseUIForm> stackCurrentUI;
        //UI根节点
        private Transform transformCanvasTransfrom = null;
        //全屏幕显示的节点
        private Transform transformNormal = null;
        //固定显示的节点
        private Transform transformFix = null;
        //弹出节点
        private Transform transformPop = null;
        //UI管理脚本的节点
        private Transform transformUIScripts = null;


        /// <summary>
        /// 得到实例
        /// </summary>
        /// <returns></returns>
        public static UIManager getInstance()
        {
            if (instance == null)
            {
                instance = new GameObject("UIManager").AddComponent<UIManager>();
            }
            return instance;
        }

        //初始化核心数据，加载“UI窗体路径”到集合中。
        public void Awake()
        {
            //字段初始化
            dictionaryAllUI = new Dictionary<string, BaseUIForm>();
            dictionaryCurrentShowUI = new Dictionary<string, BaseUIForm>();
            dictionaryFormPath = new Dictionary<string, string>();
            stackCurrentUI = new Stack<BaseUIForm>();
            //初始化加载（根UI窗体）Canvas预设
            initRootCanvasLoading();
            //得到UI根节点、全屏节点、固定节点、弹出节点
            transformCanvasTransfrom = GameObject.FindGameObjectWithTag(SysDefine.SYS_TAG_CANVAS).transform;
            transformNormal = Helper.findChildNodeObj(transformCanvasTransfrom.gameObject, SysDefine.SYS_NODE_NORMAL);
            transformFix = Helper.findChildNodeObj(transformCanvasTransfrom.gameObject, SysDefine.SYS_NODE_FIX);
            transformPop = Helper.findChildNodeObj(transformCanvasTransfrom.gameObject, SysDefine.SYS_NODE_POP);
            transformUIScripts = Helper.findChildNodeObj(transformCanvasTransfrom.gameObject, SysDefine.SYS_NODE_SCRIPTMANAGER);

            //把本脚本作为“根UI窗体”的子节点。
            this.gameObject.transform.SetParent(transformUIScripts, false);
            //"根UI窗体"在场景转换的时候，不允许销毁
            DontDestroyOnLoad(transformCanvasTransfrom);
            //初始化“UI窗体预设”路径数据
            initUIFormsPathData();
        }

        /// <summary>
        /// 显示（打开）UI窗体
        /// 功能：
        /// 1: 根据UI窗体的名称，加载到“所有UI窗体”缓存集合中
        /// 2: 根据不同的UI窗体的“显示模式”，分别作不同的加载处理
        /// </summary>
        /// <param name="uiFormName">UI窗体预设的名称</param>
        public void showUIForms(string uiFormName)
        {
            BaseUIForm baseUIForms = null;                    //UI窗体基类

            //参数的检查
            if (string.IsNullOrEmpty(uiFormName)) return;

            //根据UI窗体的名称，加载到“所有UI窗体”缓存集合中
            baseUIForms = loadFormsToAllUIFormsCatch(uiFormName);
            if (baseUIForms == null) return;

            //是否清空“栈集合”中得数据
            if (baseUIForms.CurrentUIType.isClearStack)
            {
                clearStackArray();
            }

            //根据不同的UI窗体的显示模式，分别作不同的加载处理
            switch (baseUIForms.CurrentUIType.uiShowMode)
            {
                case UIShowMode.Normal:                 //“普通显示”窗口模式
                                                            //把当前窗体加载到“当前窗体”集合中。
                    loadUIToCurrentCache(uiFormName);
                    break;
                case UIShowMode.Reverse:          //需要“反向切换”窗口模式
                    pushUIFormToStack(uiFormName);
                    break;
                case UIShowMode.HideOther:              //“隐藏其他”窗口模式
                    enterUIFormsAndHideOther(uiFormName);
                    break;
                default:
                    break;
            }
        }

        /// <summary>
        /// 关闭（返回上一个）窗体
        /// </summary>
        /// <param name="uiFormName"></param>
        public void closeUIForms(string uiFormName)
        {
            BaseUIForm baseUiForm;                          //窗体基类

            //参数检查
            if (string.IsNullOrEmpty(uiFormName)) return;
            //“所有UI窗体”集合中，如果没有记录，则直接返回
            dictionaryAllUI.TryGetValue(uiFormName, out baseUiForm);
            if (baseUiForm == null) return;
            //根据窗体不同的显示类型，分别作不同的关闭处理
            switch (baseUiForm.CurrentUIType.uiShowMode)
            {
                case UIShowMode.Normal:
                    //普通窗体的关闭
                    exitUIForms(uiFormName);
                    break;
                case UIShowMode.Reverse:
                    //反向切换窗体的关闭
                    popUIFroms();
                    break;
                case UIShowMode.HideOther:
                    //隐藏其他窗体关闭
                    exitUIFormsAndDisplayOther(uiFormName);
                    break;

                default:
                    break;
            }
        }

        #region  显示“UI管理器”内部核心数据，测试使用

        /// <summary>
        /// 显示"所有UI窗体"集合的数量
        /// </summary>
        /// <returns></returns>
        public int showALLUIFormCount()
        {
            if (dictionaryAllUI != null)
            {
                return dictionaryAllUI.Count;
            }
            else
            {
                return 0;
            }
        }

        /// <summary>
        /// 显示"当前窗体"集合中数量
        /// </summary>
        /// <returns></returns>
        public int showCurrentUIFormsCount()
        {
            if (dictionaryCurrentShowUI != null)
            {
                return dictionaryCurrentShowUI.Count;
            }
            else
            {
                return 0;
            }
        }

        /// <summary>
        /// 显示“当前栈”集合中窗体数量
        /// </summary>
        /// <returns></returns>
        public int showCurrentStackUIFormsCount()
        {
            if (stackCurrentUI != null)
            {
                return stackCurrentUI.Count;
            }
            else
            {
                return 0;
            }
        }

        #endregion

        #region 私有方法
        //初始化加载（根UI窗体）Canvas预设
        private void initRootCanvasLoading()
        {
            ResourcesManager.getInstance().loadAsset(SysDefine.SYS_PATH_CANVAS, false);
        }

        /// <summary>
        /// 根据UI窗体的名称，加载到“所有UI窗体”缓存集合中
        /// 功能： 检查“所有UI窗体”集合中，是否已经加载过，否则才加载。
        /// </summary>
        /// <param name="uiFormsName">UI窗体（预设）的名称</param>
        /// <returns></returns>
        private BaseUIForm loadFormsToAllUIFormsCatch(string uiFormsName)
        {
            BaseUIForm baseUIResult = null;                 //加载的返回UI窗体基类

            dictionaryAllUI.TryGetValue(uiFormsName, out baseUIResult);
            if (baseUIResult == null)
            {
                //加载指定名称的“UI窗体”
                baseUIResult = loadUIForm(uiFormsName);
            }

            return baseUIResult;
        }

        /// <summary>
        /// 加载指定名称的“UI窗体”
        /// 功能：
        ///    1：根据“UI窗体名称”，加载预设克隆体。
        ///    2：根据不同预设克隆体中带的脚本中不同的“位置信息”，加载到“根窗体”下不同的节点。
        ///    3：隐藏刚创建的UI克隆体。
        ///    4：把克隆体，加入到“所有UI窗体”（缓存）集合中。
        /// 
        /// </summary>
        /// <param name="uiFormName">UI窗体名称</param>
        private BaseUIForm loadUIForm(string uiFormName)
        {
            string strUIFormPaths = null;                   //UI窗体路径
            GameObject goCloneUIPrefabs = null;             //创建的UI克隆体预设
            BaseUIForm baseUiForm = null;                     //窗体基类


            //根据UI窗体名称，得到对应的加载路径
            dictionaryFormPath.TryGetValue(uiFormName, out strUIFormPaths);
            //根据“UI窗体名称”，加载“预设克隆体”
            if (!string.IsNullOrEmpty(strUIFormPaths))
            {
                goCloneUIPrefabs = ResourcesManager.getInstance().loadAsset(strUIFormPaths, false);
            }
            //设置“UI克隆体”的父节点（根据克隆体中带的脚本中不同的“位置信息”）
            if (transformCanvasTransfrom != null && goCloneUIPrefabs != null)
            {
                baseUiForm = goCloneUIPrefabs.GetComponent<BaseUIForm>();
                if (baseUiForm == null)
                {
                    Debug.Log("baseUiForm==null! ,请先确认窗体预设对象上是否加载了baseUIForm的子类脚本！ 参数 uiFormName=" + uiFormName);
                    return null;
                }
                switch (baseUiForm.CurrentUIType.uiShowType)
                {
                    case UIShowType.Normal:                 //普通窗体节点
                        goCloneUIPrefabs.transform.SetParent(transformNormal, false);
                        break;
                    case UIShowType.Fix:                  //固定窗体节点
                        goCloneUIPrefabs.transform.SetParent(transformFix, false);
                        break;
                    case UIShowType.Pop:                  //弹出窗体节点
                        goCloneUIPrefabs.transform.SetParent(transformPop, false);
                        break;
                    default:
                        break;
                }

                //设置隐藏
                goCloneUIPrefabs.SetActive(false);
                //把克隆体，加入到“所有UI窗体”（缓存）集合中。
                dictionaryAllUI.Add(uiFormName, baseUiForm);
                return baseUiForm;
            }
            else
            {
                Debug.Log("_TraCanvasTransfrom==null Or goCloneUIPrefabs==null!! ,Plese Check!, 参数uiFormName=" + uiFormName);
            }

            Debug.Log("出现不可以预估的错误，请检查，参数 uiFormName=" + uiFormName);
            return null;
        }//Mehtod_end

        /// <summary>
        /// 把当前窗体加载到“当前窗体”集合中
        /// </summary>
        /// <param name="uiFormName">窗体预设的名称</param>
        private void loadUIToCurrentCache(string uiFormName)
        {
            BaseUIForm baseUiForm;                          //UI窗体基类
            BaseUIForm baseUIFormFromAllCache;              //从“所有窗体集合”中得到的窗体

            //如果“正在显示”的集合中，存在整个UI窗体，则直接返回
            dictionaryCurrentShowUI.TryGetValue(uiFormName, out baseUiForm);
            if (baseUiForm != null) return;
            //把当前窗体，加载到“正在显示”集合中
            dictionaryAllUI.TryGetValue(uiFormName, out baseUIFormFromAllCache);
            if (baseUIFormFromAllCache != null)
            {
                dictionaryCurrentShowUI.Add(uiFormName, baseUIFormFromAllCache);
                baseUIFormFromAllCache.display();           //显示当前窗体
            }
        }

        /// <summary>
        /// UI窗体入栈
        /// </summary>
        /// <param name="uiFormName">窗体的名称</param>
        private void pushUIFormToStack(string uiFormName)
        {
            BaseUIForm baseUIForm;                          //UI窗体

            //判断“栈”集合中，是否有其他的窗体，有则“冻结”处理。
            if (stackCurrentUI.Count > 0)
            {
                BaseUIForm topUIForm = stackCurrentUI.Peek();
                //栈顶元素作冻结处理
                topUIForm.freeze();
            }
            //判断“UI所有窗体”集合是否有指定的UI窗体，有则处理。
            dictionaryAllUI.TryGetValue(uiFormName, out baseUIForm);
            if (baseUIForm != null)
            {
                //当前窗口显示状态
                baseUIForm.display();
                //把指定的UI窗体，入栈操作。
                stackCurrentUI.Push(baseUIForm);
            }
            else
            {
                Debug.Log("baseUIForm==null,Please Check, 参数 uiFormName=" + uiFormName);
            }
        }

        /// <summary>
        /// 退出指定UI窗体
        /// </summary>
        /// <param name="strUIFormName"></param>
        private void exitUIForms(string strUIFormName)
        {
            BaseUIForm baseUIForm;                          //窗体基类

            //"正在显示集合"中如果没有记录，则直接返回。
            dictionaryCurrentShowUI.TryGetValue(strUIFormName, out baseUIForm);
            if (baseUIForm == null) return;
            //指定窗体，标记为“隐藏状态”，且从"正在显示集合"中移除。
            baseUIForm.hiding();
            dictionaryCurrentShowUI.Remove(strUIFormName);
        }

        //（“反向切换”属性）窗体的出栈逻辑
        private void popUIFroms()
        {
            if (stackCurrentUI.Count >= 2)
            {
                //出栈处理
                BaseUIForm topUIForms = stackCurrentUI.Pop();
                //做隐藏处理
                topUIForms.hiding();
                //出栈后，下一个窗体做“重新显示”处理。
                BaseUIForm nextUIForms = stackCurrentUI.Peek();
                nextUIForms.redisplay();
            }
            else if (stackCurrentUI.Count == 1)
            {
                //出栈处理
                BaseUIForm topUIForms = stackCurrentUI.Pop();
                //做隐藏处理
                topUIForms.hiding();
            }
        }

        /// <summary>
        /// (“隐藏其他”属性)打开窗体，且隐藏其他窗体
        /// </summary>
        /// <param name="strUIName">打开的指定窗体名称</param>
        private void enterUIFormsAndHideOther(string strUIName)
        {
            BaseUIForm baseUIForm;                          //UI窗体基类
            BaseUIForm baseUIFormFromALL;                   //从集合中得到的UI窗体基类


            //参数检查
            if (string.IsNullOrEmpty(strUIName)) return;

            dictionaryCurrentShowUI.TryGetValue(strUIName, out baseUIForm);
            if (baseUIForm != null) return;

            //把“正在显示集合”与“栈集合”中所有窗体都隐藏。
            foreach (BaseUIForm baseUI in dictionaryCurrentShowUI.Values)
            {
                baseUI.hiding();
            }
            foreach (BaseUIForm staUI in stackCurrentUI)
            {
                staUI.hiding();
            }

            //把当前窗体加入到“正在显示窗体”集合中，且做显示处理。
            dictionaryAllUI.TryGetValue(strUIName, out baseUIFormFromALL);
            if (baseUIFormFromALL != null)
            {
                dictionaryCurrentShowUI.Add(strUIName, baseUIFormFromALL);
                //窗体显示
                baseUIFormFromALL.display();
            }
        }

        /// <summary>
        /// (“隐藏其他”属性)关闭窗体，且显示其他窗体
        /// </summary>
        /// <param name="strUIName">打开的指定窗体名称</param>
        private void exitUIFormsAndDisplayOther(string strUIName)
        {
            BaseUIForm baseUIForm;                          //UI窗体基类


            //参数检查
            if (string.IsNullOrEmpty(strUIName)) return;

            dictionaryCurrentShowUI.TryGetValue(strUIName, out baseUIForm);
            if (baseUIForm == null) return;

            //当前窗体隐藏状态，且“正在显示”集合中，移除本窗体
            baseUIForm.hiding();
            dictionaryCurrentShowUI.Remove(strUIName);

            //把“正在显示集合”与“栈集合”中所有窗体都定义重新显示状态。
            foreach (BaseUIForm baseUI in dictionaryCurrentShowUI.Values)
            {
                baseUI.redisplay();
            }
            foreach (BaseUIForm staUI in stackCurrentUI)
            {
                staUI.redisplay();
            }
        }

        /// <summary>
        /// 是否清空“栈集合”中得数据
        /// </summary>
        /// <returns></returns>
        private bool clearStackArray()
        {
            if (stackCurrentUI != null && stackCurrentUI.Count >= 1)
            {
                //清空栈集合
                stackCurrentUI.Clear();
                return true;
            }

            return false;
        }

        /// <summary>
        /// 初始化“UI窗体预设”路径数据
        /// </summary>
        private void initUIFormsPathData()
        {
            ConfigManager configMgr = new ConfigManager(SysDefine.SYS_PATH_CONFIGINFO);
            if (configMgr != null)
            {
                dictionaryFormPath = configMgr.appSetting;
            }
        }

        #endregion

    }
}
