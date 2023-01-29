package net.codejava.controller.service.impl;

import java.util.List;
import java.util.Optional;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import net.codejava.controller.service.ItemsService;
import net.codejava.degreydao.dao.ItemDAO;
import net.codejava.degreydao.dao.ItemDAOImpl;
import net.codejava.degreyexception.ExceptionError;
import net.codejava.degreyexception.TypeException;
import net.codejava.degreymodal.Item;
@Service
public class ItemsServiceImpl implements ItemsService{
    
    
    private ItemDAO itemsDAO;
    
    @Autowired
	public ItemsServiceImpl(ItemDAO itemsDAO) {
		super();
		this.itemsDAO = itemsDAO;
	}

	@Override
	public Item getItems(int id) {
		return itemsDAO.itemsById(id);
	}

	@Override
	public void deleteItems(int id) {
		itemsDAO.deleteItems(id);
	}

	@Override
	public List<Item> listItems() {
		
		return itemsDAO.listItems();
	}

	@Override
	public void saveItems(Item it) {
		itemsDAO.saveItems(it);
		
	}

	@Override
	public List<Item> listItemsByType(String type) {
		// TODO Auto-generated method stub
		return itemsDAO.listItemsByType(type);
	}

	@Override
	public List<Item> findByKeyword(String keyword) {
		return itemsDAO.findItemByKeyword(keyword);
	}
	
//	@Override
//	public items getItems(int id) {
//		long iD=id;
//		return ItemsRepository.findById(id).get();
//	}
//
//	@Override
//	public void deleteItems(int id) {
//		ItemsRepository.delete(ItemsRepository.findById(id).get());
//	}
//
//	@Override
//	public List<items> listItems() {
//		return ItemsRepository.findAll();
//	}
//
//	@Override
//	public void saveItems(items it) {
//		// TODO Auto-generated method stub
//		ItemsRepository.save(it);
//	}
//
//	@Override
//	public List<items> listItemsByType(String type) {
//		return ItemsRepository.findByType(type);
//	}

}
