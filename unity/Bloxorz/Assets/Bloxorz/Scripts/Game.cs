using System;
using System.IO;
using UnityEngine;

namespace Bloxorz
{
    /// <summary>
    /// This is the main type for your game.
    /// </summary>
    public class Game : MonoBehaviour
    {
        public Vecx vecx;

        [HideInInspector]
        public AudioSource vectrexStart;

        private bool intro;

        private void Awake()
        {
            Application.targetFrameRate = 30;
        }

        /// <summary>
        /// Allows the game to perform any initialization it needs to before starting to run.
        /// This is where it can query for any required services and load any non-graphic
        /// related content.  Calling base.Initialize will enumerate through any components
        /// and initialize them as well.
        /// </summary>
        private void Start()
        {
            vecx.Start();
            vecx.LoadContent();

            Intro();
        }

        private void Update()
        {
            if (Input.GetKeyDown(KeyCode.Escape))
                Application.Quit();

            vecx.CustomUpdate();
            vecx.Draw();
        }

        private void Intro()
        {
            if (!intro)
            {
                vectrexStart = gameObject.AddComponent<AudioSource>();
                AudioClip clip = Resources.Load<AudioClip>("Sound/vectrex-start");
                vectrexStart.clip = clip;
                vectrexStart.Play();
                //Debug.Log(intro);
            }

            intro = true;
        }
    }
}
