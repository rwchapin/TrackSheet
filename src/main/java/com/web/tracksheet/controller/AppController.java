package com.web.tracksheet.controller;

import java.util.Optional;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.web.tracksheet.ts_models.TrackSheet;
//import com.web.tracksheet.ts_repository.FohOutputsRepository;
//import com.web.tracksheet.ts_repository.InputsRepository;
//import com.web.tracksheet.ts_repository.MonOutputsRepository;
import com.web.tracksheet.ts_repository.TrackSheetRepository;
//import com.web.tracksheet.ts_repository.WirelessInputsRepository;
//import com.web.tracksheet.ts_repository.WirelessOutputsRepository;
import com.web.tracksheet.user_model.User;
import com.web.tracksheet.user_repository.UserRepository;

@Controller
@SessionAttributes({"loggedInuser","role"})
public class AppController {
	
	@Autowired
	private UserRepository userRepository;
	
	@Autowired
	private TrackSheetRepository trackSheetRepository;
//	
//	@Autowired
//	private InputsRepository inputsRepository;
//	
//	@Autowired
//	private FohOutputsRepository fohOutputsRepository;
//	
//	@Autowired
//	private MonOutputsRepository monOutputsRepository;
//	
//	@Autowired
//	private WirelessInputsRepository wirelessInputsRepository;
//	
//	@Autowired
//	private WirelessOutputsRepository wirelessOutputsRepository;
	
	@GetMapping({"/","home"})
	String index(Model model){	
		model.addAttribute("msg", "Welcome to TrackSheet");
	return "home";	
	}
	
	@GetMapping("about")
	String about(Model model){	
		model.addAttribute("msg", "About Us");
	return "about";	
	}
	
	@GetMapping("login")
	String login(Model model) {
		model.addAttribute("msg", "Please Login");
		return "login";
	}
	
	@PostMapping("login")
	String login(RedirectAttributes redirect, Model model, @RequestParam String email, @RequestParam String password){
	  // login user
	  Optional<User> user= userRepository.login(email, password);
	 //add user email and role in session
	  if(user.isPresent()) {
		  model.addAttribute("loggedInuser", email);
		  model.addAttribute("role", user.get().getRole()); 
		  
	  }else {
		  redirect.addFlashAttribute("error", "Invalid Credentials");
		  return "redirect:/home";
	  }
	  
	return "redirect:/profile";
		
	}
	
	@GetMapping("logout")
	String logout(Model model, SessionStatus status, HttpSession session){
		//status.setComplete();
		session.invalidate();
		model.addAttribute("loggedInuser", "");
		model.addAttribute("role", "");
		User user=new User ();		
		model.addAttribute("user", user);
		model.addAttribute("msg", "You have ben Logged out");
	
	return "home";
		
	}
	
	@GetMapping("register")
	String register(Model model) {
		model.addAttribute("msg", "Please Sign Up");
		model.addAttribute("user", new User());
		return "register";
	}
	
	@PostMapping("register")
	String register(@ModelAttribute("user") User user, Model model) {
		if(userRepository.findUserByEmail(user.getEmail()).isPresent()) {
			model.addAttribute("msg", "Register");
			model.addAttribute("page", "Register");
			model.addAttribute("user", new User());
			model.addAttribute("error", "User exists");
			return "register";
		}
		userRepository.save(user);
		model.addAttribute("user_account", user);
		model.addAttribute("success", user);		
		model.addAttribute("msg","Hi "+ user.getfName()+ " Welcome!!!");
		model.addAttribute("page", "Profile");
		model.addAttribute("loggedInuser", user.getEmail());
	    model.addAttribute("role", user.getRole());
		return "profile";
 	}
	
	@GetMapping("profile") 
	  String profile(@SessionAttribute(required = false) String loggedInuser, Model model) {
	     try {
	    	 //if user is not in session return login page expired session
			if(loggedInuser.isEmpty() && loggedInuser !=null) {
			 model.addAttribute("error", "Expired session, please Login"); 
			 }
			//populate user details from database 
			userRepository.findUserByEmail(loggedInuser).ifPresent(a->{
			 model.addAttribute("user_account", a);
				 
			 });
			model.addAttribute("page", "Profile");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
	  return "profile";
	}
	
	
	
	@GetMapping("tracksheet")
	String tracksheet(Model model) {
		model.addAttribute("msg", "TRACKSHEET");
		return "tracksheet";
	}
	
	@GetMapping("admin")
	String admin(Model model) {
		model.addAttribute("msg", "ADMIN");
		model.addAttribute("list", userRepository.findAll());
		return "admin";
	}
	
	@PostMapping("editrole")
	String editrole(@RequestParam Long id, @RequestParam String role, 
	RedirectAttributes redirect) {
		try {			
			userRepository.findById(id).
			ifPresent(a->{				
				a.setRole(role);
				userRepository.save(a);
			});
			redirect.addFlashAttribute("success", role+ " Role Granted ");
		} catch (Exception e) {
			e.printStackTrace();
			redirect.addFlashAttribute("success", "Operation Fail");
		}
		return "redirect:/admin";
    }
	
	@GetMapping({"remove"})
	String deleteUser(Model model, @RequestParam Long id){	
				
		try {
			userRepository.deleteById(id);
			model.addAttribute("msg", "Delete success");
			model.addAttribute("list", userRepository.findAll());
		} catch (Exception e) {			
			e.printStackTrace();
			model.addAttribute("error", "Delete Fail");
		}	
		
		return "admin";
	}
	
	@PostMapping("updatemyinfo")
	public String udateMyinfo(@ModelAttribute("user") User user, RedirectAttributes red) {
		//System.out.println("userid=" + user.getId());
		userRepository.findById(user.getId()).ifPresent(u->{
			u.setfName(user.getfName());
			u.setlName(user.getlName());
			u.setEmail(user.getEmail());
			userRepository.save(u);
			red.addFlashAttribute("success", "Update Success thanks.");
		});		
		return "redirect:/admin";
	}
	
	@ModelAttribute("user")
    public User user() {		
	   return new User();		
	}
	
	@ModelAttribute("tracksheet")
	public TrackSheet trackSheet() {
		return new TrackSheet();
	}

}
