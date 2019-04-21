using System.Collections.Generic;
using System.Text;
using MyScripts.UIScripts;
using UnityEditor;
using UnityEngine;

namespace Common.Editor.Utils.Ingame
{
    [CustomEditor(typeof(IngameUIViewTools))]
    public class IngameUIViewEditor : UnityEditor.Editor
    {
        private IngameUIViewTools view;
        private string inputKey;
        private GameObject inputObject;
    
//    public static readonly string ObjKey_Ipt = "ipt_"; // Input组件
//    public static readonly string ObjKey_Tge = "tge_"; // Toggle组件
//    public static readonly string ObjKey_SV = "sv_"; // ScrollView组件
//    public static readonly string ObjKey_Sli = "sli_"; // Slider组件
//    public static readonly string ObjKey_SB = "sb_"; // ScrollBar組件
//    public static readonly string ObjKey_IPTTMP = "iptTmp_"; // TMP_InputField組件
//    public static readonly string ObjKey_TEXTURE = "texture_"; // RawImage組件
//    public static readonly string ObjKey_Tab = "tab_"; // Tab組件
//    public static readonly string ObjKey_TabGroup = "tabGp_"; // TabGroup組件
//    public static readonly string ObjKey_Go = "go_";  // GameObject
        public static readonly Dictionary<string,string> varMessage = new Dictionary<string, string>
        {
            {"btn_","Button"},{"image_","Image"},{"txt_","Text"},{"txtPro_","TextMeshProUGUI"},{"ipt_","Input"},{"tge_","Toggle"},{"sv_","ScrollView"},
            {"sli_","Slider"},{"sb_","ScrollBar"},{"iptTmp_","TMP_InputField"},{"texture_","RawImage"},{"tab_","Tab"},{"tabGp_","TabGroup"},{"go_","GameObject"},
            {"parent_","GameObject"}
        };

        private bool obDicTarget = true;
        private bool obHandDicTarget = true;
        private bool notInHeadsDicTarget = false;
        void OnEnable()
        {
            view = (IngameUIViewTools) target;
        }
    
        public override void OnInspectorGUI()
        {
            EditorGUILayout.BeginHorizontal();
            if (GUILayout.Button("点击拷贝生成变量定义代码",GUILayout.Height(30.0f)))
            {
                GUIUtility.systemCopyBuffer = CopyVarCreateMessage();
            }
            if (GUILayout.Button("点击拷贝生成变量赋值代码",GUILayout.Height(30.0f)))
            {
                GUIUtility.systemCopyBuffer = CopyVarSetValueMessage();
            }
            EditorGUILayout.EndHorizontal();
            
            GUI.color = Color.green;
            if (GUILayout.Button("点击拷贝所有代码实现(自带Awake)",GUILayout.Height(30.0f)))
            {
                GUIUtility.systemCopyBuffer = GetVarAllCode();
            }
            GUI.color = Color.white;
            
            EditorGUILayout.BeginVertical();
            EditorGUILayout.LabelField("手动添加key-value：");
            EditorGUILayout.BeginHorizontal();
            EditorGUILayout.LabelField("Key:", GUILayout.Width(40.0f));
            inputKey=EditorGUILayout.TextField(inputKey);
            EditorGUILayout.LabelField("Object:", GUILayout.Width(40.0f));
            inputObject=EditorGUILayout.ObjectField(inputObject,typeof(GameObject)) as GameObject;
            if(inputObject!=null)
                inputKey = inputObject.name;
            if (GUILayout.Button("Add"))
            {
                view.AddObHandItem(inputKey,inputObject);
                SaveAll();
            }
            EditorGUILayout.EndHorizontal();
            
            
            if (GUILayout.Button("点击自动获取所有子物体",GUILayout.Height(30.0f)))
            {
                view.FindAllGameObejct();
                SaveAll();
            }
            EditorGUILayout.BeginHorizontal();
            GUI.color = Color.red;
            if (GUILayout.Button("清空自动添加数据",GUILayout.Height(30.0f)))
            {
                ClearAutoData();
                SaveAll();
            }
            if (GUILayout.Button("清空手动添加数据",GUILayout.Height(30.0f)))
            {
                ClearHandData();
                SaveAll();
            }
            GUI.color = Color.white;
            EditorGUILayout.EndHorizontal();
            
            obHandDicTarget = EditorGUILayout.Foldout(obHandDicTarget, "以下为所有主动添加key-value：");
            if (obHandDicTarget)
            {
                ShowDicData(view.objHandKeyLists, view.objHandLists);
            }
            
            obDicTarget = EditorGUILayout.Foldout(obDicTarget, "以下为所有自动添加key-value：");
            if (obDicTarget)
            {
                ShowDicData(view.objKeyLists, view.objLists);
            }
            EditorGUILayout.EndVertical();
        }

        public void SaveAll()
        {
            Repaint ();
            if (GUI.changed) {
                Undo.RegisterCompleteObjectUndo (target, "save");
            }
        }

        private void ShowDicData(List<string> keyLists,List<GameObject> objLists)
        {
            for (int i = 0; i < objLists.Count; i++)
            {
                EditorGUILayout.BeginHorizontal();
                EditorGUILayout.LabelField("Key:", GUILayout.Width(40.0f));
                EditorGUILayout.DelayedTextField(keyLists[i]);
                EditorGUILayout.LabelField("Object:", GUILayout.Width(40.0f));
                EditorGUILayout.ObjectField(objLists[i],typeof(GameObject));
                if (GUILayout.Button("-"))
                {
                    view.objKeyLists.Remove(keyLists[i]);
                    view.objLists.Remove(objLists[i]);
                    SaveAll();
                }
                EditorGUILayout.EndHorizontal();
            }
        }
        
        public void ClearAutoData()
        {
            view.objKeyLists.Clear();
            view.objLists.Clear();
        }

        public void ClearHandData()
        {
            view.objHandKeyLists.Clear();
            view.objHandLists.Clear();
        }
        
        
        public string CopyVarCreateMessage()
        {
            StringBuilder s=new StringBuilder();
            s.Append("\t\t"+"private IngameUIViewTools t;\n");
            foreach (var key in view.objKeyLists)
            {
                s.Append(GetVarCreateStringByKey(key)+";\n");
            }
            return s.ToString();
        }

        public string CopyVarSetValueMessage()
        {
            StringBuilder s=new StringBuilder();
            s.Append("\t\tt = IngameUIService.CheckHasUIViewTools(transform);\n");
            foreach (var key in view.objKeyLists)
            {
                s.Append(GetVarSetStringByKey(key)+";\n");
            }
            return s.ToString();
        }


        public string GetVarAllCode()
        {
            StringBuilder s=new StringBuilder();
            s.Append(CopyVarCreateMessage());
            s.Append("\tprivate void Awake()\n"+"\t{\n");
            s.Append(CopyVarSetValueMessage());
            s.Append("\t}");
            return s.ToString();
        }
        
        public string GetVarCreateStringByKey(string key)
        {
            int index = key.IndexOf("_");
            string head = key.Substring(0, index + 1);
            string value = "";
            varMessage.TryGetValue(head,out value);
            return "\tprivate " + value + " " + key;
        }

        public string GetVarSetStringByKey(string key)
        {
            int index = key.IndexOf("_");
            string head = key.Substring(0, index + 1);
            string value = "";
            varMessage.TryGetValue(head,out value);
            if (value == "GameObject")
            {
                return "\t\t"+key+" = t.GetComponentByObjectName<Transform>(\"" + key+"\").gameObject";
            }
            else
            {
                return "\t\t"+key+" = t.GetComponentByObjectName<" + value + ">(\"" + key+"\")";
            }
        }
    }
}
