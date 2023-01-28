package net.codejava.controller.service;

import java.util.List;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import net.codejava.degreymodal.Item;

public interface DegreyService {
  public Item getItems(int id);
  public List<Item> getListItemsById(List<Integer> ids);
  public List<Item> getListItems();
  public void saveItems(Item it);
  public List<Item> getListItemsByType(String kind);
  public List<Item> pagination(int pageNum);
}
