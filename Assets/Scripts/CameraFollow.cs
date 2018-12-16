using System.Collections;
using UnityEngine;

public class CameraFollow : MonoBehaviour
{
    public Transform target; // The position that that camera will be following.
    public float smoothing = 5f; // The speed with which the camera will be following.

    public Vector3 offset; // The initial offset from the target.

    public float cameraPosX=0f; //相机固定坐标
    private Vector3 tempOffset;

    void Start()
    {
        // Calculate the initial offset.
        //offset = transform.position - target.position;
        cameraPosX = 18f;
    }

    private void OnDestroy()
    {

    }

    void FixedUpdate()
    {
        if (!target)
        {
            target = SceneManager.Instance().playerObject.transform;
        }
        // Create a postion the camera is aiming for based on the offset from the target.
        Vector3 targetCamPos = target.position + offset;
        targetCamPos = new Vector3(cameraPosX, targetCamPos.y, targetCamPos.z);
        // Smoothly interpolate between the camera's current position and it's target position.
        transform.position = Vector3.Lerp(transform.position, targetCamPos, smoothing * Time.deltaTime);
    }
}