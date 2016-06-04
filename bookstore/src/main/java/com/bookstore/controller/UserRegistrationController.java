package com.bookstore.controller;

import com.bookstore.model.BillingAdd;
import com.bookstore.model.UsersDetail;
import com.bookstore.model.ShippingAdd;
import com.bookstore.service.UsersDetailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.validation.Valid;
import java.util.List;


/*
 * This Controller is used to register user into the system
 */
@Controller
public class UserRegistrationController {

    @Autowired
    private UsersDetailService usersDetailService;
    /*
     * registerUser method is used to open user registration form
     */
    @RequestMapping("/register")
    public String registerUser(Model model) {

    	UsersDetail usersDetail = new UsersDetail();
        BillingAdd billingAddress = new BillingAdd();
        ShippingAdd shippingAddress = new ShippingAdd();
        usersDetail.setBillingAddress(billingAddress);
        usersDetail.setShippingAddress(shippingAddress);

        model.addAttribute("usersDetail", usersDetail);

        return "registerUser";

    }
    /*
     * registerUserPost method is used to register user into  the system and to show registration related errors
     */
    @RequestMapping(value = "/register", method = RequestMethod.POST)
    public String registerUserPost(@Valid @ModelAttribute("usersDetail") UsersDetail usersDetail, BindingResult result,
                                       Model model) {

        if (result.hasErrors()) {
            return "registerUser";
        }

        List<UsersDetail> usersDetailList=usersDetailService.getAllUsers();

        for (int i=0; i< usersDetailList.size(); i++) {
            if(usersDetail.getUserEmail().equals(usersDetailList.get(i).getUserEmail())) {
                model.addAttribute("emailMsg", "Email already exists");

                return "registerUser";
            }

            if(usersDetail.getUsername().equals(usersDetailList.get(i).getUsername())) {
                model.addAttribute("usernameMsg", "Username already exists");

                return "registerUser";
            }
        }

        usersDetail.setEnabled(true);
        usersDetailService.addUser(usersDetail);

        return "addUserSuccess";

    }

}
