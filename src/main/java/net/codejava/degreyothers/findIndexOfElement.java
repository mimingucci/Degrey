package net.codejava.degreyothers;

import java.util.List;

import net.codejava.degreymodal.items;

public class findIndexOfElement {
     public static int findPosition(List<items> listItems, items it) {
    	 for(int i=0; i<listItems.size(); i++) {
    		 if(listItems.get(i)==it) {
    			 return i+1;
    		 }
    	 }
    	 return -1;
     }
     
}
