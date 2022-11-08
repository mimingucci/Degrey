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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import net.codejava.degreymodal.items;
import net.codejava.model.User;
import net.codejava.service.UserService;

@Controller
public class HomeController {
	@Autowired
    private UserService userService;
	@ModelAttribute("user")
	public User setUser() {
		return new User();
	}
	@InitBinder
    public void initBinder(WebDataBinder dataBinder) {

        StringTrimmerEditor stringTrimmerEditor = new StringTrimmerEditor(true);

        dataBinder.registerCustomEditor(String.class, stringTrimmerEditor);
    }
   @GetMapping(value = "/home")
   public String homePage(HttpServletRequest request) {
	   Cookie[] cookie=request.getCookies();
	   Map<Integer, Integer> listIdItems =new HashMap<>();
	   for(Cookie cook: cookie) {
		   if(cook.getName().contains("items")) {
			   System.out.println(cook.getName());
		   }
		   System.out.println(cook.getValue());
	   }
	   return "home";
   }

    @GetMapping("/list")
    public String listCustomers(Model theModel) {
        List < User > theUsers = userService.getUsers();
        theModel.addAttribute("users", theUsers);
        return "list-users";
    }

    @GetMapping("/showForm")
    public String showFormForAdd(Model theModel) {
        User theUser = new User();
        theModel.addAttribute("user", theUser);
        return "user-form";
    }
    @PostMapping("/saveUser")
    public String saveCustomer(@Valid @ModelAttribute("user") User theUser, BindingResult theBindingResult) {
    	if(theBindingResult.hasErrors()) {
    		return "user-form";
    	}else {
    		userService.saveUser(theUser);
            return "redirect:/list";
    	}
        
    }

    @GetMapping("/updateForm")
    public String showFormForUpdate(@RequestParam("userId") int theId,
        Model theModel) {
        User theUser = userService.getUser(theId);
        theModel.addAttribute("user", theUser);
        return "user-form";
    }

    @GetMapping("/delete")
    public String deleteCustomer(@RequestParam("userId") int theId) {
        userService.deleteUser(theId);
        return "redirect:/list";
    }
    
    @PostMapping(value = "/addToCart")
    public String addToCartProcessing(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) {
    	Cookie[] cookies=httpServletRequest.getCookies();
    	
    		for(Cookie ck : cookies) {
    			ck.setMaxAge(60*60*24*30);
    			httpServletResponse.addCookie(ck);
    		}
    	
    	
    	int quantity=Integer.parseInt(httpServletRequest.getParameter("quantity"));
    	int id=Integer.parseInt(httpServletRequest.getParameter("idproduct"));
    	
    	Cookie cookie=new Cookie("items"+String.valueOf(id), String.valueOf(quantity));
    	cookie.setMaxAge(60*60*24*30);
    	httpServletResponse.addCookie(cookie);
    	
    	return "redirect:/detailproduct?id="+String.valueOf(id);
    }
    
   
  
  
 
}
