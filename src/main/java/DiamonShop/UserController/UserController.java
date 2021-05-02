package DiamonShop.UserController;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import DiamonShop.Dao.UserDao;
import DiamonShop.Entity.Users;
import DiamonShop.Service.UserServiceImpl;

@Controller

public class UserController extends BaseController {
	@Autowired
	UserServiceImpl userService;

	@Autowired
	UserDao userDao;

	@RequestMapping(value = "/dang-ky", method = RequestMethod.GET)
	public ModelAndView Register() {
		_mvShare.setViewName("user/register");
		_mvShare.addObject("user", new Users());
		return _mvShare;
	}
	
	@RequestMapping(value = "/about-us", method = RequestMethod.GET)
	public ModelAndView AboutUs() {
		_mvShare.setViewName("user/about");
		
		return _mvShare;
	}

	@RequestMapping(value = "/profile")
	public ModelAndView profile(HttpSession session) {
		
		_mvShare.setViewName("user/profile");
		return _mvShare;
	}
	
	@RequestMapping(value = "/dang-ky", method = RequestMethod.POST)
	public ModelAndView CreateAccount(@ModelAttribute("user") Users user) {
	int count = userService.AddAccount(user);
		if (count > 0) {
			_mvShare.addObject("status", "Dang ky tai khoan thanh cong");
		} else {
			_mvShare.addObject("status", "Dang ky tai khoan khong thanh cong");
		}
			
//		_mvShare.addObject("status",true);
		_mvShare.setViewName("user/register");
		return _mvShare;
	}

	@RequestMapping(value = "/dang-nhap", method = RequestMethod.POST)
	public ModelAndView Dangnhap(HttpSession session, @ModelAttribute("user") Users user) {
		user = userService.CheckAccount(user);
		if (user != null) {
			_mvShare.addObject("statusLogin", "Dang nhap tai khoan thanh cong");
			_mvShare.setViewName("redirect:trang-chu");
			session.setAttribute("LoginInfo", user);
		} else {
			_mvShare.addObject("statusLogin", "Dang nhap tai khoan khong thanh cong");
		}

		return _mvShare;
	}

	@RequestMapping(value = "/dang-xuat", method = RequestMethod.GET)
	public String Dangnhap(HttpSession session, HttpServletRequest request) {
		session.removeAttribute("LoginInfo");
		return "redirect:" + request.getHeader("Referer");
	}

}
