using System.Collections;
using UnityEngine;

public class CameraFollow : MonoBehaviour
{
    private Transform target; // The position that that camera will be following.
    
    [Header("跟随的速度")]
    public float smoothing = 5f; // The speed with which the camera will be following.
    [Header("坐标偏移")]
    public Vector3 offset; // The initial offset from the target.
    [Header("相机角度")]
    public Vector3 rotationOffset=new Vector3(60,0,0);
    public float cameraPosX=0f; //相机固定坐标
    private Vector3 tempOffset;

    void FixedUpdate()
    {
        if (!target)
        {
            target = SceneManager.Instance().PlayerObject.transform;
        }
        Vector3 targetCamPos = target.position + offset;
        targetCamPos = new Vector3(cameraPosX, targetCamPos.y, targetCamPos.z);
        transform.position = Vector3.Lerp(transform.position, targetCamPos, smoothing * Time.deltaTime);
        transform.eulerAngles = rotationOffset;
    }
}