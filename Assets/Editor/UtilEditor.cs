using System.Reflection;
using Editor;
using UnityEditor;
using UnityEngine;
public class UtilEditor : EditorWindow
{
	[MenuItem("WWZUtil/自动移动相关/添加选中的目标当前位置到路径中 %#Q")]
	static void AddSelectAutoMovePointPos()
	{
		Transform[] transforms = Selection.transforms;
		for (int i = 0; i < transforms.Length; i++)
		{
			AutoMoveController script = transforms[i].GetComponent<AutoMoveController>();
			if (script == null)
			{
				Debug.LogError(transforms[i].name+"物体上没有AutoMoveController脚本，无法添加当前坐标");
			}
			else
			{
				Vector3 go = transforms[i].position;
				Vector3 v = new Vector3(go.x,go.y,go.z);
				script.AddMovePos(v);
				//暂时不知道怎么反射到自己的方法去使用
			}
		}
	}

}
