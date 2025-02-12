package com.mystory001.spring4;

import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/security/*")
public class SecurityController {
	
	@GetMapping("/all")
	public void doAll() {
		System.out.println("doAll()");
	}
	
	@GetMapping("/member")
	public void doMember() {
		System.out.println("doMember()");
	}
	
	@GetMapping("/admin")
	public void doAdmin() {
		System.out.println("doAdmin()");
	}
	
	@GetMapping("/accessError")
	public void doAccessError(Model model, Authentication authentication) {
		System.out.println("doAccessError()");
		System.out.println(authentication);
		
		model.addAttribute("msg","Access Denied");
	}
	
	//security/customLogin
	@GetMapping("/customLogin")
	public void doCustomLogin(String error, String logout, Model model) {
		System.out.println("doCustomLogin()");
		
		System.out.println("error : " + error);
		System.out.println("logout : " + logout);
		
		if(error != null) {
			model.addAttribute("error", "Login Error");
		}
		if(logout != null) {
			model.addAttribute("logout","Logout");
		}
	}
	
	@GetMapping("/customLogout")
	public void customLogoutGet() {
		System.out.println("customLogoutGet()");
	}
	
	@PostMapping("/customLogout")
	public void customLogoutPost() {
		System.out.println("customLogoutPost()");
	}
}
