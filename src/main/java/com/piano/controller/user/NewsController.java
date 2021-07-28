/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.piano.controller.user;

import com.piano.dao.NewsDAO;
import com.piano.entity.News;
import com.piano.service.user.NewsService;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author Administrator
 */
@Controller
public class NewsController {

    @Autowired
    private NewsService newsService;

    @RequestMapping("/news")
    public String news(Model model,
            @RequestParam(name = "id", required = false, defaultValue = "0") int id,
            @RequestParam(name = "page", required = false, defaultValue = "1") int page,
            @RequestParam(name = "s", required = false) String search,
            @RequestParam(name = "c", required = false) String cate,
            HttpSession session) {
        if (id != 0) {
            News news = newsService.findNewsByID(id);
            model.addAttribute("news", news);
            model.addAttribute("listRelatedN", newsService.findRelatedNews(id, news.getCategory()));
            model.addAttribute("modify", 1);
        } else {
            List<News> listN = new ArrayList<>();
            int endPage = 0;
            if (search != null) {
                listN = newsService.findNewsBySearch(search);
            } else if (cate != null) {
                listN = newsService.findNewsByCate(cate);
            } else {
                listN = newsService.findNewsByPage(page);
                endPage = newsService.endpage();
            }

            model.addAttribute("modify", 0);
            model.addAttribute("endPage", endPage);
            model.addAttribute("listN", listN);
            model.addAttribute("page", page);
        }
        session.setAttribute("listRecentPost", newsService.findRecentPost());
        session.setAttribute("listPNew", newsService.findProductsNew());
        return "user/news";
    }
}
