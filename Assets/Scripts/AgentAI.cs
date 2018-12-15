using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

[RequireComponent(typeof(NavMeshAgent))]
public class AgentAI : MonoBehaviour {

    [Header("始终会在一个圆圈之内行动吗")]
    public bool fixedCircle = true;

    [Header("寻路的半径")]
    public float radius = 3.0f;

    [Header("每次行程花的时间")]
    public float wanderTimer = 2.0f;

    private NavMeshAgent navMeshAgent;

    private Vector3 startPosition;

    private float timer;

	// Use this for initialization
	void Start () {
        navMeshAgent = GetComponent<NavMeshAgent>();
        startPosition = transform.position;
        timer = wanderTimer;
	}
	
	// Update is called once per frame
	void Update () {
        timer += Time.deltaTime;

        if (timer >= wanderTimer)
        {
            Vector3 newPos = MathCore.RandomNavSphere(startPosition, radius, -1);
            try
            {
                if (navMeshAgent == null || navMeshAgent.enabled == false) return;
                else navMeshAgent.SetDestination(newPos);
            }
            catch (System.Exception e) { };
            timer = 0;
        }
    }
}
