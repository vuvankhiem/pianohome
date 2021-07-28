package com.piano.entity;

import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(Orderproduct.class)
public abstract class Orderproduct_ {

	public static volatile SingularAttribute<Orderproduct, Integer> statusOrder;
	public static volatile SingularAttribute<Orderproduct, String> address;
	public static volatile SingularAttribute<Orderproduct, Integer> orderID;
	public static volatile SingularAttribute<Orderproduct, Double> totalPrice;
	public static volatile SingularAttribute<Orderproduct, String> numberPhone;
	public static volatile SingularAttribute<Orderproduct, String> name;
	public static volatile SingularAttribute<Orderproduct, String> noteOrder;
	public static volatile SingularAttribute<Orderproduct, String> orderDate;
	public static volatile SingularAttribute<Orderproduct, String> email;
	public static volatile SingularAttribute<Orderproduct, Integer> totalQuanty;

	public static final String STATUS_ORDER = "statusOrder";
	public static final String ADDRESS = "address";
	public static final String ORDER_ID = "orderID";
	public static final String TOTAL_PRICE = "totalPrice";
	public static final String NUMBER_PHONE = "numberPhone";
	public static final String NAME = "name";
	public static final String NOTE_ORDER = "noteOrder";
	public static final String ORDER_DATE = "orderDate";
	public static final String EMAIL = "email";
	public static final String TOTAL_QUANTY = "totalQuanty";

}

