using UnityEditor;
using UnityEngine;

public class ConfigBase<T>: ScriptableObject where T:ScriptableObject{

	public static T Ins
	{
		get
		{
			if (ins == null)
			{
				Init();
			}
			return ins;
		}
	}
	private static T ins;

	public static void Init()
	{
		ins = CreateInstance<T> ();
		AssetDatabase.CreateAsset (ins, "Assets/Resources/Configs/"+typeof(T).Name+".asset");
		AssetDatabase.Refresh ();
	}
}
