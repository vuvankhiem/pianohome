package com.piano.entity;

import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(News.class)
public abstract class News_ {

	public static volatile SingularAttribute<News, String> image;
	public static volatile SingularAttribute<News, Integer> newsID;
	public static volatile SingularAttribute<News, String> shortContent;
	public static volatile SingularAttribute<News, String> datePost;
	public static volatile SingularAttribute<News, String> title;
	public static volatile SingularAttribute<News, String> category;
	public static volatile SingularAttribute<News, String> content;

	public static final String IMAGE = "image";
	public static final String NEWS_ID = "newsID";
	public static final String SHORT_CONTENT = "shortContent";
	public static final String DATE_POST = "datePost";
	public static final String TITLE = "title";
	public static final String CATEGORY = "category";
	public static final String CONTENT = "content";

}

