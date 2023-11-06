package com.changsoo.copypastestudy.kcs.controller;

import com.changsoo.copypastestudy.kcs.service.KcsFirstServiceImpl;
import com.changsoo.copypastestudy.kcs.vo.KcsFirstVO;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

@Controller
public class KcsFirstController {

    private final KcsFirstServiceImpl kcsFirstServiceImpl;

    public KcsFirstController(KcsFirstServiceImpl kcsFirstServiceImpl) {
        this.kcsFirstServiceImpl = kcsFirstServiceImpl;
    }

    @GetMapping("/selectKcsFirstList")
    public String selectKcsFirstList(Model model, KcsFirstVO kcsFirstVO){

        List<KcsFirstVO> selectKcsFirstList = kcsFirstServiceImpl.selectKcsFirstList(kcsFirstVO);
        model.addAttribute("selectKcsFirstList", selectKcsFirstList);

        return "kcs/first/kcsFirstList";
    }

}
