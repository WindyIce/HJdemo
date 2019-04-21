using MyScripts.UIScripts;
using UnityEngine;

public static class IngameUIService
{
    public static IngameUIViewTools CheckHasUIViewTools(this Transform t)
    {
        IngameUIViewTools tool = t.GetComponent<IngameUIViewTools>();
        if (tool == null)
        {
            Debug.LogError("预制体："+t.name+" 没有手动添加IngameUIViewTools组件，请事后手动添加（目前自动动态添加仅在运行时）");
            tool=t.gameObject.AddComponent<IngameUIViewTools>();
            tool.FindAllGameObejct();
        }
        return tool;
    }
}
