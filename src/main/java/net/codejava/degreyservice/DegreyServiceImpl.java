package net.codejava.degreyservice;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import net.codejava.degreydao.tshirtdao.itemsDAO;
import net.codejava.degreymodal.items;
import net.codejava.degreyrespository.ItemsRepository;

@Service
public class DegreyServiceImpl implements DegreyService{
    
    @Autowired
    public itemsDAO itemsDAO;

   
	@Override
	public List<items> getListItems() {
		
		return itemsDAO.listItems();
	}

	@Override
	public items getItems(int id) {
		
		return itemsDAO.itemsById(id);
	}

	@Override
	public List<items> getListItemsById(List<Integer> ids) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void saveItems(items it) {
		itemsDAO.saveItems(it);
		
	}

	

	@Override
	public List<items> getListItemsByType(String kind) {
	return itemsDAO.listItemsByType(kind);	
	}

	@Override
	public List<items> pagination(int pageNum) {
		int pageSize=30;
		Pageable pageable=PageRequest.of(pageNum-1, pageSize);
//		List<items> listItems=repo.findAll(pageable).getContent();
		return  null;
	}

	
	

}
