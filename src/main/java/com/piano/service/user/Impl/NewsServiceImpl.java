/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.piano.service.user.Impl;


import com.piano.dao.NewsDAO;
import com.piano.dao.ProductDAO;
import com.piano.entity.News;
import com.piano.entity.Product;
import com.piano.service.user.NewsService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Administrator
 */
@Service
public class NewsServiceImpl implements NewsService{
    @Autowired
    private NewsDAO newsDAO;
    @Autowired
    private ProductDAO productDAO;

    @Override
    public List<News> findNewsByPage(int page) {
        return newsDAO.findNewsByPage((page-1)*3);
    }

    @Override
    public int endpage() {
        long count = newsDAO.countNews();
        int endpage = 0;
        endpage = (int) (count/3);
        if(count%3!=0){
            endpage++;
        }
        return endpage;
    }

    @Override
    public List<News> findNewsBySearch(String txt_search) {
        return newsDAO.findNewsBySearch(txt_search);
    }

    @Override
    public List<News> findNewsByCate(String cate) {
        return newsDAO.findNewsByCate(cate);
    }

    @Override
    public News findNewsByID(int id) {
        return newsDAO.findNewsById(id);
    }

    @Override
    public List<News> findRelatedNews(int id, String cate) {
        return newsDAO.findRelatedNews(id, cate);
    }

    @Override
    public List<News> findRecentPost() {
        return newsDAO.findRecentPost();
    }

    @Override
    public List<Product> findProductsNew() {
        return productDAO.findProductsNew();
    }
    
}
