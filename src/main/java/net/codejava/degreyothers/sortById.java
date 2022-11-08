package net.codejava.degreyothers;

import java.util.Comparator;

import net.codejava.degreymodal.items;

public class sortById implements Comparator<items>{

	@Override
	public int compare(items o1, items o2) {
		return o1.getId()-o2.getId();
	}
  
}
