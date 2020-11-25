package com.wx.restaurant.admin;


import com.wx.restaurant.controller.UserController;
import com.wx.restaurant.exception.TipException;
import com.wx.restaurant.mybatis.model.Admin;
import com.wx.restaurant.mybatis.model.Balance;
import com.wx.restaurant.mybatis.model.Coupon;
import com.wx.restaurant.mybatis.model.Dish;
import com.wx.restaurant.mybatis.model.DishDTO;
import com.wx.restaurant.mybatis.model.DishDetail;
import com.wx.restaurant.mybatis.model.DishType;
import com.wx.restaurant.mybatis.model.Reserve;
import com.wx.restaurant.mybatis.model.ResponseBo;
import com.wx.restaurant.service.AdminService;
import com.wx.restaurant.service.BalanceService;
import com.wx.restaurant.service.CouponService;
import com.wx.restaurant.service.DishService;
import com.wx.restaurant.service.DishTypeService;
import com.wx.restaurant.service.ReserveService;
import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/admin")
public class AdminController {

    private static final Logger LOGGER = LoggerFactory.getLogger(UserController.class);
    @Autowired
    private BalanceService balanceService;
    @Autowired
    private ReserveService reserveService;
    @Autowired
    private CouponService couponService;
    @Autowired
    private DishService dishService;
    @Autowired
    private DishTypeService dishTypeService;
    @Autowired
    private AdminService adminService;

    @GetMapping("welcome")
    public String wel() {
        return "welcome";
    }

    @GetMapping("logout")
    public String logout(HttpSession session) {
        Admin user = (Admin) session.getAttribute("admin");
        if (null != user) {
            session.invalidate();
        }
        return "redirect:/login";
    }

    /**
     * 登录界面
     *
     * @return
     */
    @GetMapping("/login")
    public String login() {
        return "login";
    }

    @PostMapping("/login")
    @ResponseBody
    public ResponseBo login(@RequestParam String username, @RequestParam String password, HttpSession session) {
        try {
            Admin admin = adminService.login(username, password);
            admin.setPassword(null);
            session.setAttribute("admin", admin);
        } catch (Exception e) {
            String msg = "登录失败！";
            if (e instanceof TipException) {
                msg = e.getMessage();
            }
            LOGGER.error(e.getMessage(), e);
            return ResponseBo.ok(1, msg);
        }
        return ResponseBo.ok(0);
    }

    @GetMapping("/index")
    public String index() {
        return "index";
    }

    @GetMapping("/balance")
    public String balanceList(Model model) {
        List<Balance> balances = balanceService.balanceList();
        model.addAttribute("balances", balances);
        return "balanceList";
    }

    @GetMapping("/reserve")
    public String reserveList(Model model) {
        List<Reserve> reserves = reserveService.reserveList();
        model.addAttribute("reserves", reserves);
        return "reserveList";
    }

    @GetMapping("/coupon")
    public String couponList(Model model) {
        List<Coupon> coupons = couponService.couponList();
        model.addAttribute("coupons", coupons);
        return "couponList";
    }

    @GetMapping("dish")
    public String dish(Model model) {
        List<DishDetail> dishList = dishService.selcetDish();
        model.addAttribute("dishList", dishList);
        return "dish";
    }

    @GetMapping("dish_add")
    public String dishAdd() {
        return "dish-add";
    }

    @PostMapping("/dish_add")
    @ResponseBody
    public ResponseBo dishAdd(Dish dish) {
        int add = dishService.add(dish);
        if (add != 1) {
            return ResponseBo.ok(1, "系统错误");
        }
        return ResponseBo.ok(0);
    }


    @GetMapping("/dishType")
    public String dishList(Model model) {
        List<DishType> dishTypeList = dishTypeService.dishTypeList();
        model.addAttribute("dishType", dishTypeList);
        return "dishType";
    }

    @GetMapping("/dishType_add")
    public String dishTypeAdd(Model model) {
        return "dishType-add";
    }

    @PostMapping("/dishType_add")
    @ResponseBody
    public ResponseBo dishTypeAdd(DishType dishType) {
        int add = dishTypeService.add(dishType);
        if (add != 1) {
            return ResponseBo.ok(1, "系统错误");
        }
        return ResponseBo.ok(0);
    }
}
