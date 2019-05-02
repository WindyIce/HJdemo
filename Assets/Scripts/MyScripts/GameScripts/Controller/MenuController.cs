using UnityEngine;

public class MenuController : MonoBehaviour {


	public void GoingGame()
	{
		UnityEngine.SceneManagement.SceneManager.LoadScene("SampleScene");
	}
	public void GoingMenu()
	{
		UnityEngine.SceneManagement.SceneManager.LoadScene("MainMenu");
	}
}
