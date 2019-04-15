package fr.formation.inti.dao;
// Generated 6 avr. 2019 18:07:33 by Hibernate Tools 5.1.10.Final

import static org.hibernate.criterion.Example.create;

import java.util.List;

import javax.naming.InitialContext;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.hibernate.SessionFactory;

import fr.formation.inti.entities.AmbientPower;

/**
 * Home object for domain model class AmbientPower.
 * @see fr.formation.inti.dao.AmbientPower
 * @author Hibernate Tools
 */
public class AmbientPowerHome {

	private static final Log log = LogFactory.getLog(AmbientPowerHome.class);

	private final SessionFactory sessionFactory = getSessionFactory();

	protected SessionFactory getSessionFactory() {
		try {
			return (SessionFactory) new InitialContext().lookup("SessionFactory");
		} catch (Exception e) {
			log.error("Could not locate SessionFactory in JNDI", e);
			throw new IllegalStateException("Could not locate SessionFactory in JNDI");
		}
	}

	public void persist(AmbientPower transientInstance) {
		log.debug("persisting AmbientPower instance");
		try {
			sessionFactory.getCurrentSession().persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void attachDirty(AmbientPower instance) {
		log.debug("attaching dirty AmbientPower instance");
		try {
			sessionFactory.getCurrentSession().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(AmbientPower instance) {
		log.debug("attaching clean AmbientPower instance");
		try {
			sessionFactory.getCurrentSession().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void delete(AmbientPower persistentInstance) {
		log.debug("deleting AmbientPower instance");
		try {
			sessionFactory.getCurrentSession().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public AmbientPower merge(AmbientPower detachedInstance) {
		log.debug("merging AmbientPower instance");
		try {
			AmbientPower result = (AmbientPower) sessionFactory.getCurrentSession().merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public AmbientPower findById(int id) {
		log.debug("getting AmbientPower instance with id: " + id);
		try {
			AmbientPower instance = (AmbientPower) sessionFactory.getCurrentSession()
					.get("fr.formation.inti.dao.AmbientPower", id);
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

	public List<AmbientPower> findByExample(AmbientPower instance) {
		log.debug("finding AmbientPower instance by example");
		try {
			List<AmbientPower> results = (List<AmbientPower>) sessionFactory.getCurrentSession()
					.createCriteria("fr.formation.inti.dao.AmbientPower").add(create(instance)).list();
			log.debug("find by example successful, result size: " + results.size());
			return results;
		} catch (RuntimeException re) {
			log.error("find by example failed", re);
			throw re;
		}
	}
}
