package com.jspiders.MVCproject.Repository;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

import org.springframework.stereotype.Repository;

import com.jspiders.MVCproject.Pojo.visitorPOJO;

import java.util.List;

import javax.persistence.Query;

@Repository
public class visitorRepository {

	private static EntityManagerFactory factory;
	private static EntityManager manager;
	private static EntityTransaction transaction;
	private static String jpql;
	private static Query query;
	
	private static void openConnection() {
		factory=Persistence.createEntityManagerFactory("mvcProject");
		manager=factory.createEntityManager();
		transaction=manager.getTransaction();
	}
	
	private static void closeConnection() {
		if(factory!=null) {
			factory.close();
		}
		if(manager!= null) {
			manager.close();
		}
		if(transaction.isActive()) {
			transaction.rollback();
		}
	}

	public visitorPOJO logindata(String name, String password, String email) {
		openConnection();
		transaction.begin();
		visitorPOJO pojo=new visitorPOJO();
		pojo.setName(name);
		pojo.setEmail(email);
		pojo.setPassword(password);
		manager.persist(pojo);
		transaction.commit();
		closeConnection();
		return pojo;
	}
	public visitorPOJO logindata(String password,String email) {
		openConnection();
		transaction.begin();
		jpql="from visitorPOJO " + "where email = '" + email + "' " + "and password = '" + password + "'";
		query = manager.createQuery(jpql);
		List<visitorPOJO> resultlist=query.getResultList();
		for(visitorPOJO pojo:resultlist){
			transaction.commit();
			closeConnection();
			return pojo;
		}
		transaction.commit();
		closeConnection();
		return null;
	}
	
	
	
}
