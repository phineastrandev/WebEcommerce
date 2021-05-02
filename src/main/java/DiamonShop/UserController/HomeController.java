package DiamonShop.UserController;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController extends BaseController {

	@RequestMapping(value = { "/", "/trang-chu" })
	public ModelAndView Index() {
	
		_mvShare.addObject("slides", _homeService.GetDataSlide());
		_mvShare.addObject("categorys", _homeService.GetDataCategorys());
		_mvShare.addObject("products", _homeService.GetDataProducts());
		_mvShare.setViewName("user/index");
		return _mvShare;
	}
//	
//	@Autowired
//	private MailService mailService; 
//	
//	@RequestMapping(value="/forgotPassword")
//	public String forgotPassword()
//	{
//		return "forgotPassword"; 
//	}
//	
//	@RequestMapping(value="/resetPassword" , method=RequestMethod.POST)
//	public String resetRequest(@ModelAttribute("user") Users user)
//	{	UserDao us = new UserDao();
//		if(us.GetUserByAcc(user)!=null) {
//			mailService.sendMail(user.getUser());
//			return "checkMail";
//		}
//		//check if the email id is valid and registered with us.
//		return null;
//		
//	}
//	
//	@RequestMapping(value="/newPassword/{email}" )
//	public String resetPassword(@PathVariable String email,Map<String,String> model)
//	{
//		//check if the email id is valid and registered with us.
//		model.put("emailid", email);
//		return "newPassword";
//	}

}
