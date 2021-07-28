/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.piano.service.admin.Impl;

import com.piano.dao.NewsDAO;
import com.piano.entity.News;
import com.piano.service.admin.ManageNewsService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Administrator
 */
@Service
public class ManageNewsServiceImpl implements ManageNewsService {

    @Autowired
    private NewsDAO newsDAO;

    @Override
    public List<News> getAllNews() {
        return newsDAO.getAllNews();
    }

    @Override
    public void addNews(News news) {
        newsDAO.addNews(news);
    }

    @Override
    public void deleteNews(int id) {
        newsDAO.deleteNews(id);
    }

    @Override
    public News findNewsByID(int id) {
        return  newsDAO.findNewsById(id);
    }

    @Override
    public void updateNews(News news) {
        newsDAO.updateNews(news);
    }

    @Override
    public List<News> findNewsBySearch(String txt_search) {
        return newsDAO.findNewsBySearch(txt_search);
    }

}
