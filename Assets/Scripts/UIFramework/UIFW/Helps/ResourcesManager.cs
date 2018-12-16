/**********************************************************
 * 
 * 主题：UI框架
 * 
 * 功能：资源管理
 * 
 * */
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace UIFW
{
    public class ResourcesManager : MonoBehaviour
    {

        private static ResourcesManager instance;
        private Hashtable ht = null;

        public static ResourcesManager getInstance()
        {
            if (instance == null)
            {
                instance = new GameObject("ResourcesManager").AddComponent<ResourcesManager>();
            }
            return instance;
        }
        void Awake()
        {
            ht = new Hashtable();
        }

        
        public GameObject loadResource(string path, bool isCatch) 
        {
            if (ht.Contains(path))
            {
                return ht[path] as GameObject;
            }

            GameObject TResource = Resources.Load<GameObject>(path);
            if (TResource == null)
            {
                Debug.LogError(GetType() + "/getInstance()/TResource 提取的资源找不到，请检查。 path=" + path);
            }
            else if (isCatch)
            {
                ht.Add(path, TResource);
            }

            return TResource;
        }

        
        public GameObject loadAsset(string path, bool isCatch)
        {
            GameObject goObj = loadResource(path, isCatch);
            GameObject goObjClone = GameObject.Instantiate<GameObject>(goObj);
            if (goObjClone == null)
            {
                Debug.LogError(GetType() + "/loadAsset()/克隆资源不成功，请检查。 path=" + path);
            }
            return goObjClone;
        }
    }
}
