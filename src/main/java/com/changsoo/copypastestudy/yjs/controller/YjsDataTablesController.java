package com.changsoo.copypastestudy.yjs.controller;

import com.changsoo.copypastestudy.yjs.service.YjsDataTablesServiceImpl;
import com.changsoo.copypastestudy.yjs.vo.YjsDataTablesVO;
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

    @GetMapping("/YjsDataTables01List")
    @ResponseBody
    public String YjsDataTables01List(){
        String rstJson = null;
        List<YjsDataTablesVO> selectYjsMemberList = yjsDataTablesService.selectYjsDataTablesList(null);

        HashMap map = new HashMap();
        map.put("data", selectYjsMemberList);

        Gson gson = new Gson();
        rstJson = gson.toJson(map);

        return rstJson;
    }
}
