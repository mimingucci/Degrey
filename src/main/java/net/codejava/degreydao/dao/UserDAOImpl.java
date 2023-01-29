package net.codejava.degreydao.dao;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import net.codejava.degreymodal.User;
@Repository
public class UserDAOImpl implements UserDAO{
  
	@Autowired
	private SessionFactory sessionFactory;
	@Override
	public void saveUser(User user) {
		Session session=sessionFactory.openSession();
		session.beginTransaction();
		session.saveOrUpdate(user);
		session.flush();
		session.getTransaction().commit();
		session.close();
	}
	@Override
	public User findByEmail(String email) {
		Session session=sessionFactory.getCurrentSession();
		String hql="FROM User WHERE email ="+email;
		User user=session.createQuery(hql, User.class).list().get(0);
		return user;
	}

}
