package com.changsoo.copypastestudy.lwj.controller;

import com.changsoo.copypastestudy.lwj.service.LwjCountryServiceImpl;
import com.changsoo.copypastestudy.lwj.vo.LwjCountryVO;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

@Controller
public class LwjCountryController {

    private final LwjCountryServiceImpl lwjCountryServiceImpl;

    public LwjCountryController(LwjCountryServiceImpl lwjCountryServiceImpl) {
        this.lwjCountryServiceImpl = lwjCountryServiceImpl;
    }

    @GetMapping("/selectLwjCountryList")
    public String selectLwjCountryList(Model model, LwjCountryVO lwjCountryVO) {
        List<LwjCountryVO> selectLwjCountryList = lwjCountryServiceImpl.selectLwjCountryList(lwjCountryVO);
        model.addAttribute("selectLwjCountryList", selectLwjCountryList);

        return "lwj/country/lwjCountryList";
    }


}
