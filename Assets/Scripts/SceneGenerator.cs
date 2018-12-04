using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SceneGenerator : BaseSingleton<SceneGenerator> {

    
    [Header("长度有多少个格子")]
    public int mapLength = 17; // right
    [Header("高度有多少个格子")] 
    public int mapHeight = 30; // down
    [Header("左上角的点的位置,拖个东西进来")]
    public Transform originPoint;
    [Header("每个格子的长度")]
    public float eachLength = 5f;
    [Header("每个格子的高度")]
    public float eachHeight = 5f;
    [Header("地图文件的位置（相对）")]
    public string configFilePath = "";
    [Header("跟地图文件对应的数字一样的，把prefab拖进来")]
    public GameObject[] prefabIndexCorrespond; // prefab的序号对应的prefab

    public Vector3 rightVec = new Vector3(1, 0, 0);
    public Vector3 downVec = new Vector3(0, 0, 1);

    public void Init()
    {
        try
        {
            string content = ConfigParser.GetFileContent(configFilePath);
            int[,] map = ConfigParser.GetIntArrayFromString(content, mapLength, mapHeight);
            for (int i = 0; i < mapLength; i++)
            {
                for (int j = 0; j < mapHeight; j++)
                {
                    GameObject obj = Instantiate(prefabIndexCorrespond[map[i, j]]);
                    obj.transform.position = originPoint.position + rightVec * i + downVec * j;
                }
            }
        }
        catch(System.Exception e)
        {
            print(e);
        }

    }

	// Use this for initialization
	void Start () {

	}
	
	// Update is called once per frame
	void Update () {
		
	}
}

public class ConfigParser
{
    public static int[,] GetIntArrayFromString(string content,int mapLength,int mapHeight)
    {
        string[] lines = content.Split('\n');
        int[,] toReturn = new int[mapLength, mapHeight];
        for(int i = 0; i < mapLength; i++)
        {
            string[] nums = lines[i].Split(new char[2] { ' ', '\r' });
            for(int j = 0; j < mapHeight; j++)
            {
                char key = char.Parse(nums[j]);
                int index = (int)char.GetNumericValue(key);
                toReturn[i, j] = index;
            }
        }
        return toReturn;
    }

    public static string GetFileContent(string path, bool asyn = false)
    {
        if (asyn)
        {
            TextAsset text = (TextAsset)Resources.Load(path);
            return text.text;
        }
        else
        {
            // Might get some problems here.
            TextAsset text = (TextAsset)Resources.LoadAsync(path).asset;
            return text.text;
        }
    }

}
