/* Copyright (c) Nishit Tated. All Rights Reserved.
 *  Project name: Online Election Voting System
 * This project is licensed under the MIT License, see LICENSE.
 */ 
package controller; 

import java.io.IOException; 
import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;  
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.io.*;
import java.awt.*;
import java.awt.image.BufferedImage;

public class CaptchaServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public CaptchaServlet() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int width = 155;
		int height = 50;
		BufferedImage buf = new BufferedImage(width,height, BufferedImage.TYPE_INT_RGB);
		HttpSession session=request.getSession();
		Graphics2D g = buf.createGraphics();    // creating Graphics2D
		GradientPaint gp = new GradientPaint(0,0,Color.orange, 0, height/2, Color.GREEN, true); // mixing of 2 colors
		
		g.setPaint(gp);
		Font f = new Font("Times New Roman", Font.BOLD, 22);
		g.setFont(f);
		g.fillRect(0, 0, width, height);
		g.setColor(new Color(0,153,255));
		
		String data = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
		String captcha = "";
		String captcha1="";
		char ch[] = data.toCharArray();
		for (int i=0; i<6; i++)
		{
			int j = (int)((Math.random()) * 62);
			captcha = captcha +" "+ch[j];
			captcha1 = captcha1+ch[j];
		}
		session.setAttribute("captcha", captcha1); 	// captcha  is name & captcha1 is value 
		g.drawString(captcha, 10, 35);
		g.dispose();
		response.setContentType("image/png");
		OutputStream os = response.getOutputStream();
		ImageIO.write(buf , "png",os);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		}

}
