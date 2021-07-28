/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.piano.service.user;


import com.piano.entity.News;
import com.piano.entity.Product;
import java.util.List;

/**
 *
 * @author Administrator
 */
public interface NewsService {
    public List<News> findNewsByPage(int page);
    public int endpage();
    public List<News> findNewsBySearch(String txt_search);
    public List<News> findNewsByCate(String cate);
    public News findNewsByID(int id);
    public List<News> findRelatedNews(int id,String cate);
    public List<News> findRecentPost();
    public List<Product> findProductsNew();
}
