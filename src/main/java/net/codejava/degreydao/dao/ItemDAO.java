package net.codejava.degreydao.dao;
import java.util.List;
import net.codejava.degreymodal.Item;

public interface ItemDAO {
    public List<Item> listItems();
    public Item itemsById(int id);
    public List<Item> listItemsByListId(List<Integer> listItemsID);
	public void saveItems(Item it);
	public List<Item> listItemsByType(String kind);
	public void deleteItems(int id);
}
