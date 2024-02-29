package com.changsoo.copypastestudy.menu.controller;

import com.changsoo.copypastestudy.menu.service.MenuService;
import com.changsoo.copypastestudy.menu.vo.MenuVO;
import com.google.gson.Gson;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;

@Controller
public class MenuController {
    final MenuService menuService;

    public MenuController(MenuService menuService) {
        this.menuService = menuService;
    }

    @GetMapping("/menuListYjs")
    public String menuListYjs(Model model){
        return "yjs/menu/yjsMenu";
    }

    @GetMapping("/selectMenuListYjs")
    @ResponseBody
    public String selectMenuListYjs(@ModelAttribute MenuVO menuVO){
        String rstJson = null;
        List<MenuVO> yjsMenuList = menuService.yjsMenuList(menuVO);

        HashMap map = new HashMap();
        map.put("data", yjsMenuList);

        Gson gson = new Gson();
        rstJson = gson.toJson(map);

        return rstJson;
    }

    @GetMapping("/yjsMenuInsert")
    @ResponseBody
    public String yjsMenuInsert(@ModelAttribute MenuVO menuVO){
        String rstJson = null;
        int cnt = menuService.yjsMenuInsert(menuVO);

        Gson gson = new Gson();
        rstJson = gson.toJson( cnt );

        return rstJson;
    }
    @GetMapping("/yjsMenuUpdate")
    @ResponseBody
    public String yjsMenuUpdate(@ModelAttribute MenuVO menuVO){
        String rstJson = null;
        int cnt = menuService.yjsMenuUpdate(menuVO);

        Gson gson = new Gson();
        rstJson = gson.toJson( cnt );

        return rstJson;
    }
    @PostMapping("/yjsMenuDelete")
    @ResponseBody
    public String yjsMenuDelete(@RequestBody MenuVO menuVO){
        String rstJson = null;
        int cnt = menuService.yjsMenuDelete(menuVO);

        Gson gson = new Gson();
        rstJson = gson.toJson( cnt );

        return rstJson;
    }
    @GetMapping("/menuListAse")
    public String menuListAse(Model model){

        return "ase/menu/aseMenu";
    }

    @GetMapping("/selectMenuListAse")
    @ResponseBody
    public String selectMenuListAse(@ModelAttribute MenuVO menuVO){
        String rstJson = null;
        List<MenuVO> selectMenuListAse = menuService.selectMenuListAse(menuVO);

        HashMap map = new HashMap();
        map.put("data", selectMenuListAse);

        Gson gson = new Gson();
        rstJson = gson.toJson( map );

        return rstJson;
    }

    @GetMapping("/insertMenuAse")
    @ResponseBody
    public String insertMenuAse(@ModelAttribute MenuVO menuVO){
        String rstJson = null;
        int cnt = menuService.insertMenuAse(menuVO);

        Gson gson = new Gson();
        rstJson = gson.toJson( cnt );

        return rstJson;
    }

    @GetMapping("/updateMenuAse")
    @ResponseBody
    public String updateMenuAse(@ModelAttribute MenuVO menuVO){
        String rstJson = null;
        int cnt = menuService.updateMenuAse(menuVO);

        Gson gson = new Gson();
        rstJson = gson.toJson( cnt );

        return rstJson;
    }

    @GetMapping("/updateUseYnAse")
    @ResponseBody
    public String updateUseYnAse(@ModelAttribute MenuVO menuVO){
        String rstJson = null;
        int cnt = menuService.updateUseYnAse(menuVO);

        Gson gson = new Gson();
        rstJson = gson.toJson( cnt );

        return rstJson;
    }

    @GetMapping("/authListAse")
    public String authListAse(Model model){

        return "ase/auth/aseAuth";
    }


    @GetMapping("/selectAuthListAse")
    @ResponseBody
    public String selectAuthListAse(@ModelAttribute MenuVO menuVO){
        String rstJson = null;
        List<MenuVO> selectAuthListAse = menuService.selectAuthListAse(menuVO);

        HashMap map = new HashMap();
        map.put("data", selectAuthListAse);

        Gson gson = new Gson();
        rstJson = gson.toJson( map );

        return rstJson;
    }

    @PostMapping("/selectAuthMenuListAse")
    @ResponseBody
    public String selectAuthMenuListAse(@RequestBody MenuVO menuVO){
        String rstJson = null;
        List<MenuVO> selectAuthMenuListAse = menuService.selectAuthMenuListAse(menuVO);

        HashMap map = new HashMap();
        map.put("data", selectAuthMenuListAse);

        Gson gson = new Gson();
        rstJson = gson.toJson( map );

        return rstJson;
    }

}
