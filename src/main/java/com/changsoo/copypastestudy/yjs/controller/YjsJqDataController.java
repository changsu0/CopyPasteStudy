package com.changsoo.copypastestudy.yjs.controller;

import com.changsoo.copypastestudy.yjs.service.YjsJqDataServiceImpl;
import com.changsoo.copypastestudy.yjs.vo.YjsJqDataVO;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class YjsJqDataController {

    @Autowired
    YjsJqDataServiceImpl yjsJqDataService;

    @GetMapping("/yjsJqDataForm")
    public String yjsJqDataForm(Model model){

        return "yjs/jq_data/yjsJqDataForm";
    }

    @PostMapping("/insertYjsJqMultiRows")
    public String insertYjsJqMultiRows(Model model, YjsJqDataVO yjsJqDataVO, @RequestParam(value="action", required=true) String action){
        if ("listService".equals(action)) {
            yjsJqDataService.insertYjsJqMultiRows(yjsJqDataVO);
        } else if ("listMybatis".equals(action)) {
            yjsJqDataService.insertYjsJqMultiRowsForeach(yjsJqDataVO);
        }
        return "redirect:/yjsJqDataForm";
    }

    @PostMapping("/insertYjsMultiSelList")
    public String insertYjsMultiSelList(Model model, YjsJqDataVO yjsJqDataVO){

        yjsJqDataService.insertYjsMultiSelList(yjsJqDataVO);

        return "redirect:/yjsJqDataForm";
    }

}
