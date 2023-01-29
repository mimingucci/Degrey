package net.codejava.controller.service;

import java.util.List;

import org.springframework.data.domain.Pageable;

import net.codejava.degreymodal.Item;

public interface ItemsService {
    public Item getItems(int id);
    public void deleteItems(int id);
    public List<Item> listItems();
    public void saveItems(Item it);
    public List<Item> listItemsByType(String type);
    public List<Item> findByKeyword(String keyword);
}
