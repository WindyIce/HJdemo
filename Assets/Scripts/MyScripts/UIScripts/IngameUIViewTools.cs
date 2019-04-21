using System.Collections.Generic;
using UnityEngine;

namespace MyScripts.UIScripts
{
    public class IngameUIViewTools : MonoBehaviour
    {
        private bool isInit=false;
        public List<string> objKeyLists=new List<string>();
        public List<GameObject> objLists=new List<GameObject>();
        
        public Dictionary<string,GameObject> obDic=new Dictionary<string, GameObject>();
        //以下为手动添加
        public List<string> objHandKeyLists=new List<string>();
        public List<GameObject> objHandLists=new List<GameObject>();
        public Dictionary<string,GameObject> obHandDic=new Dictionary<string, GameObject>();
        public static readonly List<string> keyHeads =
            new List<string>{
                "btn_","image_","txt_","txtPro_","ipt_","tge_","sv_","sli_","sb_","iptTmp_","texture_","tab_","tabGp_","go_","parent_"
            };

        private void Awake()
        {
            InitData();
        }
        public void InitData()
        {
             if (isInit&&obDic.Count!=0) return;

            for (int i = 0; i < objLists.Count; i++)
            {
                obDic.Add(objKeyLists[i],objLists[i]);
            }
            for (int i = 0; i < objHandLists.Count; i++)
            {
                obHandDic.Add(objHandKeyLists[i],objHandLists[i]);
            }
            
            isInit = true;
        }
        
        /// <summary>
        /// 通过名字和类型得到对应的物体的组件
        /// </summary>
        /// <param name="key"></param>
        /// <typeparam name="T"></typeparam>
        /// <returns></returns>
        public T GetComponentByObjectName<T>(string key)
        {
            InitData();
            Dictionary<string, GameObject> dic;
            if (obDic.ContainsKey(key))
            {
                dic = obDic;
            }
            else if(obHandDic.ContainsKey(key))
            {
                dic = obHandDic;
            }else{
                Debug.LogError("物体："+transform.name+"不存在名字为："+key+"的ui子物体");
                return default(T);
            }
            GameObject target;
            dic.TryGetValue(key,out target);
            T t=target.GetComponent<T>();
            if (t == null)
            {
                Debug.LogError("物体："+transform.name+"的子物体："+key+"不存在组件："+t.GetType());
                return default(T);
            }
            else
            {
                return t;
            }
        }


        #region 编辑器部分

        private void AddObItem(string key,GameObject go)
        {
            if (objKeyLists.Contains(key))
            {
                Debug.LogWarning("物体："+transform.name+"出现重复的名字！："+key);
                return;
            }
            objKeyLists.Add(key);
            objLists.Add(go);
        }

        public void AddObHandItem(string key,GameObject go)
        {
            if (objHandKeyLists.Contains(key))
            {
                Debug.LogWarning("物体："+transform.name+"出现重复的名字！："+key);
                return;
            }
            objHandKeyLists.Add(key);
            objHandLists.Add(go);
        }
        public void FindAllGameObejct()
        {
            objKeyLists.Clear();
            objLists.Clear();
            Transform[] childs = transform.GetComponentsInChildren<Transform>(true);
            for (int i = 0; i < childs.Length; i++)
            {
                int index = childs[i].name.IndexOf("_");
                if (index == -1)
                {
                    continue;
                }
                string head = childs[i].name.Substring(0, index + 1);
                if (keyHeads.Contains(head))
                {
                    AddObItem(childs[i].name,childs[i].gameObject);
                }
            }
            Debug.Log("刷新子物体列表完成");
        }


        #endregion
    }
}
