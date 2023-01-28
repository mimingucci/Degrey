package net.codejava.degreyothers;

import java.util.List;

import net.codejava.degreymodal.Item;

public class findIndexOfElement {
     public static int findPosition(List<Item> listItems, Item it) {
    	 for(int i=0; i<listItems.size(); i++) {
    		 if(listItems.get(i)==it) {
    			 return i+1;
    		 }
    	 }
    	 return -1;
     }
     
}
