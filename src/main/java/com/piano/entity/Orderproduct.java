/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.piano.entity;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
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
@Table(name = "orderproduct")
public class Orderproduct implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int orderID;
    private String orderDate;
    private String name;
    private String numberPhone;
    private String address;
    private int totalQuanty;
    private double totalPrice;
    private String noteOrder;
    private String email;
    private int statusOrder;
    
}
