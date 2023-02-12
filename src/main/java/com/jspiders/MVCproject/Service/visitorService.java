package com.jspiders.MVCproject.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jspiders.MVCproject.Pojo.visitorPOJO;
import com.jspiders.MVCproject.Repository.visitorRepository;

@Service
public class visitorService {

	@Autowired
	private visitorRepository repository;

	public visitorPOJO logindata(String name, String password, String email) {
		visitorPOJO pojo=repository.logindata(name,password,email);
		return pojo;
	}
	
	public visitorPOJO logindata(String password, String email) {
		visitorPOJO pojo=repository.logindata(password,email);
		return pojo;
	}
	
}
