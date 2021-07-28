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
@Table(name = "contact")
public class Contact implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int contactID;
    private String subjectContact;
    private String message;
    private String name;
    private String phone;
    private String email;
    private String date;
    private int status;

}
