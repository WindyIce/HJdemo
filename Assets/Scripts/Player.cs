using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class Player : MonoBehaviour {

    [Header("玩家最大血量，出生血量")]
    public int maxHP = 15;
    [HideInInspector]
    public int currentHP;

    public Text healthText;

    Vector3 movement;

    Quaternion targetQuaternion;

    float targetRotationY = 0f;


    [Header("旋转改变速度")]
    public float rotationChangeSpeed = 1f;

    public bool movementLock = false;

    [Header("玩家移动速度")]
    public float speed = 1f;

	// Use this for initialization
	void Start () {
        currentHP = maxHP;
        if (healthText==null)
        {
            healthText = SceneManager.Instance().healthText;
        }
        healthText.text = "Health: " + currentHP;
        
	}
	
	// Update is called once per frame
	void Update () {
        if (!movementLock)
        {

        }
	}

    public void FixedUpdate()
    {
        if (movementLock) return;
        float h;
        float v;



        h = Input.GetAxis("Horizontal");
        v = Input.GetAxis("Vertical");
        //float h = CrossPlatformInputManager.GetAxisRaw("Horizontal");
        //float v = CrossPlatformInputManager.GetAxisRaw("Vertical");

        //float temp = v;
        //v = h;
        //h = -temp;
        

        Move(h, v);
        //Turning ();

        LerpTransform();
    }

    void Move(float h, float v)
    {
        //print("test" + h + " " + v);
        movement.Set(h, 0f, v);
        movement = movement.normalized * speed * 5.0f * Time.deltaTime;

        transform.position += movement;

        targetQuaternion = Quaternion.FromToRotation(Vector3.forward, movement);

        targetRotationY = targetQuaternion.eulerAngles.y;
    }

    void LerpTransform()
    {
        Vector3 targetEuler = new Vector3(
                transform.eulerAngles.x, targetRotationY, transform.eulerAngles.z);
        transform.rotation = Quaternion.Slerp(
            transform.rotation, Quaternion.Euler(targetEuler), rotationChangeSpeed * Time.deltaTime);
    }

    public void OnHealthChange(int factor)
    {
        currentHP += factor;
        if (currentHP >= maxHP) currentHP = maxHP;
        else if (currentHP <= 0)
        {
            currentHP = 0;
            movementLock = true;
            try
            {
                Messenger.Broadcast(SceneEvent.GAME_OVER);
            }
            catch(System.Exception e)
            {
                print(e);
            }
        }
        healthText.text = "Health: " + currentHP;
    }

    /// <param name="factor">扣多少血</param>
    public void OnHitObstacle(int factor = 1)
    {
        OnHealthChange(-factor);
    }
}
