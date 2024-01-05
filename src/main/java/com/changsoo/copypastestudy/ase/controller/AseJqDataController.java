package com.changsoo.copypastestudy.ase.controller;

import com.changsoo.copypastestudy.ase.service.AseCommDtServiceImpl;
import com.changsoo.copypastestudy.ase.service.AseJqDataServiceImpl;
import com.changsoo.copypastestudy.ase.vo.AseJqDataVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class AseJqDataController {

    @Autowired
    AseJqDataServiceImpl aseJqDataService;

    @Autowired
    AseCommDtServiceImpl aseCommDtService;

    @GetMapping("/aseJqDataForm")
    public String aseJqDataForm(Model model, AseJqDataVO aseJqDataVO){
        return "ase/jq_Data/aseJqDataForm";
    }

    @PostMapping("/insertAseMultiRow")
    public String insertAseMultiRow(AseJqDataVO aseJqDataVO, @RequestParam(value="action", required=true) String action){
        int cnt = 0;
        if ("insert".equals(action)) {
            cnt = aseJqDataService.insertAseMultiRow(aseJqDataVO);
        }

        return "redirect:/aseJqDataForm";
    }

    @PostMapping("/insertAseMoveData")
    public String insertAseMoveData(AseJqDataVO aseJqDataVO, @RequestParam(value="action", required=true) String action){
        int cnt = 0;
        if ("save".equals(action)) {
            cnt = aseJqDataService.insertAseMoveData(aseJqDataVO);
        }

        return "redirect:/aseJqDataForm";
    }

}
