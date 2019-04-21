using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AutoMoveController : MonoBehaviour
{

	[HideInInspector]
	public List<Vector3> movePoint=new List<Vector3>();
	[Header("移动速度")]
	public float autoMoveSpeed = 1;
	[Header("判断到达目标点的偏移值")]
	public float disOffset = 0.2f;
	[Header("转弯时等待的时间")]
	public float changePointStayTime = 0.5f;
	[Header("旋转改变速度")]
	public float rotateSpeed = 5f;

	[Header("初始移动顺序：打钩为正常递增下标")]
	public bool isIncrease=true;//表示现在坐标点是增加还是减少
	//[Header("绘制移动路径显示时的偏移")]
	private Vector3 yOffset = new Vector3(0,0.25f,0);
	private int nowIndex = 0;//当前移动位置下标，从0开始
	private int nextIndex = 0;//目标移动位置下标，从0开始
	private float stayTime = 0;

	private void Awake()
	{
		stayTime = changePointStayTime;
		if (movePoint.Count <= 1)
		{
			Debug.Log("物体："+ name +" 没有超过一个的自动移动坐标，请设置否则无法移动");
		}
	}

	private void Update()
	{
		if (movePoint.Count <= 1) return;
		stayTime -= Time.deltaTime;
		MoveService.Ins.LerpTransform(movePoint[nextIndex],transform,rotateSpeed);
		//如果还在等待就不移动只转动
		if(stayTime > 0){return;}
		transform.position = Vector3.MoveTowards(transform.position, movePoint[nextIndex], autoMoveSpeed*Time.deltaTime);
		ChangeNextPoint();
	}
	/// <summary>
	/// 进入下一个移动点
	/// </summary>
	void ChangeNextPoint()
	{
		if(Vector3.Distance(transform.position,movePoint[nextIndex]) <= disOffset)
		{
			nowIndex = nextIndex;
			if (nextIndex >= movePoint.Count-1)
			{
				isIncrease = false;
			}
			else if(nextIndex <= 0)
			{
				isIncrease = true;
			}

			if (isIncrease)
			{
				nextIndex++;
			}
			else
			{
				nextIndex--;
			}
			stayTime = changePointStayTime;
		}
	}

	public void AddMovePos(Vector3 v)
	{
		movePoint.Add(v);
	}
	/// <summary>
	/// 1开始的位置下标
	/// </summary>
	/// <param name="index"></param>
	public void SetPos(int index)
	{
		transform.position = movePoint[index - 1];
	}
	
	public void Clear()
	{
		movePoint.Clear();
	}

	private void OnDrawGizmos()
	{
		if (GameConfig.Ins.isShowAutoMoveLineInScene)
		{
			DrawWay();
		}
	}

	private void OnDrawGizmosSelected()
	{
		DrawWay();
	}
	public void DrawWay()
	{
		//绘制自动移动路径
		Gizmos.color = Color.green;
		for (int i = 0; i < movePoint.Count-1; i++)
		{
			Gizmos.DrawLine(movePoint[i]+yOffset,movePoint[i+1]+yOffset);
		}
	}
}
