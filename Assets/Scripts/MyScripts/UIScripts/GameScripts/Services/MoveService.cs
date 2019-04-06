using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MoveService : InstanceBase<MoveService> {

	
	/// <summary>
	/// 旋转方向到指定目标
	/// </summary>
	/// <param name="target"></param>
	public void LerpTransform(Vector3 target,Transform tr,float rotateSpeed)
	{
		Quaternion targetQuaternion = Quaternion.FromToRotation(Vector3.forward, (target-tr.position).normalized);

		float targetRotationY = targetQuaternion.eulerAngles.y;
		Vector3 targetEuler = new Vector3(
			tr.eulerAngles.x, targetRotationY, tr.eulerAngles.z);
		tr.rotation = Quaternion.Slerp(
			tr.rotation, Quaternion.Euler(targetEuler), rotateSpeed * Time.deltaTime);
	}
}
