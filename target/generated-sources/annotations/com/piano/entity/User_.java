package com.piano.entity;

import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(User.class)
public abstract class User_ {

	public static volatile SingularAttribute<User, String> passWord;
	public static volatile SingularAttribute<User, String> firstName;
	public static volatile SingularAttribute<User, String> lastName;
	public static volatile SingularAttribute<User, String> role;
	public static volatile SingularAttribute<User, Boolean> active;
	public static volatile SingularAttribute<User, String> avatar;
	public static volatile SingularAttribute<User, Integer> userID;
	public static volatile SingularAttribute<User, String> email;

	public static final String PASS_WORD = "passWord";
	public static final String FIRST_NAME = "firstName";
	public static final String LAST_NAME = "lastName";
	public static final String ROLE = "role";
	public static final String ACTIVE = "active";
	public static final String AVATAR = "avatar";
	public static final String USER_ID = "userID";
	public static final String EMAIL = "email";

}

