package net.codejava.dao;

import java.util.List;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import net.codejava.model.User;

@Repository
public class UserDAOImpl implements UserDAO{
    @Autowired
    private SessionFactory sessionFactory;
	@Override
	public List<User> getUsers() {
		Session session = sessionFactory.getCurrentSession();
        CriteriaBuilder cb = session.getCriteriaBuilder();
        CriteriaQuery<User> cq = cb.createQuery(User.class);
        Root < User > root = cq.from(User.class);
        cq.select(root);
        Query query = session.createQuery(cq);
        return query.getResultList();
	}

	@Override
	public User getUser(int theId) {

		Session session=sessionFactory.getCurrentSession();
		User user=session.get(User.class, theId);
		return user;
	}

	@Override
	public void saveUser(User user) {

		Session session=sessionFactory.getCurrentSession();
		session.saveOrUpdate(user);
	}

	@Override
	public void deleteUser(int theId) {
		Session session=sessionFactory.getCurrentSession();
		User user=session.byId(User.class).load(theId);
		session.delete(user);
	}

}
