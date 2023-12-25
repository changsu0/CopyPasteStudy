package com.changsoo.copypastestudy.lwj.controller;

import com.changsoo.copypastestudy.lwj.service.LwjCountryServiceImpl;
import com.changsoo.copypastestudy.lwj.vo.LwjCountryVO;
import org.springframework.util.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class LwjCountryController {
    private final LwjCountryServiceImpl lwjCountryServiceImpl;

    public LwjCountryController(LwjCountryServiceImpl lwjCountryServiceImpl) {
        this.lwjCountryServiceImpl = lwjCountryServiceImpl;
    }

    @GetMapping("/lwjCountryList")
    public String selectLwjCountryList(Model model, LwjCountryVO lwjCountryVO) {
        List<LwjCountryVO> selectLwjCountryList = lwjCountryServiceImpl.selectLwjCountryList(lwjCountryVO);
        model.addAttribute("selectLwjCountryList", selectLwjCountryList);

        return "lwj/country/lwjCountryList";
    }

    @GetMapping("/lwjCountryForm")
    public String selectLwjCountryForm(Model model, LwjCountryVO lwjCountryVO) {
        if(!StringUtils.isEmpty(lwjCountryVO.getCode() )) {
            LwjCountryVO lwjCountryForm = lwjCountryServiceImpl.selectLwjCountryOne(lwjCountryVO);
            model.addAttribute("lwjCountryForm", lwjCountryForm);
        }
        return "lwj/country/lwjCountryForm";
    }

    @PostMapping("/lwjCountrySave")
    public String LwjCountrySave(Model model, LwjCountryVO lwjCountryVO, @RequestParam(value = "action", required = true) String action) {
        int cnt = 0;
        if("insert".equals(action)) {
            cnt = lwjCountryServiceImpl.insertLwjCountry(lwjCountryVO);
        } else if ("update".equals(action)) {
            cnt = lwjCountryServiceImpl.updateLwjCountry(lwjCountryVO);
        } else if ("delete".equals(action)) {
            cnt = lwjCountryServiceImpl.deleteLwjCountry(lwjCountryVO);
        }
        System.out.println(" Save Count :: " + cnt);
        return "redirect:/lwjCountryList";
    }
}
