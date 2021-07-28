/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.piano.controller.admin;

import com.piano.entity.News;
import com.piano.service.admin.ManageNewsService;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

/**
 *
 * @author Administrator
 */
@Controller
public class ManageNewsController {

    @Autowired
    private ManageNewsService newsService;

    @RequestMapping("admin/manage-news")
    public String manageNews(Model model,@RequestParam(name = "txt_search",required = false) String search) {
        List<News> listN = new ArrayList<>();
        if(search==null){
            listN = newsService.getAllNews();
        }else{
            listN = newsService.findNewsBySearch(search);
        }
        model.addAttribute("active", 6);
        model.addAttribute("listN", listN);
        return "admin/admin-manage-news";
    }

    @RequestMapping("admin/add-update-news")
    public String add_update_news(
            Model model,
            @RequestParam(name = "id", defaultValue = "0", required = false) int id,
            HttpSession session) {
        if (id == 0) {
            session.invalidate();
            model.addAttribute("uri", "add-news");
            model.addAttribute("option", "Thêm bài viết");
        } else {
            model.addAttribute("uri", "update-news");
            model.addAttribute("option", "Cập nhật bài viết");
            session.setAttribute("news", newsService.findNewsByID(id));
        }
        return "admin/admin-add-update-news";
    }

    @RequestMapping("admin/add-news")
    public String addNews(@RequestParam(name = "title", required = false) String title,
            @RequestParam(name = "image", required = false) MultipartFile multipartFile,
            @RequestParam(name = "cate",required = false) String cate,
            @RequestParam(name = "content", required = false) String content,
            @RequestParam(name = "shortContent", required = false) String shortContent,
            HttpServletRequest request) throws IOException {

        News news = new News();
        news.setTitle(title);
        news.setImage(request.getContextPath() + "/image/img_news/" + saveFile(multipartFile));
        news.setCategory(cate);
        news.setContent(content);
        Date date = new Date();
        SimpleDateFormat dateFormat = new SimpleDateFormat("dd-MM-yyyy HH:mm");
        news.setDatePost(dateFormat.format(date));
        news.setShortContent(shortContent);
        newsService.addNews(news);
        return "redirect:manage-news";
    }

    @RequestMapping("admin/update-news")
    public String updateNews(
            HttpSession session,
            @RequestParam(name = "title", required = false) String title,
            @RequestParam(name = "image", required = false) MultipartFile multipartFile,
            @RequestParam(name = "cate",required = false) String cate,
            @RequestParam(name = "content", required = false) String content,
            @RequestParam(name = "shortContent", required = false) String shortContent,
            HttpServletRequest request) throws IOException {

        News news = (News) session.getAttribute("news");
        if (!news.getTitle().equals(title)) {
            news.setTitle(title);
        }
        if (!news.getContent().equals(content)) {
            news.setContent(content);
        }
        if(!news.getCategory().equals(cate)){
            news.setCategory(cate);
        }
        if (!multipartFile.isEmpty()) {
            news.setImage(request.getContextPath() + "/image/img_news/" + saveFile(multipartFile));
        }
        if (!news.getShortContent().equals(shortContent)) {
            news.setShortContent(shortContent);
        }
        newsService.updateNews(news);
        return "redirect:manage-news";
    }

    @RequestMapping("admin/delete-news")
    public String deleteNews(@RequestParam(name = "id", required = false) int id) {
        newsService.deleteNews(id);
        return "redirect:manage-news";
    }

    private static String saveFile(MultipartFile multipartFile) throws IOException {
        if (multipartFile != null || !multipartFile.isEmpty()) {
            byte[] bytes = multipartFile.getBytes();
            String rootPath = System.getProperty("catalina.home");
            File dir = new File(rootPath + File.separator + "/Upload/images/img_news/");
            Path p = Paths.get(rootPath + File.separator + "/Upload/images/img_news/");
            if (!Files.exists(p)) {
                try {
                    Files.createDirectories(p);
                } catch (IOException e) {
                }
            } else {
                String fileName = multipartFile.getOriginalFilename();
                File fileServer = new File(dir.getAbsoluteFile() + File.separator + fileName);
                try (BufferedOutputStream outputStream = new BufferedOutputStream(new FileOutputStream(fileServer))) {
                    outputStream.write(bytes);
                }
                return fileName;
            }

        }
        return null;
    }
}
