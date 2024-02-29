package com.changsoo.copypastestudy.yjs.controller;

import com.changsoo.copypastestudy.yjs.service.YjsAuthMenuService;
import com.changsoo.copypastestudy.yjs.service.YjsDataTablesServiceImpl;
import com.changsoo.copypastestudy.yjs.vo.YjsAuthMenuVO;
import com.changsoo.copypastestudy.yjs.vo.YjsDataTablesVO;
import com.google.gson.Gson;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;

@Controller
public class YjsAuthMenuController {

    private final YjsAuthMenuService yjsAuthMenuService;

    public YjsAuthMenuController(YjsAuthMenuService yjsAuthMenuService) {
        this.yjsAuthMenuService = yjsAuthMenuService;
    }

    @GetMapping("/authListYjs")
    public String authListYjs(Model model){

        return "yjs/authGrp/yjsAuthMenu";
    }

    @GetMapping("/selectAuthGrpAll")
    @ResponseBody
    public String selectAuthGrpAll(@ModelAttribute YjsAuthMenuVO yjsAuthMenuVO){
        String rstJson = null;
        List<YjsAuthMenuVO> selectAuthGrpAll = yjsAuthMenuService.selectAuthGrpAll(yjsAuthMenuVO);

        HashMap map = new HashMap();
        map.put("data", selectAuthGrpAll);

        Gson gson = new Gson();
        rstJson = gson.toJson(map);

        return rstJson;
    }

    @GetMapping("/selectMenuAll")
    @ResponseBody
    public String selectMenuAll(@ModelAttribute YjsAuthMenuVO yjsAuthMenuVO){
        String rstJson = null;
        List<YjsAuthMenuVO> selectMenuAll = yjsAuthMenuService.selectMenuAll(yjsAuthMenuVO);

        HashMap map = new HashMap();
        map.put("data", selectMenuAll);

        Gson gson = new Gson();
        rstJson = gson.toJson(map);

        return rstJson;
    }

    @PostMapping("/selectAuthMenuChk")
    @ResponseBody
    public String selectAuthMenuChk(@RequestBody YjsAuthMenuVO yjsAuthMenuVO){
        String rstJson = null;
        List<YjsAuthMenuVO> selectAuthMenuChk = yjsAuthMenuService.selectAuthMenuChk(yjsAuthMenuVO);

        HashMap map = new HashMap();
        map.put("data", selectAuthMenuChk);

        Gson gson = new Gson();
        rstJson = gson.toJson(map);

        return rstJson;
    }

}
