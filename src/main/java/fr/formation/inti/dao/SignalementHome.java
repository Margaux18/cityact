package fr.formation.inti.dao;
// Generated 6 avr. 2019 18:07:33 by Hibernate Tools 5.1.10.Final

import static org.hibernate.criterion.Example.create;

import java.util.List;

import javax.naming.InitialContext;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.hibernate.SessionFactory;

import fr.formation.inti.entities.Signalement;

/**
 * Home object for domain model class Signalement.
 * @see fr.formation.inti.dao.Signalement
 * @author Hibernate Tools
 */
public class SignalementHome {

	private static final Log log = LogFactory.getLog(SignalementHome.class);

	private final SessionFactory sessionFactory = getSessionFactory();

	protected SessionFactory getSessionFactory() {
		try {
			return (SessionFactory) new InitialContext().lookup("SessionFactory");
		} catch (Exception e) {
			log.error("Could not locate SessionFactory in JNDI", e);
			throw new IllegalStateException("Could not locate SessionFactory in JNDI");
		}
	}

	public void persist(Signalement transientInstance) {
		log.debug("persisting Signalement instance");
		try {
			sessionFactory.getCurrentSession().persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	public void attachDirty(Signalement instance) {
		log.debug("attaching dirty Signalement instance");
		try {
			sessionFactory.getCurrentSession().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(Signalement instance) {
		log.debug("attaching clean Signalement instance");
		try {
			sessionFactory.getCurrentSession().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void delete(Signalement persistentInstance) {
		log.debug("deleting Signalement instance");
		try {
			sessionFactory.getCurrentSession().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public Signalement merge(Signalement detachedInstance) {
		log.debug("merging Signalement instance");
		try {
			Signalement result = (Signalement) sessionFactory.getCurrentSession().merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public Signalement findById(int id) {
		log.debug("getting Signalement instance with id: " + id);
		try {
			Signalement instance = (Signalement) sessionFactory.getCurrentSession()
					.get("fr.formation.inti.dao.Signalement", id);
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

	public List<Signalement> findByExample(Signalement instance) {
		log.debug("finding Signalement instance by example");
		try {
			List<Signalement> results = (List<Signalement>) sessionFactory.getCurrentSession()
					.createCriteria("fr.formation.inti.dao.Signalement").add(create(instance)).list();
			log.debug("find by example successful, result size: " + results.size());
			return results;
		} catch (RuntimeException re) {
			log.error("find by example failed", re);
			throw re;
		}
	}
}
