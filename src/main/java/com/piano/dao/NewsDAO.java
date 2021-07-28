/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.piano.dao;


import com.piano.entity.News;
import java.util.List;

/**
 *
 * @author Administrator
 */
public interface NewsDAO {
    public List<News> getAllNews();
    public void addNews(News news);
    public void deleteNews(int id);
    public News findNewsById(int id);
    public void updateNews(News news);
    public List<News> findNewsBySearch(String txt_search);
    public List<News> findNewsByPage(int page);
    public List<News> findNewsByCate(String cate);
    public long countNews();
    public List<News> findRelatedNews(int id,String cate);
    public List<News> findRecentPost();
}
