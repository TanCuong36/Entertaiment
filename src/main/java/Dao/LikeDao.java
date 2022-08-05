package Dao;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;
import javax.persistence.TypedQuery;

import Entity.Favorite;
import Entity.User;
import Entity.Video;

public class LikeDao {

	UserDao us = new UserDao();
	VideoDao vd = new VideoDao();
	
	public List<Favorite> findall(String user) {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("ASM_JAVA4_PD04237");
		EntityManager em = emf.createEntityManager();
		List<Favorite> ds = em.find(User.class, user).getFavorites();
		return ds;
	}

	public void delete(String iduser, String idvideo) throws Exception {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("ASM_JAVA4_PD04237");
		EntityManager em = emf.createEntityManager();
		EntityTransaction trans = em.getTransaction();
		try {
			trans.begin();
			List<Favorite> ds = em.find(User.class, iduser).getFavorites();
			for (int i = 0; i < ds.size(); ++i) {
				Favorite x = ds.get(i);
				if (x.getVideo().getId().equals(idvideo)) {
					em.remove(x);
				}
			}
			trans.commit();
		} catch (Exception e) {
			e.printStackTrace();
			trans.rollback();
			throw e;
		} finally {
			em.close();
		}
	}
	public void insert(String iduser, String idvideo) throws Exception {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("ASM_JAVA4_PD04237");
		EntityManager em = emf.createEntityManager();
		EntityTransaction trans = em.getTransaction();
		try {
			Date date = new Date();
			String xString = date+"";
			SimpleDateFormat fm = new SimpleDateFormat("dd-MM-yyyy");
			User x = us.findID(iduser);
			Video y = em.find(Video.class,idvideo);
			Favorite favorite = new Favorite();
			favorite.setUser(x);
			favorite.setVideo(y);
			favorite.setLikeDate(date);
			trans.begin();
			em.persist(favorite);
			trans.commit();
		} catch (Exception e) {
			e.printStackTrace();
			trans.rollback();
			throw e;
		} finally {
			em.close();
		}
	}

}
