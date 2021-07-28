/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.piano.utils;

import java.io.File;
import java.io.IOException;
import java.net.URLDecoder;
import java.nio.file.Files;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Administrator
 */
@WebServlet(urlPatterns = "/image/*")
public class LoadImageUtil extends HttpServlet{

    private String imagePath;
    
    @Override
    public void init() throws ServletException {
        imagePath = System.getProperty("catalina.home")+File.separator+"Upload/images/";
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String requestedImage = req.getPathInfo();
        if (requestedImage==null) {
            resp.sendError(HttpServletResponse.SC_NOT_FOUND);
            return;
        }
        File image = new File(imagePath,URLDecoder.decode(requestedImage, "UTF-8"));
        if(!image.exists()){
            resp.sendError(HttpServletResponse.SC_NOT_FOUND);
            return;
        }
        String contentType = getServletContext().getMimeType(image.getName());
        if(contentType==null||!contentType.startsWith("image")){
            resp.sendError(HttpServletResponse.SC_NOT_FOUND);
            return;
        }
        resp.reset();
        resp.setContentType(contentType);
        resp.setHeader("Content = Length", String.valueOf(image.length()));
        
        Files.copy(image.toPath(), resp.getOutputStream());
    }

    
    
    
    
}
