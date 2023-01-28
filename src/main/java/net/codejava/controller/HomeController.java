package net.codejava.controller;

import java.nio.file.Path;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import net.codejava.controller.service.ItemsService;
import net.codejava.controller.service.UserService;
import net.codejava.controller.service.impl.ItemsServiceImpl;
import net.codejava.controller.service.impl.UserServiceImpl;
import net.codejava.degreydao.dao.UserDAO;
import net.codejava.degreymodal.Role;
import net.codejava.degreymodal.User;
import net.codejava.degreymodal.Item;

@Controller
public class HomeController {
	@Autowired
    private ItemsService itemsService;
    
	@Autowired
	private UserService userService;
	
	
	public HomeController(ItemsService itemsService, UserService userService) {
		super();
		this.itemsService = itemsService;
		this.userService = userService;
	}

	@GetMapping("/formItems")
	public ModelAndView formItems() {
		ModelAndView mav=new ModelAndView("formItems");
		mav.addObject("items", new Item());
		return mav;
	}
	
	 @RequestMapping(value = "/processForm", method = RequestMethod.POST)
	  public String doPostAddItems(@ModelAttribute("items") @Valid Item items, BindingResult result) {
	    if (result.hasErrors()) {
	      return "formItems";
	    }
	    itemsService.saveItems(items);
	    return "formItems";
	  }

	@InitBinder
	public void initBinder(WebDataBinder dataBinder) {

		StringTrimmerEditor stringTrimmerEditor = new StringTrimmerEditor(true);

		dataBinder.registerCustomEditor(String.class, stringTrimmerEditor);
	}

	@GetMapping(value = "/home")
	public String homePage(HttpServletRequest request) {
		Cookie[] cookie = request.getCookies();
		Map<Integer, Integer> listIdItems = new HashMap<>();
		for (Cookie cook : cookie) {
			if (cook.getName().contains("items")) {
				System.out.println(cook.getName());
			}
			System.out.println(cook.getValue());
		}
		return "home";
	}

	@GetMapping("/delete")
	public String deleteCustomer(@RequestParam("userId") int theId) {
		// userService.deleteUser(theId);
		return "redirect:/list";
	}

	@PostMapping(value = "/addToCart")
	public String addToCartProcessing(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) {
		Cookie[] cookies = httpServletRequest.getCookies();

		for (Cookie ck : cookies) {
			ck.setMaxAge(60 * 60 * 24 * 30);
			httpServletResponse.addCookie(ck);
		}

		int quantity = Integer.parseInt(httpServletRequest.getParameter("quantity"));
		int id = Integer.parseInt(httpServletRequest.getParameter("idproduct"));

		Cookie cookie = new Cookie("items" + String.valueOf(id), String.valueOf(quantity));
		cookie.setMaxAge(60 * 60 * 24 * 30);
		httpServletResponse.addCookie(cookie);

		return "redirect:/detailproduct?id=" + String.valueOf(id);
	}

}
