import java.awt.*;
import java.awt.event.*;
import java.awt.geom.Point2D;

import javax.swing.*;

class VectrexMonitor extends JPanel {
	Graphics g;
	int i = 0;

	class Point3d {
		public Point3d(double x, double y, double z) {
			this.x = x;
			this.y = y;
			this.z = z;
		}

		public Point3d translate(double x, double y, double z) {
			return new Point3d(this.x + x, this.y + y, this.z + z);
		}

		public Point3d rotate(double ax, double ay, double az) {
			return rotateX(ax).rotateY(ay).rotateZ(az);
		}

		public Point3d rotateX(double angle) {
			double ca = Math.cos(angle);
			double sa = Math.sin(angle);
			double y2 = y * ca - z * sa;
			double z2 = z * ca + y * sa;
			return new Point3d(x, y2, z2);
		}

		public Point3d rotateY(double angle) {
			double ca = Math.cos(angle);
			double sa = Math.sin(angle);
			double x2 = x * ca + z * sa;
			double z2 = z * ca - x * sa;
			return new Point3d(x2, y, z2);
		}

		public Point3d rotateZ(double angle) {
			double ca = Math.cos(angle);
			double sa = Math.sin(angle);
			double x2 = x * ca - y * sa;
			double y2 = y * ca + x * sa;
			return new Point3d(x2, y2, z);
		}

		public double x;
		public double y;
		public double z;
	}

	public VectrexMonitor() {
		ActionListener animate = new ActionListener() {
			public void actionPerformed(ActionEvent ae) {
				repaint();
			}
		};
		Timer timer = new Timer(20, animate);
		timer.start();
	}

	int x3d(double x, double y, double z) {
		return (int) (14 * x - 6 * z + 0.5);
	}

	int y3d(double x, double y, double z) {
		return (int) (3 * x + 13 * y + 8 * z + 0.5);
	}

	void drawLine(double x0, double y0, double z0, double x1, double y1, double z1) {
		int sx0 = x3d(x0, y0, z0);
		int sy0 = y3d(x0, y0, z0);
		int sx1 = x3d(x1, y1, z1);
		int sy1 = y3d(x1, y1, z1);
		if (sx0 != lastX || sy0 != lastY) {
			// blank line
			int dx = sx0 - lastX;
			int dy = sy0 - lastY;
			System.out.println("	0, " + dy + ", " + dx + ",");
			lastX = sx0;
			lastY = sy0;
		}

		// solid line
		int dx = sx1 - lastX;
		int dy = sy1 - lastY;
		System.out.println("	(int8_t) 255, " + dy + ", " + dx + ",");
		lastX = sx1;
		lastY = sy1;

		g.drawLine(sx0, sy0, sx1, sy1);
	}

	private int lastX;
	private int lastY;

	private void drawLine(Point3d p0, Point3d p1) {
		drawLine(p0.x, p0.y, p0.z, p1.x, p1.y, p1.z);
	}

	private void drawBlock(double angleX, double angleY, double angleZ, double xofs, double zofs, double width, double depth, double height, double xofs2, double zofs2) {
		lastX = 0;
		lastY = 0;

		// bottom
		Point3d p0 = new Point3d(xofs, 0, zofs);
		Point3d p1 = new Point3d(xofs + width, 0, zofs);
		Point3d p2 = new Point3d(xofs + width, 0, zofs + depth);
		Point3d p3 = new Point3d(xofs, 0, zofs + depth);

		// top
		Point3d p4 = p0.translate(0, height, 0);
		Point3d p5 = p1.translate(0, height, 0);
		Point3d p6 = p2.translate(0, height, 0);
		Point3d p7 = p3.translate(0, height, 0);

		// rotate
		p0 = p0.rotate(angleX, angleY, angleZ);
		p1 = p1.rotate(angleX, angleY, angleZ);
		p2 = p2.rotate(angleX, angleY, angleZ);
		p3 = p3.rotate(angleX, angleY, angleZ);
		p4 = p4.rotate(angleX, angleY, angleZ);
		p5 = p5.rotate(angleX, angleY, angleZ);
		p6 = p6.rotate(angleX, angleY, angleZ);
		p7 = p7.rotate(angleX, angleY, angleZ);

		xofs += xofs2;
		zofs += zofs2;
		
		// draw bottom
		drawLine(p0.translate(-xofs, 0, -zofs), p1.translate(-xofs, 0, -zofs));
		drawLine(p1.translate(-xofs, 0, -zofs), p2.translate(-xofs, 0, -zofs));
		drawLine(p2.translate(-xofs, 0, -zofs), p3.translate(-xofs, 0, -zofs));
		drawLine(p3.translate(-xofs, 0, -zofs), p0.translate(-xofs, 0, -zofs));

		// draw sides
		drawLine(p0.translate(-xofs, 0, -zofs), p4.translate(-xofs, 0, -zofs));
		drawLine(p1.translate(-xofs, 0, -zofs), p5.translate(-xofs, 0, -zofs));
		drawLine(p2.translate(-xofs, 0, -zofs), p6.translate(-xofs, 0, -zofs));
		drawLine(p3.translate(-xofs, 0, -zofs), p7.translate(-xofs, 0, -zofs));

		// draw top
		drawLine(p4.translate(-xofs, 0, -zofs), p5.translate(-xofs, 0, -zofs));
		drawLine(p5.translate(-xofs, 0, -zofs), p6.translate(-xofs, 0, -zofs));
		drawLine(p6.translate(-xofs, 0, -zofs), p7.translate(-xofs, 0, -zofs));
		drawLine(p7.translate(-xofs, 0, -zofs), p4.translate(-xofs, 0, -zofs));
	}

	public void paintComponent(Graphics g) {
		super.paintComponent(g);
		this.g = g;
		g.setColor(new Color(0, 0, 0));
		g.fillRect(0, 0, 500, 500);

		g.setColor(new Color(255, 255, 255));

		for (int x = 0; x < 7; x++) {
			//drawLine(x, 0, 0, x, 0, 6);
			//drawLine(0, 0, x, 6, 0, x);
		}

		// draw block
		g.setColor(new Color(0, 255, 255));

		int steps = 12;
		double angle = 2.0 * Math.PI / ((double) steps) / 4.0 * i;
		double angleMirrored = 2.0 * Math.PI - angle;
		double angleReversed = 2.0 * Math.PI / ((double) steps) / 4.0 * (steps - i - 1);
		double angleReversedMirrored = 2.0 * Math.PI - angleReversed;
		double angleX, angleY, angleZ, xofs, zofs, width, depth, height;

		// height 2, falling left
		System.out.println("const int8_t height2FallingLeft" + i + "[] = {");
		angleX = 0;
		angleY = 0;
		angleZ = angle;
		xofs = 0;
		zofs = 0;
		width = 1;
		depth = 1;
		height = 2;
		drawBlock(angleX, angleY, angleZ, xofs, zofs, width, depth, height, 0, 0);
		System.out.println("	1");
		System.out.println("};");

		// height 2, rising right
		System.out.println("const int8_t height2RisingRight" + i + "[] = {");
		angleZ = angleReversed;
		drawBlock(angleX, angleY, angleZ, xofs, zofs, width, depth, height, -2, 0);
		System.out.println("	1");
		System.out.println("};");

		// height 2, falling right
		System.out.println("const int8_t height2FallingRight" + i + "[] = {");
		angleX = 0;
		angleY = 0;
		angleZ = angleMirrored;
		xofs = -1;
		zofs = 0;
		width = 1;
		depth = 1;
		height = 2;
		drawBlock(angleX, angleY, angleZ, xofs, zofs, width, depth, height, 0, 0);
		System.out.println("	1");
		System.out.println("};");

		// height 2, rising left
		System.out.println("const int8_t height2RisingLeft" + i + "[] = {");
		angleZ = angleReversedMirrored;
		drawBlock(angleX, angleY, angleZ, xofs, zofs, width, depth, height, 1, 0);
		System.out.println("	1");
		System.out.println("};");

		// height 2, falling back
		System.out.println("const int8_t height2FallingBack" + i + "[] = {");
		angleX = angle;
		angleY = 0;
		angleZ = 0;
		xofs = 0;
		zofs = -1;
		width = 1;
		depth = 1;
		height = 2;
		drawBlock(angleX, angleY, angleZ, xofs, zofs, width, depth, height, 0, 0);
		System.out.println("	1");
		System.out.println("};");

		// height 2, rising front
		System.out.println("const int8_t height2RisingFront" + i + "[] = {");
		angleX = angleReversed;
		drawBlock(angleX, angleY, angleZ, xofs, zofs, width, depth, height, 0, 1);
		System.out.println("	1");
		System.out.println("};");

		// height 2, falling front
		System.out.println("const int8_t height2FallingFront" + i + "[] = {");
		angleX = angleMirrored;
		angleY = 0;
		angleZ = 0;
		xofs = 0;
		zofs = 0;
		width = 1;
		depth = 1;
		height = 2;
		drawBlock(angleX, angleY, angleZ, xofs, zofs, width, depth, height, 0, 0);
		System.out.println("	1");
		System.out.println("};");

		// height 2, rising back
		System.out.println("const int8_t height2RisingBack" + i + "[] = {");
		angleX = angleReversedMirrored;
		drawBlock(angleX, angleY, angleZ, xofs, zofs, width, depth, height, 0, -2);
		System.out.println("	1");
		System.out.println("};");

		// depth 2, rolling left
		System.out.println("const int8_t depth2RollingLeft" + i + "[] = {");
		angleX = 0;
		angleY = 0;
		angleZ = angle;
		xofs = 0;
		zofs = 0;
		width = 1;
		depth = 2;
		height = 1;
		drawBlock(angleX, angleY, angleZ, xofs, zofs, width, depth, height, 0, 0);
		System.out.println("	1");
		System.out.println("};");

		// depth 2, rolling right
		System.out.println("const int8_t depth2RollingRight" + i + "[] = {");
		angleX = 0;
		angleY = 0;
		angleZ = angleMirrored;
		xofs = -1;
		zofs = 0;
		width = 1;
		depth = 2;
		height = 1;
		drawBlock(angleX, angleY, angleZ, xofs, zofs, width, depth, height, 0, 0);
		System.out.println("	1");
		System.out.println("};");

		// width 2, rolling front
		System.out.println("const int8_t width2RollingFront" + i + "[] = {");
		angleX = angleMirrored;
		angleY = 0;
		angleZ = 0;
		xofs = 0;
		zofs = 0;
		width = 2;
		depth = 1;
		height = 1;
		drawBlock(angleX, angleY, angleZ, xofs, zofs, width, depth, height, 0, 0);
		System.out.println("	1");
		System.out.println("};");

		// width 2, rolling back
		System.out.println("const int8_t width2RollingBack" + i + "[] = {");
		angleX = angle;
		angleY = 0;
		angleZ = 0;
		xofs = 0;
		zofs = -1;
		width = 2;
		depth = 1;
		height = 1;
		drawBlock(angleX, angleY, angleZ, xofs, zofs, width, depth, height, 0, 0);
		System.out.println("	1");
		System.out.println("};");





		// height 1, falling left
		System.out.println("const int8_t height1FallingLeft" + i + "[] = {");
		angleX = 0;
		angleY = 0;
		angleZ = angle;
		xofs = 0;
		zofs = 0;
		width = 1;
		depth = 1;
		height = 1;
		drawBlock(angleX, angleY, angleZ, xofs, zofs, width, depth, height, 0, 0);
		System.out.println("	1");
		System.out.println("};");

		// height 1, falling right
		System.out.println("const int8_t height1FallingRight" + i + "[] = {");
		angleX = 0;
		angleY = 0;
		angleZ = angleMirrored;
		xofs = -1;
		zofs = 0;
		width = 1;
		depth = 1;
		height = 1;
		drawBlock(angleX, angleY, angleZ, xofs, zofs, width, depth, height, 0, 0);
		System.out.println("	1");
		System.out.println("};");

		// height 1, falling back
		System.out.println("const int8_t height1FallingBack" + i + "[] = {");
		angleX = angle;
		angleY = 0;
		angleZ = 0;
		xofs = 0;
		zofs = -1;
		width = 1;
		depth = 1;
		height = 1;
		drawBlock(angleX, angleY, angleZ, xofs, zofs, width, depth, height, 0, 0);
		System.out.println("	1");
		System.out.println("};");

		// height 1, falling front
		System.out.println("const int8_t height1FallingFront" + i + "[] = {");
		angleX = angleMirrored;
		angleY = 0;
		angleZ = 0;
		xofs = 0;
		zofs = 0;
		width = 1;
		depth = 1;
		height = 1;
		drawBlock(angleX, angleY, angleZ, xofs, zofs, width, depth, height, 0, 0);
		System.out.println("	1");
		System.out.println("};");





		if (i++ == steps) {
			String names[] = { "height2FallingLeft", "height2RisingRight", "height2FallingRight", "height2RisingLeft", "height2FallingBack",
					"height2RisingFront", "height2FallingFront", "height2RisingBack", "depth2RollingLeft", "depth2RollingRight", "width2RollingFront",
					"width2RollingBack",
                    "height1FallingLeft", "height1FallingRight", "height1FallingBack",
					"height1FallingFront" };
			for (int j = 0; j < names.length; j++) {
				System.out.println("const int8_t* " + names[j] + "[] __attribute__ ((section(\".text\"))) = {");
				for (i = 0; i < steps; i++) {
					System.out.println("	" + names[j] + i + ",");
				}
				System.out.println("};");
			}
			System.exit(0);
			i = 0;
		}
	}
}

public class Test {
	public static void main(String[] args) {
		VectrexMonitor panel = new VectrexMonitor();
		JFrame app = new JFrame("Vectrex Test");
		app.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		app.add(panel);
		app.setSize(500, 500);
		app.setVisible(true);
	}
}
