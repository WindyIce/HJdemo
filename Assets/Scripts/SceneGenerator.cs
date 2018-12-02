using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SceneGenerator : BaseSingleton<SceneGenerator> {

    public GameObject[,] prefabsArray;  // 这个在调用Init之前一定是赋值完毕的
    [Header("长度有多少个格子")]
    public int mapLength = 17;
    [Header("高度有多少个格子")]
    public int mapHeight = 13;
    [Header("左上角的点的位置")]
    public Transform originPoint;
    [Header("每个格子的长度")]
    public float eachLength = 5f;
    [Header("每个格子的高度")]
    public float eachHeight = 5f;

    public Vector3 rightVec = new Vector3(0, 0, 1);
    public Vector3 downVec = new Vector3(1, 0, 0);

    public void Init()
    {
        for(int i = 0; i < mapLength; i++)
        {
            for(int j = 0; j < mapHeight; j++)
            {
                GameObject item = Instantiate(prefabsArray[i, j]);
                item.transform.position = originPoint.position +
                    i * eachLength * rightVec +
                    j * eachHeight * downVec;
            }
        }
    }

	// Use this for initialization
	void Start () {

	}
	
	// Update is called once per frame
	void Update () {
		
	}
}

public class Map
{
    public GameObject[,] prefabsArray;

}
