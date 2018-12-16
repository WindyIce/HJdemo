/**********************************************************
 * 
 * 主题：UI框架
 * 
 * 功能：配置文件的管理类
 * 
 * 
 * */
using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System.IO;
using LitJson;


namespace UIFW{

    public class ConfigManager{
        private Dictionary<string, string> _appSetting;
        private List<KeyValueNode> keyValueNode=new List<KeyValueNode>();
        public Dictionary<string, string> appSetting
        {
            get
            {
                return _appSetting;
            }
        }
        //构造函数
        public ConfigManager(string path)
        {
            
            _appSetting = new Dictionary<string, string>();

            loadConfig(path);

            
        }

        //加载配置资源
        private void loadConfig(string path)
        {
            if (string.IsNullOrEmpty(path))
            {
                return;
            }
            //public void CharacterVoice(string playernum)
            //{
            //    UnityEngine.Object tmpSong = Resources.Load<AudioClip>("Audios/Player" + playernum + "Howl");
            //    //UnityEngine.Object tmpSong = UnityEditor.AssetDatabase.LoadAssetAtPath("Assets/Audios/Player"+playernum+"Howl.mp3", typeof(AudioClip));
            //    AudioSource music = GameObject.Find("CharacterAudio").GetComponent<AudioSource>();
            //    music.clip = (AudioClip)Instantiate(tmpSong);
            //    music.Play();
            //}
            string filePath = "Configs/" + path;
            string tmp = Resources.Load<TextAsset>(filePath).text; ;
            keyValueNode = JsonMapper.ToObject<List<KeyValueNode>>(tmp);
            setAppSetting(keyValueNode);
            //if (PalformDefine.palformState == 0) //其他平台
            //{
                
            //}
            //else //window平台
            //{
            //    //string filePath = Application.dataPath + "/Resources/Configs/" + path + ".json";
            //    string filePath =Application.dataPath + "/StreamingAssets" + "/Resources/Configs/" + path + ".json";
            //    if (File.Exists(filePath))
            //    {
            //        KeyValueInfo keyValueInfo = new KeyValueInfo();

            //        StreamReader sr = new StreamReader(filePath);
            //        //string str = sr.ReadToEnd();

            //        sr.Close();

            //        //KeyValueNode keyValueNode=new KeyValueNode();
            //        keyValueNode = JsonMapper.ToObject<List<KeyValueNode>>(str);
            //        setAppSetting(keyValueNode);
            //        //keyValueInfo = JsonMapper.ToObject<KeyValueInfo>(str);
            //        //setAppSetting(keyValueInfo);

            //        Debug.Log("配置文件加载成功");
            //    }
            //    else
            //    {

            //        Debug.Log("配置文件路径错误");
            //    }
            //}
        }

        //将读取到的对象转为_appSetting中的内容
        private void setAppSetting(List<KeyValueNode> keyValueNode)
        {
            //int count = keyValueInfo.configInfo.Count;
            //for(int i = 0; i < count; i++)
            //{
            //    _appSetting[keyValueInfo.configInfo[i].Key] = keyValueInfo.configInfo[i].Value;
            //}
            //_appSetting[keyValueNode.Key] = keyValueNode.Value;
            int count = keyValueNode.Count;
            for(int i = 0; i < count; i++)
            {
                _appSetting[keyValueNode[i].Key] = keyValueNode[i].Value;
            }
        }
        //获取配置的数量
        public int getAppSettingCount()
        {
            if (_appSetting != null && _appSetting.Count >= 1)
            {
                return _appSetting.Count;
            }
            else
            {
                return 0;
            }
        }
        
    }
    


    #region 配置文件的数据储存类型

    /// <summary>
    /// 以链表的形式储存数据
    /// </summary>

    
    [System.Serializable]
    internal class KeyValueInfo
    {
        public List<KeyValueNode> configInfo = null;
    }
    

    [System.Serializable]
    internal class KeyValueNode
    {
        public string Key = null;

        public string Value = null;
    }
    #endregion
}
