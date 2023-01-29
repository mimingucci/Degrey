package net.codejava.degreydao.dao;

import java.util.List;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import javax.transaction.Transactional;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Repository;
import net.codejava.degreymodal.Item;

@Repository
@Transactional
public class ItemDAOImpl implements ItemDAO {
	@Autowired
	public SessionFactory sessionFactory;

	@Override
	public List<Item> listItems() {
		Session session = sessionFactory.getCurrentSession();
		CriteriaBuilder cb = session.getCriteriaBuilder();
		CriteriaQuery<Item> cq = cb.createQuery(Item.class);
		Root<Item> root = cq.from(Item.class);
		cq.select(root);
		Query<Item> query = session.createQuery(cq);
		return query.getResultList();

	}

	@Override
	public Item itemsById(int id) {
		Session session = sessionFactory.openSession();
		Item it = session.get(Item.class, id);
		session.close();
		return it;
	}

	@Override
	public List<Item> listItemsByListId(List<Integer> listItemsID) {
		return null;
	}

	@Override
	public void saveItems(Item it) {
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		session.saveOrUpdate(it);
		session.flush();
		session.getTransaction().commit();
		session.close();
	}

	@Override
	public List<Item> listItemsByType(String kind) {
		Session session = sessionFactory.getCurrentSession();
		String sql = "FROM Item WHERE type='" + kind + "'";

		return (List<Item>) session.createQuery(sql, Item.class).list();
	}

	@Override
	public void deleteItems(int id) {
		Session session = sessionFactory.getCurrentSession();
		session.delete(session.get(Item.class, id));
		session.close();
	}

	@Override
	public List<Item> findItemByKeyword(String keyword) {
		Session session=sessionFactory.getCurrentSession();
		String hql="FROM Item WHERE name LIKE '%"+keyword+"%'";
		Query query=session.createQuery(hql);
		//query.setParameter("keyword", keyword);
		List<Item> items=query.getResultList();
		return items;
	}

}
