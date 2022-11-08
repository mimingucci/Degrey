package net.codejava.degreyservice;

import java.util.List;
import net.codejava.degreymodal.items;

public interface DegreyService {
  public items getItems(int id);
  public List<items> getListItemsById(List<Integer> ids);
  public List<items> getListItems();
  public void saveItems(items it);
  public List<items> getListItemsByType(String kind);
  public List<items> pagination(int pageNum);
}
