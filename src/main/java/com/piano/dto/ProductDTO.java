/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.piano.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

/**
 *
 * @author Administrator
 */
@Setter
@Getter
@AllArgsConstructor
@NoArgsConstructor
public class ProductDTO{
    private int productID;
    private String productName;
    private int quantitySold;
    private String description;
    private int categoryID;
    private String categoryName;
    private String image1;
    private String image2;
    private String image3;
    private double price;
    private int status;
    private int sale;
    
}
