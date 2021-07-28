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
@Table(name = "orderdetail")
public class Orderdetail implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int orderDetailID;
    private double price;
    private int quanty;
    private double totalPrice;
    @JoinColumn(name = "orderID")
    @ManyToOne(fetch = FetchType.LAZY)
    private Orderproduct order;
    @JoinColumn(name = "productID")
    @ManyToOne(fetch = FetchType.LAZY)
    private Product product;

    
}
