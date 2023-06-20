package ddwu.spring.Dmd.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.ModelAndViewDefiningException;

import ddwu.spring.Dmd.domain.Cart;
import ddwu.spring.Dmd.domain.Profile;
import ddwu.spring.Dmd.service.OrderFacade;
import ddwu.spring.Dmd.service.OrderFormValidator;
import ddwu.spring.Dmd.service.ProductFacade;
import ddwu.spring.Dmd.service.ProfileFacade;

@Controller
@SessionAttributes({"sessionCart", "orderForm"})
public class OrderController {

	@Autowired
	private OrderFormValidator orderFormValidator;
	
	@ModelAttribute("orderForm")
	public OrderForm createOrderForm() {
		return new OrderForm();
	}
	
	@ModelAttribute("creditCardTypes")
	public List<String> referenceData() {
		ArrayList<String> creditCardTypes = new ArrayList<String>();
		
		creditCardTypes.add("Visa");
		creditCardTypes.add("MasterCard");
		creditCardTypes.add("American Express");
		
		return creditCardTypes;			
	}
	
	@RequestMapping("/shop/newOrder.do")
	public String initNewOrder(HttpServletRequest request,
			@ModelAttribute("sessionCart") Cart cart,
			@ModelAttribute("orderForm") OrderForm orderForm
			) throws ModelAndViewDefiningException {
		UserSession userSession = (UserSession) request.getSession().getAttribute("userSession");
		//if (cart != null) {
			// Re-read account from DB at team's request.
		//	Account account = usStore.getAccountByUserId(userSession.getAccount().getUserId());
			
		//	orderForm.getOrder().initOrder(account, cart, "OK");
			return "order/OrderForm";	
		//}
		//else {
		//	ModelAndView modelAndView = new ModelAndView("Error");
		//	modelAndView.addObject("message", "An order could not be created because a cart could not be found.");
		//	throw new ModelAndViewDefiningException(modelAndView);
		//}
	}
	
}