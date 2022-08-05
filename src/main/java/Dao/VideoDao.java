package Dao;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.TypedQuery;

import org.apache.catalina.Session;
import org.hibernate.Criteria;

import Entity.Video;


public class VideoDao {
		public List<Video> fillAllVD(){
			EntityManagerFactory emf = Persistence.createEntityManagerFactory("ASM_JAVA4_PD04237");
			EntityManager em = emf.createEntityManager();
			TypedQuery<Video> query = em.createNamedQuery("Video.findAll", Video.class);		 
			return query.getResultList();
		}
		
		public List<Video> setPage(int page){
			EntityManagerFactory emf = Persistence.createEntityManagerFactory("ASM_JAVA4_PD04237");
			EntityManager em = emf.createEntityManager();
			String jpql = "SELECT o FROM Video o Where o.active=:check";
			TypedQuery<Video> query = em.createQuery(jpql,Video.class);
			query.setParameter("check",true);
			query.setFirstResult(page* 4);
			query.setMaxResults(4);
			return query.getResultList();
		}
		public Integer totalPage(){
			EntityManagerFactory emf = Persistence.createEntityManagerFactory("ASM_JAVA4_PD04237");
			EntityManager em = emf.createEntityManager();	
			String jpql = "SELECT o FROM Video o Where o.active=:check";
			TypedQuery<Video> query = em.createQuery(jpql,Video.class);
			query.setParameter("check",true);
			List<Video> list = query.getResultList();
			int page;
			if (list.size()%4!=0){
			  page = list.size()/4+1;
			}else {
			  page = list.size()/4;
			}
			return page;
		}
		public Video ds(String id) {
			EntityManagerFactory emf = Persistence.createEntityManagerFactory("ASM_JAVA4_PD04237");
			EntityManager em = emf.createEntityManager();
			Video query = em.find(Video.class,id);			
			return query;
			
		}
		public void update(Video vd) {
			EntityManagerFactory emf = Persistence.createEntityManagerFactory("ASM_JAVA4_PD04237");
			EntityManager em = emf.createEntityManager();
			EntityTransaction trans = em.getTransaction();
			try {
				trans.begin();
				em.merge(vd);
				trans.commit();
			} catch (Exception e) {
				e.printStackTrace();
				trans.rollback();
				throw e;
			}finally {
				em.close();
			}
		}
		public void insert(Video vd) {
			EntityManagerFactory emf = Persistence.createEntityManagerFactory("ASM_JAVA4_PD04237");
			EntityManager em = emf.createEntityManager();
			EntityTransaction trans = em.getTransaction();
			try {
				trans.begin();
				em.persist(vd);;
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
				Video user = em.find(Video.class, userID);
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
}
