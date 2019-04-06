using System.Collections.Generic;
using UnityEditor;
using UnityEngine;

namespace Editor
{
    [CustomEditor(typeof(AutoMoveController))]
    public class AutoMoveContorllerEditor : UnityEditor.Editor
    {
        private AutoMoveController view;
        private List<Vector3> tempList;
        private bool isOpen = true;
        private int setPosIndex=1;
        private void OnEnable()
        {
            view = target as AutoMoveController;
        }

        public override void OnInspectorGUI()
        {
            base.OnInspectorGUI();
            EditorGUILayout.BeginVertical();
            if (GUILayout.Button("添加当前坐标为" + (view.movePoint.Count + 1) + "个寻路点(Ctrl+Shift+Q)",GUILayout.Height(30)))
            {
                Vector3 go = view.gameObject.transform.position;
                Vector3 v = new Vector3(go.x,go.y,go.z);
                view.AddMovePos(v);
                Save();
            }

            EditorGUILayout.BeginHorizontal();
            EditorGUILayout.LabelField("归位到这个位置:",GUILayout.Width(120));
            setPosIndex = EditorGUILayout.IntField(setPosIndex, GUILayout.Width(50));
            if (GUILayout.Button("确认",GUILayout.Height(30)))
            {
                if (setPosIndex > view.movePoint.Count)
                {
                    Debug.LogError("你跳转到了没有的坐标点！");
                }else
                    view.SetPos(setPosIndex);
            }
            EditorGUILayout.EndHorizontal();
            if (GUILayout.Button("Clear",GUILayout.Height(30)))
            {
                view.Clear();    
                Save();    
            }
            if (GUILayout.Button("Save",GUILayout.Height(30)))
            {  
                Save();    
            }
            isOpen= EditorGUILayout.Foldout(isOpen,"以下为自动寻路的点");
            if (isOpen)
            {
                tempList = view.movePoint;
                for (int i = 0; i < tempList.Count; i++)
                {   
                    EditorGUILayout.BeginHorizontal();
                    EditorGUI.BeginDisabledGroup(true);
                    EditorGUILayout.LabelField((i+1)+":",GUILayout.Width(20));
                    EditorGUILayout.LabelField("X:",GUILayout.Width(20));
                    EditorGUILayout.FloatField(tempList[i].x,GUILayout.Width(50));
                    EditorGUILayout.LabelField("Y:",GUILayout.Width(20));
                    EditorGUILayout.FloatField(tempList[i].y,GUILayout.Width(50));
                    EditorGUILayout.LabelField("Z:",GUILayout.Width(20));
                    EditorGUILayout.FloatField(tempList[i].z,GUILayout.Width(50));
                    EditorGUI.EndDisabledGroup();  
                    if (GUILayout.Button("删除"))
                    {
                        tempList.RemoveAt(i);
                        Save();
                    }
                    EditorGUILayout.EndHorizontal();
                }
            }
            EditorGUILayout.EndVertical();
        }

        public void Save()
        {
            Repaint();
            GUI.changed = true;
            EditorUtility.SetDirty(target);
        }
    }
}
