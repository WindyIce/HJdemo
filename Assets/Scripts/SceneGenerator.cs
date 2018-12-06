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
    public float eachLength = 2f;
    [Header("每个格子的高度")]
    public float eachHeight = 2f;
    [Header("从地址读取地图（是），从内容直接读取地图(否)")]
    public bool readMapFromPath = true;
    [Header("地图文件的位置（相对）")]
    public string configFilePath = "";
    [Header("地图文件内容字符串")]
    public string mapContent = "";
    [Header("跟地图文件对应的数字一样的，把prefab拖进来")]
    public GameObject[] prefabIndexCorrespond; // prefab的序号对应的prefab
    /*
     * 0_space, 1_collection, 2_wall, 3_oil pollution, 4-6_plastic lv1-3, 7_entrance, 8_exit
     */

    [Header("是否通过程序来创建地板，如果否的话，就需要自己创建")]
    public bool createFloorByProgram = true;

    public Vector3 rightVec = new Vector3(1, 0, 0); // Length
    public Vector3 downVec = new Vector3(0, 0, -1); // Height

    public void Init()
    {
        try
        {
            string content = string.Empty;
            if (readMapFromPath)
                content = ConfigParser.GetFileContent(configFilePath);
            else
                content = mapContent;
            int[,] map = ConfigParser.GetIntArrayFromString(content, mapLength, mapHeight);
            if (createFloorByProgram) SpaceCreate();
            for (int i = 0; i < mapHeight; i++)
            {
                for (int j = 0; j < mapLength; j++)
                {
                    if (map[i, j] == 0) continue;
                    else if (map[i, j] == 3) continue;
                    GameObject obj = Instantiate(prefabIndexCorrespond[map[i, j]]);
                    obj.transform.position = originPoint.position
                        + eachLength * rightVec * (j + 0.5f) + eachHeight * downVec * (i + 0.5f);
                    if (map[i, j] == 2)
                    {
                        obj.transform.localScale = new Vector3(eachLength, 3.0f, eachHeight);
                    }
                }
            }
        }
        catch(System.Exception e)
        {
            print("地图文件读取错误: "+e);
        }

    }

    public void SpaceCreate()
    {
        if (originPoint == null)
        {
            GameObject originObject = new GameObject("origin");
            originPoint = originObject.transform;
            originPoint.position = Vector3.zero;
        }
        GameObject floor = GameObject.CreatePrimitive(PrimitiveType.Cube);
        floor.name = "floor";
        floor.transform.localScale = new Vector3(mapLength * eachLength, 1, mapHeight * eachHeight);
        floor.transform.position = new Vector3(
            originPoint.transform.position.x + mapLength * eachLength / 2,
            -0.5f,
            originPoint.transform.position.z - mapHeight * eachLength / 2);
    }

	// Use this for initialization
	void Start () {
        Init();
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
        int[,] toReturn = new int[mapHeight, mapLength];
        for(int i = 0; i < mapHeight; i++)
        {
            Debug.Log(i);
            string[] nums = lines[i].Split(new char[2] { ' ', '\r' });
            for(int j = 0; j < mapLength; j++)
            {
                char key = char.Parse(nums[j]);
                int index = (int)char.GetNumericValue(key);
                toReturn[i, j] = index;
            }
        }
        return toReturn;
    }

    public static string GetFileContent(string path, bool asyn = true)
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
