package net.codejava.degreyothers;

import java.util.Comparator;

import net.codejava.degreymodal.Item;

public class sortById implements Comparator<Item>{

	@Override
	public int compare(Item o1, Item o2) {
		return o1.getId()-o2.getId();
	}
  
}
