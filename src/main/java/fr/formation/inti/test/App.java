package fr.formation.inti.test;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import fr.formation.inti.dao.IGenericDao;
import fr.formation.inti.entities.Users;

@Service
public class App {
	
	@Autowired
	static IGenericDao<Users> dao;
	
	public IGenericDao<Users> getDao() {
		return dao;
	}

	public void setDao(IGenericDao<Users> dao) {
		this.dao = dao;
	}

	public static void main(String[] args) {

	}

}
