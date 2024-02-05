package com.changsoo.copypastestudy.yjs.controller;

import com.changsoo.copypastestudy.yjs.service.YjsDataTablesServiceImpl;
import com.changsoo.copypastestudy.yjs.vo.YjsDataTablesVO;
import com.changsoo.copypastestudy.yjs.vo.YjsJqDataVO;
import com.google.gson.Gson;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;

@Controller
public class YjsDataTablesController {

    private final YjsDataTablesServiceImpl yjsDataTablesService;

    public YjsDataTablesController(YjsDataTablesServiceImpl yjsDataTablesService) {
        this.yjsDataTablesService = yjsDataTablesService;
    }

    @GetMapping("/yjsDataTables01")
    public String yjsDataTables01(Model model){

        return "yjs/tables/yjsDataTables01";
    }


    @GetMapping("/yjsDataTables01List")
    @ResponseBody
    public String yjsDataTables01List(@ModelAttribute YjsDataTablesVO yjsDataTablesVO){
        String rstJson = null;
        List<YjsDataTablesVO> selectYjsMemberList = yjsDataTablesService.selectYjsDataTablesList(yjsDataTablesVO);

        HashMap map = new HashMap();
        map.put("data", selectYjsMemberList);

        Gson gson = new Gson();
        rstJson = gson.toJson(map);

        return rstJson;
    }

    @GetMapping("/insertYjsDataTablesList")
    @ResponseBody
    public String insertYjsDataTablesList(@ModelAttribute YjsDataTablesVO yjsDataTablesVO){
        String rstJson = null;
        int rstCnt = yjsDataTablesService.insertYjsDataTablesList(yjsDataTablesVO);

        Gson gson = new Gson();
        rstJson = gson.toJson(rstCnt);

        return rstJson;
    }

    @GetMapping("/updateYjsDataTablesList")
    @ResponseBody
    public String updateYjsDataTablesList(@ModelAttribute YjsDataTablesVO yjsDataTablesVO){
        String rstJson = null;
        int rstCnt = yjsDataTablesService.updateYjsDataTablesList(yjsDataTablesVO);

        Gson gson = new Gson();
        rstJson = gson.toJson(rstCnt);

        return rstJson;
    }

    @PostMapping("/deleteYjsDataTablesList")
    @ResponseBody
    public String deleteYjsDataTablesList(@RequestBody List<YjsDataTablesVO> yjsDataTablesVO){
        String rstJson = null;
        int rstCnt = yjsDataTablesService.deleteYjsDataTablesList(yjsDataTablesVO);

        Gson gson = new Gson();
        rstJson = gson.toJson(rstCnt);

        return rstJson;
    }

}
