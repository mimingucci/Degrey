import java.util.List;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import net.codejava.degreydao.dao.ItemDAO;
import net.codejava.degreymodal.Item;

public class ItemRepositoryTest {
    private ItemDAO dao;
	
    @Autowired
	public ItemRepositoryTest(ItemDAO dao) {
		super();
		this.dao = dao;
	}

	@Test
	public void findItemByKeyword() {
		String keyword="Balo";
		List<Item> items=dao.findItemByKeyword(keyword);
		System.out.println(items.get(0).toString());
		Assertions.assertTrue(items.size()>0);
	}
}
