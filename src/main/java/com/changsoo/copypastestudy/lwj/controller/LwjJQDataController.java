package com.changsoo.copypastestudy.lwj.controller;

import com.changsoo.copypastestudy.lwj.service.LwjJQDataServiceImpl;
import com.changsoo.copypastestudy.lwj.vo.LwjJQDataVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class LwjJQDataController {
    @Autowired
    private LwjJQDataServiceImpl lwjJQDataServiceImpl;

    public LwjJQDataController(LwjJQDataServiceImpl lwjJQDataServiceImpl) {
        this.lwjJQDataServiceImpl = lwjJQDataServiceImpl;
    }

    @GetMapping("/lwjJQDataForm")
    public String lwjJQDataForm(Model model, LwjJQDataVO lwjJQDataVO) {
        return "lwj/jq_Data/lwjJQDataForm";
    }

    @PostMapping("/insertLwjJqMultiRows")
    public String insertLwjJqMultiRows(LwjJQDataVO lwjJQDataVO, @RequestParam(value="action", required=true) String action) {
        int insertJQData = lwjJQDataServiceImpl.insertLwjJqMultiRows(lwjJQDataVO);

        return "redirect:/lwjJQDataForm"; //ctrl+Space 누르면 자동완성
    }
}