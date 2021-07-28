package com.piano.entity;

import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(Contact.class)
public abstract class Contact_ {

	public static volatile SingularAttribute<Contact, String> date;
	public static volatile SingularAttribute<Contact, Integer> contactID;
	public static volatile SingularAttribute<Contact, String> phone;
	public static volatile SingularAttribute<Contact, String> name;
	public static volatile SingularAttribute<Contact, String> subjectContact;
	public static volatile SingularAttribute<Contact, String> message;
	public static volatile SingularAttribute<Contact, String> email;
	public static volatile SingularAttribute<Contact, Integer> status;

	public static final String DATE = "date";
	public static final String CONTACT_ID = "contactID";
	public static final String PHONE = "phone";
	public static final String NAME = "name";
	public static final String SUBJECT_CONTACT = "subjectContact";
	public static final String MESSAGE = "message";
	public static final String EMAIL = "email";
	public static final String STATUS = "status";

}

