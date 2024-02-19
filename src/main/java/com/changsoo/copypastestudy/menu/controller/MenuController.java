package com.changsoo.copypastestudy.menu.controller;

import com.changsoo.copypastestudy.menu.service.MenuService;
import org.springframework.stereotype.Controller;

@Controller
public class MenuController {
    final MenuService menuService;

    public MenuController(MenuService menuService) {
        this.menuService = menuService;
    }


}
