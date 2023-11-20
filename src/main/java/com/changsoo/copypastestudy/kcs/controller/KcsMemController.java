package com.changsoo.copypastestudy.kcs.controller;

import com.changsoo.copypastestudy.kcs.service.KcsMemServiceImpl;
import com.changsoo.copypastestudy.kcs.vo.KcsMemVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class KcsMemController {
    @Autowired
    private KcsMemServiceImpl kcsMemService;

    @GetMapping("/kcsMemForm")
    public String kcsMemForm(){
        return "kcs/member/kcsMemberForm";
    }
    @PostMapping("/insertKcsMem")
    public String insertKcsMem(KcsMemVO kcsMemVO){
        int insertCnt = kcsMemService.insertKcsMem(kcsMemVO);
        return "redirect:/yjsCategoryHDList";
    }
}