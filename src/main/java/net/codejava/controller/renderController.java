package net.codejava.controller;

import java.math.BigDecimal;
import java.text.DecimalFormat;
import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.Random;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.util.Pair;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import net.codejava.degreymodal.items;
import net.codejava.degreyothers.findIndexOfElement;
import net.codejava.degreyothers.sortById;
import net.codejava.degreyservice.DegreyService;

@Controller
public class renderController {
	@Autowired
	private DegreyService degreyService;
@RequestMapping(value = "/productByField", method = RequestMethod.GET)
public ModelAndView productbaloPage(@RequestParam("item") String item, HttpServletRequest request) {
	ModelAndView productItemsPage=new ModelAndView("productByField");
	String kindEnumitems;
	switch (item.trim()) {
	case "balo":
		kindEnumitems="BALO";
		break;
	case "jacket":
		kindEnumitems="JACKET";
		break;
	case "tshirt":
		kindEnumitems="TSHIRT";
		break;
	case "bag":
		kindEnumitems="BAG";
		break;
	case "pants":
		kindEnumitems="PANTS";
		break;
	case "wallets":
		kindEnumitems="WALLETS";
		break;
	case "madmonks":
		kindEnumitems="MADMONKS";
		break;
	case "other":
		kindEnumitems="OTHER";
		break;
	default:
		kindEnumitems="BALO";
		break;
	}
	List<items> listItems=degreyService.getListItems();
	List<items> listItemsFilter=new ArrayList<items>();
	for(int i=0; i<listItems.size(); i++) {
		if(listItems.get(i).getType().equalsIgnoreCase(kindEnumitems.toUpperCase())) {
		listItemsFilter.add(listItems.get(i));
		}
	}
	Cookie[] cookies=request.getCookies();
	List<AbstractMap.SimpleEntry<items, Integer>> addedItems=new ArrayList<AbstractMap.SimpleEntry<items, Integer>>();
	List<AbstractMap.SimpleEntry<items, Integer>> listBaloByTypeAndFilter=new ArrayList<AbstractMap.SimpleEntry<items, Integer>>();
	BigDecimal totalTemp=new BigDecimal(0);
	for(Cookie ck : cookies) {
		if(ck.getName().contains("items")) {
			int iD=Integer.parseInt(ck.getName().substring(5));
			items itemsTemp=degreyService.getItems(iD);
			int quanTiTy=Integer.parseInt(ck.getValue());
			itemsTemp.setType(itemsTemp.getType().toLowerCase());
			totalTemp=totalTemp.add(itemsTemp.getPrice().multiply(BigDecimal.valueOf(quanTiTy)));
			addedItems.add(new AbstractMap.SimpleEntry<>(itemsTemp, quanTiTy));
		}
	}
	
    Comparator<items> compareByIdAndField=Comparator.comparing(items::getType).thenComparing(items::getId);
	Collections.sort(listItemsFilter, compareByIdAndField);
	int pivot=1;
	for(items it : listItemsFilter) {
		
			it.setType(it.getType().toLowerCase());
			listBaloByTypeAndFilter.add(new AbstractMap.SimpleEntry<>(it, pivot));
			
			
		
		++pivot;
		
	}
	
	int n=listItemsFilter.size()/5;
	if(listItemsFilter.size()%5!=0) {
		++n;
	}

	productItemsPage.addObject("listItems", listBaloByTypeAndFilter);
	productItemsPage.addObject("rows", n-1);

	productItemsPage.addObject("addedItems", addedItems);
	productItemsPage.addObject("totalTemp", totalTemp);
	productItemsPage.addObject("quantityOfItems", addedItems.size());
    productItemsPage.addObject("listItems", listBaloByTypeAndFilter);
	productItemsPage.addObject("rows", n-1);
	productItemsPage.addObject("category", kindEnumitems.toLowerCase());
	return productItemsPage;

}
@GetMapping("/detailproduct")
public ModelAndView detailproductPage(@RequestParam("id") int id, HttpServletRequest request, HttpServletResponse response) {
	ModelAndView mav=new ModelAndView("detailproduct");
	Cookie[] cookies=request.getCookies();
	List<AbstractMap.SimpleEntry<items, Integer>> addedItems=new ArrayList<AbstractMap.SimpleEntry<items, Integer>>();
	List<AbstractMap.SimpleEntry<items, Integer>> listBaloByTypeAndFilter=new ArrayList<AbstractMap.SimpleEntry<items, Integer>>();
	BigDecimal totalTemp=new BigDecimal(0);
	items it=degreyService.getItems(id);
	for(Cookie ck : cookies) {
		if(ck.getName().contains("items")) {
			int iD=Integer.parseInt(ck.getName().substring(5));
			items itemsTemp=degreyService.getItems(iD);
			int quanTiTy=Integer.parseInt(ck.getValue());
			itemsTemp.setType(itemsTemp.getType().toLowerCase());
			totalTemp=totalTemp.add(itemsTemp.getPrice().multiply(BigDecimal.valueOf(quanTiTy)));
			addedItems.add(new AbstractMap.SimpleEntry<>(itemsTemp, quanTiTy));
		}
		
	}
	List<items> listBaloById=degreyService.getListItemsByType(it.getType());
	int n=listBaloById.size();
	Collections.sort(listBaloById, new sortById());
	int stt=-1; 
	for(int i=0; i<n; i++) {
		if(listBaloById.get(i).getId()==it.getId()) {
			stt=i;
			break;
		}
	}
	int idImage=-1;
	for(int i=0; i<n; i++) {
		if(listBaloById.get(i).getId()==id) {
			idImage=i+1;
			break;
		}
	}
	List<Integer> relatedItem=new ArrayList<Integer>();
	for(int i=1; i<=8; i++) {
		int temp=(int)(Math.random()*n);
		while(temp==stt || relatedItem.contains((Integer) temp)) {

			temp=(int)(Math.random()*n);
		}
		
		relatedItem.add(temp);
	}
	for(int i=0; i<relatedItem.size(); i++) {
		listBaloByTypeAndFilter.add(new AbstractMap.SimpleEntry<>(listBaloById.get(relatedItem.get(i)), findIndexOfElement.findPosition(listBaloById, listBaloById.get(relatedItem.get(i)))));
	}

	mav.addObject("relatedItems", listBaloByTypeAndFilter);
    mav.addObject("type", it.getType().toLowerCase());
	mav.addObject("quantity", it.getSizeImage());
	mav.addObject("item", it);
	mav.addObject("id", id);
	mav.addObject("addedItems", addedItems);
	mav.addObject("totalTemp", totalTemp);
	mav.addObject("quantityOfItems", addedItems.size());
	mav.addObject("idImage", idImage);
	return mav;
}
@GetMapping(value = "/product")
public ModelAndView productPage(HttpServletRequest request) {
	ModelAndView productItemsPage=new ModelAndView("productByField");
	Cookie[] cookies=request.getCookies();
	List<AbstractMap.SimpleEntry<items, Integer>> addedItems=new ArrayList<AbstractMap.SimpleEntry<items, Integer>>();
	List<items> listItems=degreyService.getListItems();
	List<AbstractMap.SimpleEntry<items, Integer>> listBaloByTypeAndFilter=new ArrayList<AbstractMap.SimpleEntry<items, Integer>>();
	BigDecimal totalTemp=new BigDecimal(0);
	for(Cookie ck : cookies) {
		if(ck.getName().contains("items")) {
			int iD=Integer.parseInt(ck.getName().substring(5));
			items itemsTemp=degreyService.getItems(iD);
			int quanTiTy=Integer.parseInt(ck.getValue());
			itemsTemp.setType(itemsTemp.getType().toLowerCase());
			totalTemp=totalTemp.add(itemsTemp.getPrice().multiply(BigDecimal.valueOf(quanTiTy)));
			addedItems.add(new AbstractMap.SimpleEntry<>(itemsTemp, quanTiTy));
		}
	}
	
    Comparator<items> compareByIdAndField=Comparator.comparing(items::getType).thenComparing(items::getId);
	Collections.sort(listItems, compareByIdAndField);
	String type=listItems.get(0).getType().toLowerCase();
	int pivot=1;
	for(items it : listItems) {
		if(it.getType().toLowerCase().equals(type)) {
			it.setType(it.getType().toLowerCase());
			listBaloByTypeAndFilter.add(new AbstractMap.SimpleEntry<>(it, pivot));
			
			
		}else {
		   it.setType(it.getType().toLowerCase());
           pivot=1;
           listBaloByTypeAndFilter.add(new AbstractMap.SimpleEntry<>(it, pivot));
           
		}
		++pivot;
		type=it.getType().toLowerCase();
	}
	
	int n=listItems.size()/5;
	if(listItems.size()%5!=0) {
		++n;
	}

	productItemsPage.addObject("listItems", listBaloByTypeAndFilter);
	productItemsPage.addObject("rows", n-1);

	productItemsPage.addObject("addedItems", addedItems);
	productItemsPage.addObject("totalTemp", totalTemp);
	productItemsPage.addObject("quantityOfItems", addedItems.size());
	return productItemsPage;
	
}
@GetMapping(value = "/store")
public ModelAndView storePage(HttpServletRequest request) {
	ModelAndView mav=new ModelAndView("store");
	Cookie[] cookies=request.getCookies();
	List<AbstractMap.SimpleEntry<items, Integer>> addedItems=new ArrayList<AbstractMap.SimpleEntry<items, Integer>>();
	BigDecimal totalTemp=new BigDecimal(0);
	for(Cookie ck : cookies) {
		if(ck.getName().contains("items")) {
			int iD=Integer.parseInt(ck.getName().substring(5));
			items itemsTemp=degreyService.getItems(iD);
			int quanTiTy=Integer.parseInt(ck.getValue());
			itemsTemp.setType(itemsTemp.getType().toLowerCase());
			totalTemp=totalTemp.add(itemsTemp.getPrice().multiply(BigDecimal.valueOf(quanTiTy)));
			addedItems.add(new AbstractMap.SimpleEntry<>(itemsTemp, quanTiTy));
		}
	}
	mav.addObject("addedItems", addedItems);
	mav.addObject("totalTemp", totalTemp);
	mav.addObject("quantityOfItems", addedItems.size());
  return mav;
}
@GetMapping(value = "/intro")
public ModelAndView introPage(HttpServletRequest request) {
	ModelAndView mav=new ModelAndView("intro");
			Cookie[] cookies=request.getCookies();
			List<AbstractMap.SimpleEntry<items, Integer>> addedItems=new ArrayList<AbstractMap.SimpleEntry<items, Integer>>();
			BigDecimal totalTemp=new BigDecimal(0);
			for(Cookie ck : cookies) {
				if(ck.getName().contains("items")) {
					int iD=Integer.parseInt(ck.getName().substring(5));
					items itemsTemp=degreyService.getItems(iD);
					int quanTiTy=Integer.parseInt(ck.getValue());
					itemsTemp.setType(itemsTemp.getType().toLowerCase());
					totalTemp=totalTemp.add(itemsTemp.getPrice().multiply(BigDecimal.valueOf(quanTiTy)));
					addedItems.add(new AbstractMap.SimpleEntry<>(itemsTemp, quanTiTy));
				}
			}
			mav.addObject("addedItems", addedItems);
			mav.addObject("totalTemp", totalTemp);
			mav.addObject("quantityOfItems", addedItems.size());
		  return mav;
}

@GetMapping(value = "/payment")
public ModelAndView paymentPage(HttpServletRequest request) {
	ModelAndView mav=new ModelAndView("payment");
	Cookie[] cookies=request.getCookies();
	List<AbstractMap.SimpleEntry<items, Integer>> addedItems=new ArrayList<AbstractMap.SimpleEntry<items, Integer>>();
	BigDecimal totalTemp=new BigDecimal(0);
	for(Cookie ck : cookies) {
		if(ck.getName().contains("items")) {
			int iD=Integer.parseInt(ck.getName().substring(5));
			items itemsTemp=degreyService.getItems(iD);
			int quanTiTy=Integer.parseInt(ck.getValue());
			itemsTemp.setType(itemsTemp.getType().toLowerCase());
			totalTemp=totalTemp.add(itemsTemp.getPrice().multiply(BigDecimal.valueOf(quanTiTy)));
			addedItems.add(new AbstractMap.SimpleEntry<>(itemsTemp, quanTiTy));
		}
		
	}
	
	
	

	mav.addObject("addedItems", addedItems);
	mav.addObject("totalTemp", totalTemp);
	mav.addObject("quantityOfItems", addedItems.size());
	return mav;
}
}
