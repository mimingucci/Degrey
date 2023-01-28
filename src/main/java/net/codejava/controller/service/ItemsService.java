package net.codejava.controller.service;

import java.util.List;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import net.codejava.degreymodal.Item;

public interface ItemsService {
    public Item getItems(int id);
    public void deleteItems(int id);
    public List<Item> listItems();
    public void saveItems(Item it);
    public List<Item> listItemsByType(String type);
}
