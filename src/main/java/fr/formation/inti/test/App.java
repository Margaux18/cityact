package fr.formation.inti.test;

import org.hibernate.Session;

import fr.formation.inti.entities.Users;
import fr.formation.inti.utils.HibernateUtils;

public class App {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		Session session = HibernateUtils.getSessionFactory().getCurrentSession();
		
		Users u = new Users(1, "ll@gmail.com", "mama", "pse", 10, "2rue des", null);
		
		session.getTransaction().begin();
		session.persist(u);
		session.getTransaction().commit();

	}

}
