package com.changsoo.copypastestudy.sample.controller;

import com.changsoo.copypastestudy.menu.service.MenuService;
import com.changsoo.copypastestudy.menu.vo.MenuVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

@Controller
public class HomeController {

    @Autowired
    MenuService menuService;

    @GetMapping("/")
    public String home(Model model){
        List<MenuVO> menuList = menuService.yjsMenuUpIdNull(null);
        model.addAttribute("menuVOList", menuList);
        List<MenuVO> yjsMenu2Dep = menuService.yjsMenu2Dep(null);
        model.addAttribute("yjsMenu2Dep", yjsMenu2Dep);
        List<MenuVO> menuVOList = menuService.select1DethMenuAse();
        List<MenuVO> menuVO2DethList = menuService.select2DethMenuAse();
        model.addAttribute("first", menuVOList);
        model.addAttribute("second", menuVO2DethList);
        System.out.println(menuVOList);
        return "main";
    }

}
