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
    [HideInInspector]
    private bool movementLock = true;

    [Header("玩家移动速度")]
    public float speed = 1f;

    private void Start()
    {
        currentHP = maxHP;
        //Messenger<int, int>.Broadcast(UIEvent.Update_PlayerHP, maxHP, maxHP);
    }

    public void FixedUpdate()
    {
        if (movementLock) return;
        float h;
        float v;
        h = Input.GetAxis("Horizontal");
        v = Input.GetAxis("Vertical");
        if (h == 0 && v == 0)
        {
            return;
        }
        Move(h, v);
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
    }

    /// <param name="factor">扣多少血</param>
    public void OnHitObstacle(int factor = 1)
    {
        OnHealthChange(-factor);
        //通知UI
        Messenger<int, int>.Broadcast(UIEvent.Update_PlayerHP, currentHP, maxHP);
    }

    public void SetMovementLock(bool isOpen)
    {
        movementLock = isOpen;
    }
}
