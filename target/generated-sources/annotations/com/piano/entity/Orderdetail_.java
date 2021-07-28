package com.piano.entity;

import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(Orderdetail.class)
public abstract class Orderdetail_ {

	public static volatile SingularAttribute<Orderdetail, Product> product;
	public static volatile SingularAttribute<Orderdetail, Integer> quanty;
	public static volatile SingularAttribute<Orderdetail, Double> totalPrice;
	public static volatile SingularAttribute<Orderdetail, Double> price;
	public static volatile SingularAttribute<Orderdetail, Integer> orderDetailID;
	public static volatile SingularAttribute<Orderdetail, Orderproduct> order;

	public static final String PRODUCT = "product";
	public static final String QUANTY = "quanty";
	public static final String TOTAL_PRICE = "totalPrice";
	public static final String PRICE = "price";
	public static final String ORDER_DETAIL_ID = "orderDetailID";
	public static final String ORDER = "order";

}

