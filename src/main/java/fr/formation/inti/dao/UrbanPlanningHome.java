package fr.formation.inti.dao;
// Generated 6 avr. 2019 18:07:33 by Hibernate Tools 5.1.10.Final

import static org.hibernate.criterion.Example.create;

import java.util.List;

import javax.naming.InitialContext;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.hibernate.SessionFactory;

import fr.formation.inti.entities.UrbanPlanning;

/**
 * Home object for domain model class UrbanPlanning.
 * @see fr.formation.inti.dao.UrbanPlanning
 * @author Hibernate Tools
 */
public class UrbanPlanningHome {

	private static final Log log = LogFactory.getLog(UrbanPlanningHome.class);

	private final SessionFactory sessionFactory = getSessionFactory();

	protected SessionFactory getSessionFactory() {
		try {
			return (SessionFactory) new InitialContext().lookup("SessionFactory");
		} catch (Exception e) {
			log.error("Could not locate SessionFactory in JNDI", e);
			throw new IllegalStateException("Could not locate SessionFactory in JNDI");
		}
	}

	public void persist(UrbanPlanning transientInstance) {
		log.debug("persisting UrbanPlanning instance");
		try {
			sessionFactory.getCurrentSession().persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void attachDirty(UrbanPlanning instance) {
		log.debug("attaching dirty UrbanPlanning instance");
		try {
			sessionFactory.getCurrentSession().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(UrbanPlanning instance) {
		log.debug("attaching clean UrbanPlanning instance");
		try {
			sessionFactory.getCurrentSession().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void delete(UrbanPlanning persistentInstance) {
		log.debug("deleting UrbanPlanning instance");
		try {
			sessionFactory.getCurrentSession().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public UrbanPlanning merge(UrbanPlanning detachedInstance) {
		log.debug("merging UrbanPlanning instance");
		try {
			UrbanPlanning result = (UrbanPlanning) sessionFactory.getCurrentSession().merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public UrbanPlanning findById(int id) {
		log.debug("getting UrbanPlanning instance with id: " + id);
		try {
			UrbanPlanning instance = (UrbanPlanning) sessionFactory.getCurrentSession()
					.get("fr.formation.inti.dao.UrbanPlanning", id);
			if (instance == null) {
				log.debug("get successful, no instance found");
			} else {
				log.debug("get successful, instance found");
			}
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List<UrbanPlanning> findByExample(UrbanPlanning instance) {
		log.debug("finding UrbanPlanning instance by example");
		try {
			List<UrbanPlanning> results = (List<UrbanPlanning>) sessionFactory.getCurrentSession()
					.createCriteria("fr.formation.inti.dao.UrbanPlanning").add(create(instance)).list();
			log.debug("find by example successful, result size: " + results.size());
			return results;
		} catch (RuntimeException re) {
			log.error("find by example failed", re);
			throw re;
		}
	}
}
