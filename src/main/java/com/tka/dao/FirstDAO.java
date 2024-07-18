package com.tka.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.tka.model.Person;

@Repository
public class FirstDAO {
	
	@Autowired
	SessionFactory factory;
	
	public String addPersonData(Person p) {
		Session session = factory.openSession();
		Transaction transaction = session.beginTransaction();
		session.save(p);
		transaction.commit();
		session.close();
		return "Data added successfully..";
	}
	
	public List<Person> showPersonData(){
		Session session = factory.openSession();
		Criteria criteria = session.createCriteria(Person.class);
		
		List<Person> list = criteria.list();
		return list;
	}
}
