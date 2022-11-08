package net.codejava.degreydao.tshirtdao;
import java.util.List;
import net.codejava.degreymodal.items;

public interface itemsDAO {
    public List<items> listItems();
    public items itemsById(int id);
    public List<items> listItemsByListId(List<Integer> listItemsID);
	public void saveItems(items it);
	public List<items> listItemsByType(String kind);
}
