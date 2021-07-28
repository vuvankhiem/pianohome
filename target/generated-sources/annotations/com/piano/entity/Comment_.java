package com.piano.entity;

import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(Comment.class)
public abstract class Comment_ {

	public static volatile SingularAttribute<Comment, Product> product;
	public static volatile SingularAttribute<Comment, Integer> rate;
	public static volatile SingularAttribute<Comment, String> review;
	public static volatile SingularAttribute<Comment, String> dateUP;
	public static volatile SingularAttribute<Comment, Integer> commentID;
	public static volatile SingularAttribute<Comment, String> title;
	public static volatile SingularAttribute<Comment, User> user;

	public static final String PRODUCT = "product";
	public static final String RATE = "rate";
	public static final String REVIEW = "review";
	public static final String DATE_UP = "dateUP";
	public static final String COMMENT_ID = "commentID";
	public static final String TITLE = "title";
	public static final String USER = "user";

}

