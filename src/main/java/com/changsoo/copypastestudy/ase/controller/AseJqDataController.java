package com.changsoo.copypastestudy.ase.controller;

import com.changsoo.copypastestudy.ase.service.AseCommDtServiceImpl;
import com.changsoo.copypastestudy.ase.service.AseJqDataServiceImpl;
import com.changsoo.copypastestudy.ase.service.AseJqDataServiceImpl;
import com.changsoo.copypastestudy.ase.vo.AseCommDtVO;
import com.changsoo.copypastestudy.ase.vo.AseJqDataVO;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class AseJqDataController {

    @Autowired
    AseJqDataServiceImpl aseJqDataService;

    @Autowired
    AseCommDtServiceImpl aseCommDtService;

    @GetMapping("/aseMoveDataForm")
    public String aseMoveDataForm(Model model, AseJqDataVO aseJqDataVO){
        return "ase/jq_Data/aseMoveDataForm";
    }

    @PostMapping("/insertAseMultiRow")
    public String insertAseMultiRow(AseJqDataVO aseJqDataVO, @RequestParam(value="action", required=true) String action){
        int cnt = 0;
        if ("insert".equals(action)) {
            cnt = aseJqDataService.insertAseMultiRow(aseJqDataVO);
        }

        return "redirect:/aseMoveDataForm";
    }

}
