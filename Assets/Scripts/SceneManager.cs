using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;

public class SceneManager : BaseSingleton<SceneManager> {

    public GameObject playerObject;
    public Player player;

    public Text coralText;
    public Text healthText;

    [Header("需要多少个珊瑚过关")]
    public int coralNeeded = 10;
    private int coralGot = 0;

    public GameObject exitPoint;

    #region 消息事件

    public Text noticeText;

    private void Awake()
    {
        Messenger.AddListener(SceneEvent.GAME_OVER, OnGameOver);
        Messenger.AddListener(SceneEvent.GAME_WIN, OnGameWin);
    }

    private void OnDestroy()
    {
        Messenger.RemoveListener(SceneEvent.GAME_OVER, OnGameOver);
        Messenger.RemoveListener(SceneEvent.GAME_WIN, OnGameWin);
    }

    private void OnGameOver()
    {
        noticeText.text = "You lose";
        StartCoroutine(WaitForEnd());
    }

    private void OnGameWin()
    {
        noticeText.text = "You win";
        StartCoroutine(WaitForEnd());
    }

    private IEnumerator WaitForEnd(float second = 3f)
    {
        yield return new WaitForSeconds(second);
        UnityEngine.SceneManagement.SceneManager.LoadScene(0);
    }

    #endregion

    public void OnCoralGet()
    {
        coralGot++;
        if (coralGot >= coralNeeded)
        {
            coralGot = coralNeeded;
            ExitPointOpen();
            coralText.text = "Enough Coral!";
        }
        else
        {
            coralText.text = "Coral still needed: " + (coralNeeded - coralGot);
        }
        Messenger<int>.Broadcast(UIEvent.Update_StillNeedNum, coralNeeded - coralGot);
    }

    public void ExitPointOpen()
    {
        exitPoint.SetActive(true);
    }

	// Use this for initialization
	void Start () {
        coralText.text = "Coral still needed: " + coralNeeded;
        noticeText.text = "";
        if (playerObject == null)
        {
            playerObject = GameObject.FindWithTag("Player");
            
        }
        if (player == null)
        {
            player = playerObject==null?null:playerObject.GetComponent<Player>();
        }
        if (exitPoint != null)
        {
            exitPoint.SetActive(false);
        }

	}
	
	// Update is called once per frame
	void Update () {
		
	}



}

public static class SceneEvent
{
    public const string OBSTACLE_CRASH = "OBSTACLE_CRASH";
    public const string GAME_OVER = "GAME_OVER";
    public const string GAME_WIN = "GAME_WIN";

}

public static class UIEvent {
    public const string Update_PlayerHP = "UpdatePlayerHPHandle";
    public const string Update_StillNeedNum = "UpdateStillNeedNum";
}
