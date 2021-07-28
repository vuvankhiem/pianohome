/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.piano.entity;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
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
@Entity
@Table(name = "product")
public class Product implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int productID;
    private String productName;
    private int quantitySold;
    private String description;
    private String image1;
    private String image2;
    private String image3;
    private double price;
    private String saleTime;
    private int status;
    private int sale;
    private double newPrice;
    private float rateAVG;
    private String fulldescription;
    private String spec;
    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "categoryID")
    private Category category;

    
}
