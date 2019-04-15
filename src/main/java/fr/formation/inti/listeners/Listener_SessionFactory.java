package fr.formation.inti.listeners;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

import org.apache.log4j.Logger;
import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;

/**
 * Application Lifecycle Listener implementation class Listener_SessionFactory
 *
 */
@WebListener
public class Listener_SessionFactory implements ServletContextListener {
	
	public final Logger logger = Logger.getLogger(Listener_SessionFactory.class);

    /**
     * Default constructor. 
     */
    public Listener_SessionFactory() {
        // TODO Auto-generated constructor stub
    }

	/**
     * @see ServletContextListener#contextDestroyed(ServletContextEvent)
     */
    public void contextDestroyed(ServletContextEvent sce)  { 
    	SessionFactory sessionFactory = (SessionFactory) sce.getServletContext().getAttribute("SessionFactory");
    	if(sessionFactory != null && !sessionFactory.isClosed()){
    		logger.info("Closing sessionFactory");
    		sessionFactory.close();
    	}
    	logger.info("Released Hibernate sessionFactory resource");
    }

	/**
     * @see ServletContextListener#contextInitialized(ServletContextEvent)
     */
    public void contextInitialized(ServletContextEvent sce)  { 
    	Configuration configuration = new Configuration();
    	System.out.println("I work really great");
    	configuration.configure("hibernate.cfg.xml");
    	logger.info("Hibernate Configuration created successfully");
    	
    	ServiceRegistry serviceRegistry = new StandardServiceRegistryBuilder().applySettings(configuration.getProperties()).build();
    	logger.info("ServiceRegistry created successfully");
    	SessionFactory sessionFactory = configuration
				.buildSessionFactory(serviceRegistry);
    	logger.info("SessionFactory created successfully");
    	
    	sce.getServletContext().setAttribute("SessionFactory", sessionFactory);
    	logger.info("Hibernate SessionFactory Configured successfully");
    }
	
}
