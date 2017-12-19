package com.nccsbim.esms.controller;

import com.nccsbim.esms.model.Transaction;
import com.nccsbim.esms.model.User;
import com.nccsbim.esms.service.TransactionService;
import com.nccsbim.esms.service.UserService;
import org.joda.time.LocalDate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import java.util.Date;
import java.util.Locale;

/**
 * Created by tulada on 04/08/2015.
 */
@Controller
@RequestMapping("/")
public class LoginController {

    @Autowired
    UserService userService;

    @Autowired
    TransactionService transactionService;

    @Autowired
    MessageSource messageSource;

    @RequestMapping(value = {"/", "/login"}, method = RequestMethod.GET)
    public String loginPage(ModelMap model, HttpServletRequest request) {

//
//
//        User entity = new User();
//
//        entity.setUsername("admin");
//        entity.setPassword("admin");
//        entity.setUserType("Admin");
//        entity.setFirstname("admin");
//        entity.setMiddlename("admin");
//        entity.setLastname("admin");
//        entity.setEmail("admin@sdata.us");
//        entity.setContact("admin");
//        entity.setGender("admin");
//        entity.setDOB(new LocalDate(new Date()));
//        entity.setEnrollmentDate(new LocalDate(new Date()));
//        entity.setMaritalStatus("Single");
//        entity.setAddress("admin");
//        entity.setSalaryAmount(100000);
//        entity.setCitYearly(300000);
//        entity.setInsuranceYearly(20000);
//        entity.setPanNumber("admin");
//        entity.setBankAccountNumber("admin");
//        entity.setTaxYearly(1234);
//
//        userService.saveUser(entity);

//
//        Transaction t = new Transaction();
//        t.setUserId(1);
//        t.setTransactionDate(new LocalDate(new Date()));
//
//        t.setCitMonthly(123);
//        t.setTaxMonthly(123);
//        t.setNetSalary(123);
//        t.setSalary(123);
//
//        transactionService.saveTransaction(t);


        /**
         * Remove the session of the user if exist
         */
        request.getSession().removeAttribute("USER_SESSION");

        /**
         * Passing user to the form for mapping with spring form taglib
         */
        User user = new User();
        model.addAttribute("user", user);
        /**
         * Simple attribute to describe page title
         */
        model.addAttribute("PAGE_TITLE", "Login");
        return "login";
    }

    @RequestMapping(value = {"/", "/login"}, method = RequestMethod.POST)
    public String authenticateLogin(@ModelAttribute User user, BindingResult result, ModelMap model, HttpServletRequest request) {
        model.addAttribute("PAGE_TITLE", "Login");

        /**
         * Query database to see if user if specified user exist
         * if user is present in database the result return the user information on as User POJO
         *
         * if not it returns null
         */
        User rUser = userService.findUserByUsername(user.getUsername());
        /**
         * If user is not null then check to see if the password of both user match
         * If password doesn't match add the error to the BindingResult then return login page
         * Result will be display in the field <form:error></form:error> which is provided by Spring form tablib
         */
        if (rUser == null || !rUser.getPassword().equals(user.getPassword().trim())) {
            FieldError loginError = new FieldError("user","password",messageSource.getMessage("invalid.login",new String[]{user.getPassword()}, Locale.getDefault()));
            result.addError(loginError);
            return "login";
        }

        /**
         * If control come up to here user is valid and has entered the valid password.
         * Get the request from the request parameter then set the session variable
         * which can be assessed within the session of the user.
         */
        HttpSession session = request.getSession();
        session.setAttribute("USER_SESSION", rUser);
        model.addAttribute("PAGE_TITLE", "Dashboard");
        return "redirect:/dashboard/";
    }
}
