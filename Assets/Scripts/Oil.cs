using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Oil : MonoBehaviour {

    private float length;
    private float height;
    private float timer;

    private bool hasCrash = false;
    public string polluteCoral1Name="Bleaching_Coral1";
    public string polluteCoral2Name="Bleaching_Coral2";
    public string polluteSeaweedName="Bleaching_Seaweed";
    private static Dictionary<string, GameObject> prefabNameDic = new Dictionary<string, GameObject>();

    [Header("扩张的速度")]
    public float makeSonSpeed;
    [Header("扩张的最大程度（倍率）")]
    public float maxSize;
    
    
    private void Awake()
    {
        length = transform.localScale.x;
        height = transform.localScale.y;
        timer = 0;
        var go = Resources.Load<GameObject>("Prefabs/OilUse/"+polluteCoral1Name);
        prefabNameDic.Add(TagType.Health_Coral1.ToString(),go);
        go = Resources.Load<GameObject>("Prefabs/OilUse/"+polluteCoral2Name);
        prefabNameDic.Add(TagType.Health_Coral2.ToString(),go);
        go = Resources.Load<GameObject>("Prefabs/OilUse/"+polluteSeaweedName);
        prefabNameDic.Add(TagType.Healthy_Seaweed.ToString(),go);
    }

    private int hasCreate = 0;
	
	void Update () {
        if (hasCrash)
        {
            timer += Time.deltaTime;
            if (transform.localScale.x <= length * maxSize)
                transform.localScale += new Vector3(length * makeSonSpeed * Time.deltaTime, 0f,
                height * makeSonSpeed * Time.deltaTime);
            else
            {
                hasCrash = false;
            }
        }
	}

    public void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag(TagType.Player.ToString()))
        {
            hasCrash = true;
            GetComponent<BoxCollider>().size = new Vector3(1, 1, 1);
            timer = 1.9f;
        }
        else
        {
            if (hasCrash && !other.CompareTag(TagType.Untagged.ToString()))
            {
                GameObject prefab;
                if (prefabNameDic.TryGetValue(other.tag, out prefab))
                {
                    GameObject newOther = Instantiate(prefab,other.transform.parent);
                    newOther.transform.localPosition = other.transform.localPosition;
                    other.gameObject.SetActive(false);
                    Destroy(other);
                }
            }
        }
    }

    public void OnTriggerStay(Collider other)
    {
        if (other.CompareTag(TagType.Player.ToString()))
        {
            if (timer >= 2f)
            {
                timer = 0f;
                SceneManager.Instance().player.OnHitObstacle();
            }
        }

    }

    private void OnTriggerExit(Collider other)
    {
        if (other.CompareTag(TagType.Player.ToString()))
        {
            timer = 0f;
        }
    }
}
