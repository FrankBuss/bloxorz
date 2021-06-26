using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class DrawLine : MonoBehaviour
{
    public float size = 0.1f;

    public Material line;

    public List<Vector2> starts = new List<Vector2>();
    public List<Vector2> ends = new List<Vector2>();
    public List<Color> colors = new List<Color>();

    private float distance;
    private Vector2 offset;
    private Camera mainCamera;

    private void Start()
    {
        mainCamera = Camera.main;
    }

    private void FixedUpdate()
    {
        float screen = Screen.width * Screen.height;
        distance = screen / (Screen.width * 24);
        offset = new Vector2(-Screen.width / 20, -Screen.height / 20);
    }
    private void CreateLine()
    {
        if (!line)
        {
            Shader shader = Shader.Find("Unlit/Color");
            line = new Material(shader);
            line.hideFlags = HideFlags.HideAndDontSave;
        }
    }

    private void DrawConnectingLines()
    {
        if ((starts.Count > 0 && ends.Count > 0) && starts.Count == ends.Count)
        {
            for (int i = 0; i < starts.Count; i++)
            {
                line.SetPass(0);
                line.color = colors[i];

                Vector3 offset3 = new Vector3(offset.x, offset.y, 0);

                Vector3 start = new Vector3(starts[i].x * size, starts[i].y * size, gameObject.transform.position.z - distance);
                start = start + (mainCamera.transform.forward * distance) + offset3;

                Vector3 end = new Vector3(ends[i].x * size, ends[i].y * size, gameObject.transform.position.z - distance);
                end = end + (mainCamera.transform.forward * distance) + offset3;

                GL.Begin(GL.LINES);
                GL.Color(new Color(line.color.r, line.color.g, line.color.b, line.color.a));
                GL.Vertex(start);
                GL.Vertex(end);
                GL.End();

                //starts.RemoveAt(i);
                //ends.RemoveAt(i);
                //colors.RemoveAt(i);

                StartCoroutine(clearLine(i));
            }
        }
    }
    IEnumerator clearLine(int i)
    {
        yield return new WaitForEndOfFrame();

        int count = i + 1;

        if (starts.Count >= count && ends.Count >= count && colors.Count >= count)
        {
            List<Vector2> _starts = new List<Vector2>(starts);
            _starts.Reverse();
            _starts.RemoveAt((_starts.Count - 1) - i);
            starts = _starts;

            List<Vector2> _ends = new List<Vector2>(ends);
            _ends.Reverse();
            _ends.RemoveAt((_ends.Count - 1) - i);
            ends = _ends;

            List<Color> _colors = new List<Color>(colors);
            _colors.Reverse();
            _colors.RemoveAt((_colors.Count - 1) - i);
            colors = _colors;
        }
    }

    private void OnPostRender()
    {
        DrawConnectingLines();
    }

    private void OnDrawGizmos()
    {
        DrawConnectingLines();
    }
}