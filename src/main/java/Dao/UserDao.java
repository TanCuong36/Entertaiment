package Dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.TypedQuery;

import Entity.*;

public class UserDao {
	public List<User> findIdUser(){
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("ASM_JAVA4_PD04237");
		EntityManager em = emf.createEntityManager();
		TypedQuery<User> query = em.createNamedQuery("User.findAll", User.class);		 
		return query.getResultList();
	}
	public User findID(String id) {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("ASM_JAVA4_PD04237");
		EntityManager em = emf.createEntityManager();
		User xUser = new User();
		xUser = em.find(User.class,id);
		return xUser;		
	}
	public void update(User us) {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("ASM_JAVA4_PD04237");
		EntityManager em = emf.createEntityManager();
		EntityTransaction trans = em.getTransaction();
		try {
			trans.begin();
			em.merge(us);
			trans.commit();
		} catch (Exception e) {
			e.printStackTrace();
			trans.rollback();
			throw e;
		}finally {
			em.close();
		}
	}
	public void delete(String userID) throws Exception {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("ASM_JAVA4_PD04237");
		EntityManager em = emf.createEntityManager();
		EntityTransaction trans = em.getTransaction();
		try {
			trans.begin();
			User user = em.find(User.class, userID);
			if(user!=null) {
				em.remove(user);
			}else {
				throw new Exception("User can not found");
			}
			trans.commit();
		} catch (Exception e) {
			e.printStackTrace();
			trans.rollback();
			throw e;
		}finally {
			em.close();
		}
	}
	public void insert(User us) {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("ASM_JAVA4_PD04237");
		EntityManager em = emf.createEntityManager();
		EntityTransaction trans = em.getTransaction();
		try {
			trans.begin();
			em.persist(us);;
			trans.commit();
		} catch (Exception e) {
			e.printStackTrace();
			trans.rollback();
			throw e;
		}finally {
			em.close();
		}
	}
}
