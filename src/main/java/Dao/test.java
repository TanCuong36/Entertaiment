package Dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.TypedQuery;

import Entity.Favorite;
import Entity.User;
import Entity.Video;

public class test {

	public static void main(String[] args) throws Exception {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("ASM_JAVA4_PD04237");
		EntityManager em = emf.createEntityManager();	
		String jpql = "SELECT o FROM Video o Where o.active=:check";
		TypedQuery<Video> query = em.createQuery(jpql,Video.class);
		query.setParameter("check",true);
		List<Video> list = query.getResultList();
		query.setFirstResult(0 * 2);
		query.setMaxResults(2);
		List<Video> ds = query.getResultList();
		int page;
		if (ds.size()%2!=0){
		  page = list.size()/2+1;
		}else {
		  page = list.size()/2;
		}
		for(Video user: ds) {
		System.out.println(">>Fullname: " + user.getTitle());
		System.out.println(">>Is Admin: " + user.getViews());
		}
		System.out.println(">>size: " + list.size());
		System.out.println(">>Page: " + page);
	

	}

}
