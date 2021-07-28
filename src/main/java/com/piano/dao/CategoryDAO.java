/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.piano.dao;


import com.piano.entity.Category;
import java.util.List;

/**
 *
 * @author Administrator
 */
public interface CategoryDAO {
    public List<Category> getAllCategories();
    public Category findCategoryByID(int cateid);
}
