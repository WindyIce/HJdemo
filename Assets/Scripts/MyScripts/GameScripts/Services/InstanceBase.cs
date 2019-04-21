using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class InstanceBase<T> where T:class,new()
{

	public static T Ins
	{
		get
		{
			if (ins == null)
			{
				ins = new T();
			}
			return ins;
		}
	}
	private static T ins;

	public virtual void Init()
	{
		
	}

}
