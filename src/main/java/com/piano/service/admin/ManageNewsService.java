/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.piano.service.admin;

import com.piano.entity.News;
import java.util.List;

/**
 *
 * @author Administrator
 */
public interface ManageNewsService {
    public List<News> getAllNews();
    public void addNews(News news);
    public void deleteNews(int id);
    public News findNewsByID(int id);
    public void updateNews(News news);
     public List<News> findNewsBySearch(String txt_search);
}
