package com.nccsbim.esms.controller;

import com.nccsbim.esms.model.User;
import com.nccsbim.esms.service.UserService;
import org.joda.time.LocalDate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import java.util.List;

/**
 * Created by tulada on 04/08/2015.
 */
@Controller
@RequestMapping("/dashboard")
public class DashboardController {

    @Autowired
    UserService userService;

    @Autowired
    MessageSource messageSource;

    /**
     * Simple method to identify if session doesnt't exist
     * @param request
     * @return
     */
    public boolean isNotExistUserSession(HttpServletRequest request) {
        HttpSession session = request.getSession();
        return (session.getAttribute("USER_SESSION") == null) ? true : false;
    }

    @RequestMapping(value = "/paysalary",method = RequestMethod.GET)
    public String paySalaryShowList(ModelMap model, HttpServletRequest request){
        if(isNotExistUserSession(request)) return "redirect:/";

        List<User> users = userService.findAllUser();
        model.addAttribute("users",users);
        model.addAttribute("PAGE_TITLE","Pay Salary");

        return "paysalary";
    }
    @RequestMapping(value = "/paysalary",method = RequestMethod.POST)
    public String paySalary(ModelMap model, HttpServletRequest request,@RequestParam String datePicker){
        if(isNotExistUserSession(request)) return "redirect:/";

        //date yyyy-mm-dd (yyyy-mm)

        //identify if teo date ma transaction gari sakeo
        //if gari sakeo.. return "paySalary"


        String date = "2015-16";
        date += "-02";
        String[] dateSplit = date.split("-");

//        new LocalDate(dateSplit[0],dateSplit[1],dateSplit[2]);




        return "paysalary";
    }

    @RequestMapping(value = "/logout",method = RequestMethod.GET)
    public String logout(ModelMap model, HttpServletRequest request){
        request.getSession().removeAttribute("USER_SESSION");
        return "redirect:/";
    }

    @RequestMapping(value = {"/", "/viewemployee"}, method = RequestMethod.GET)
    public String dashboardPage(ModelMap model, HttpServletRequest request) {
        if (isNotExistUserSession(request)) return "redirect:/";

        List<User> users = userService.findAllUser();
        model.addAttribute("users", users);
        model.addAttribute("PAGE_TITLE", "Dashboard");
        return "dashboard";
    }

    @RequestMapping(value = "/changepassword", method = RequestMethod.GET)
    public String changePassword(ModelMap model, HttpServletRequest request) {
        if (isNotExistUserSession(request)) return "redirect:/";
        model.addAttribute("PAGE_TITLE", "Change Password");
        return "passwordchange";
    }

    @RequestMapping(value = "/changepassword", method = RequestMethod.POST)
    public String saveChangePassword(@RequestParam String oldPassword, @RequestParam String newPassword, ModelMap model, HttpServletRequest request) {
        if (isNotExistUserSession(request)) return "redirect:/";

        HttpSession session = request.getSession();
        User sessionUser = (User) session.getAttribute("USER_SESSION");
        User rUser = userService.findUserByUsername(sessionUser.getUsername());

        if (!rUser.getPassword().equals(oldPassword)) {
            model.addAttribute("PAGE_TITLE", "Change Password");
            return "passwordchange";
        }

        rUser.setPassword(newPassword);
        userService.updatePassword(rUser);

        session.setAttribute("USER_SESSION", rUser);

        model.addAttribute("PAGE_TITLE", "Dashboard");
        return "redirect:/dashboard/";
    }

    @RequestMapping(value = "/addemployee", method = RequestMethod.GET)
    public String addUser(ModelMap model, HttpServletRequest request) {
        if (isNotExistUserSession(request)) return "redirect:/";
        User user = new User();
        model.addAttribute("user", user);
        model.addAttribute("PAGE_TITLE", "Add Employee");
        model.addAttribute("VIEW_FLAG", false);
        return "addemployee";
    }

    @RequestMapping(value = "/addemployee", method = RequestMethod.POST)
    public String saveUser(@ModelAttribute User user, BindingResult result, ModelMap model, HttpServletRequest request) {
        if (isNotExistUserSession(request)) return "redirect:/";
        model.addAttribute("PAGE_TITLE", "Add Employee");
        model.addAttribute("VIEW_FLAG", false);
        if (result.hasErrors()) {
            return "addemployee";
        }

        if (!userService.isEmployeeUsernameUnique(user.getUsername())) {
            return "addemployee";
        }

        userService.saveUser(user);

        model.addAttribute("PAGE_TITLE", "Dashboard");
        model.addAttribute("ADD_SUCCESS_FLAG", true);
        return "redirect:/dashboard/";
    }

    @RequestMapping(value = {"/delete-{username}"}, method = RequestMethod.GET)
    public String deleteUser(@PathVariable String username, ModelMap model, HttpServletRequest request) {
        if (isNotExistUserSession(request)) return "redirect:/";
        userService.deleteUserByUsername(username);
        model.addAttribute("PAGE_TITLE", "Dashboard");
        return "redirect:/dashboard/";
    }

    @RequestMapping(value = {"/view-{username}"}, method = RequestMethod.GET)
    public String viewUser(@PathVariable String username, ModelMap model, HttpServletRequest request) {
        if (isNotExistUserSession(request)) return "redirect:/";
        User user = userService.findUserByUsername(username);
        model.addAttribute("user", user);
        model.addAttribute("VIEW_FLAG", true);
        model.addAttribute("PAGE_TITLE", "View " + username + " Information");
        return "addemployee";
    }

    @RequestMapping(value = {"/edit-{username}"}, method = RequestMethod.GET)
    public String editUser(@PathVariable String username, ModelMap model, HttpServletRequest request) {
        if (isNotExistUserSession(request)) return "redirect:/";
        User user = userService.findUserByUsername(username);
        model.addAttribute("user", user);
        model.addAttribute("VIEW_FLAG", false);
        model.addAttribute("PAGE_TITLE", "Edit " + username + " Information");
        return "addemployee";
    }

    @RequestMapping(value = {"/edit-{username}"}, method = RequestMethod.POST)
    public String saveEditedUser(@ModelAttribute User user, BindingResult result, ModelMap model, @PathVariable String username, HttpServletRequest request) {
        if (isNotExistUserSession(request)) return "redirect:/";
        model.addAttribute("PAGE_TITLE", "Edit " + username + " Information ");
        model.addAttribute("VIEW_FLAG", false);
        if (result.hasErrors()) {
            return "addemployee";
        }

        userService.updateUser(user);

        model.addAttribute("PAGE_TITLE", "Dashboard");
        model.addAttribute("ADD_SUCCESS_FLAG", true);
        return "redirect:/dashboard/";
    }


}
