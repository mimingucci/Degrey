package net.codejava.controller.service.impl;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import net.codejava.controller.service.DegreyService;
import net.codejava.degreydao.dao.ItemDAO;
import net.codejava.degreymodal.Item;
//@Service
//@Transactional
public class DegreyServiceImpl implements DegreyService{
    
    @Autowired
    public ItemDAO itemsDAO;

   
	@Override
	public List<Item> getListItems() {
		
		return itemsDAO.listItems();
	}

	@Override
	public Item getItems(int id) {
		
		return itemsDAO.itemsById(id);
	}

	@Override
	public List<Item> getListItemsById(List<Integer> ids) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void saveItems(Item it) {
		itemsDAO.saveItems(it);
		
	}

	

	@Override
	public List<Item> getListItemsByType(String kind) {
	return itemsDAO.listItemsByType(kind);	
	}

	@Override
	public List<Item> pagination(int pageNum) {
		int pageSize=30;
		Pageable pageable=PageRequest.of(pageNum-1, pageSize);
		return  null;
	}

	
	

}
