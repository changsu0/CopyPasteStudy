package com.changsoo.copypastestudy.sample.controller;

import com.changsoo.copypastestudy.menu.service.MenuService;
import com.changsoo.copypastestudy.menu.vo.MenuVO;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import javax.net.ssl.HandshakeCompletedEvent;
import java.util.List;

@Controller
public class HomeController {

    @Autowired
    MenuService menuService;

    @GetMapping("/")
    public String home(Model model, HttpServletRequest request){
        HttpSession session = request.getSession(true);

        List<MenuVO> menuList = menuService.yjsMenuUpIdNull(null);
        session.setAttribute("menuVOList", menuList);
        List<MenuVO> yjsMenu2Dep = menuService.yjsMenu2Dep(null);
        session.setAttribute("yjsMenu2Dep", yjsMenu2Dep);

        List<MenuVO> menuVOList = menuService.select1DethMenuAse();
        List<MenuVO> menuVO2DethList = menuService.select2DethMenuAse();
        session.setAttribute("first", menuVOList);
        session.setAttribute("second", menuVO2DethList);

        return "main";
    }

}
