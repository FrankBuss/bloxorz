using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

namespace Bloxorz
{
    public class InputTouch : MonoBehaviour
    {
        public Vecx vecx;

        public void Button1()
        {
            Debug.Log("Button1");
            vecx._button1 = true;
        }
        public void Button2()
        {
            Debug.Log("Button2");
            vecx._button2 = true;
        }
        public void Button3()
        {
            Debug.Log("Button3");
            vecx._button3 = true;
        }
        public void Button4()
        {
            Debug.Log("Button4");
            vecx._button4 = true;
        }

        public void Left()
        {
            Debug.Log("Left");
            vecx._left = true;
        }
        public void Right()
        {
            Debug.Log("Right");
            vecx._right = true;
        }
        public void Up()
        {
            Debug.Log("Up");
            vecx._up = true;
        }
        public void Down()
        {
            Debug.Log("Down");
            vecx._down = true;
        }
    }
}
