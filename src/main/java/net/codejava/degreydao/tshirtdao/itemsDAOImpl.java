package net.codejava.degreydao.tshirtdao;

import java.util.List;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import javax.transaction.Transactional;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import net.codejava.degreymodal.items;
@Repository
@Transactional
public class itemsDAOImpl implements itemsDAO{
	 @Autowired
	    public SessionFactory sessionFactory;
	@Override
	public List<items> listItems() {
		Session session = sessionFactory.getCurrentSession();
        CriteriaBuilder cb=session.getCriteriaBuilder();
        CriteriaQuery<items> cq=cb.createQuery(items.class);
        Root<items> root=cq.from(items.class);
        cq.select(root);
        Query query=session.createQuery(cq);
        return query.getResultList();
        
	}

	@Override
	public items itemsById(int id) {
		Session session=sessionFactory.openSession();
		items it=session.get(items.class, id);
		session.close();
		return it;
	}

	@Override
	public List<items> listItemsByListId(List<Integer> listItemsID) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void saveItems(items it) {
		Session session=sessionFactory.openSession();
		session.beginTransaction();
		session.saveOrUpdate(it);
		session.flush();
		session.getTransaction().commit();
		session.close();
	}

	@Override
	public List<items> listItemsByType(String kind) {
		Session session=sessionFactory.getCurrentSession();
		String sql="FROM items WHERE type='"+kind+"'";
		
		return (List<items>) session.createQuery(sql, items.class).list();
	}

	

	

}
