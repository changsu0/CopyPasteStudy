package com.changsoo.copypastestudy.lwj.controller;

import com.changsoo.copypastestudy.lwj.service.LwjSubwayServiceImpl;
import com.changsoo.copypastestudy.lwj.vo.LwjSubwayVO;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class LwjSubwayController {
    private final LwjSubwayServiceImpl lwjSubwayServiceImpl;

    public LwjSubwayController(LwjSubwayServiceImpl lwjSubwayServiceImpl) {
        this.lwjSubwayServiceImpl = lwjSubwayServiceImpl;
    }

    @GetMapping("/selectLwjSubwayList")
    public String selectLwjSubwayList(Model model, LwjSubwayVO lwjSubwayVO) {
        List<LwjSubwayVO> selectLwjSubwayList = lwjSubwayServiceImpl.selectLwjSubwayList(lwjSubwayVO);
        model.addAttribute("selectLwjSubwayList", selectLwjSubwayList);

        return "lwj/subway/lwjSubwayList";
    }

    @GetMapping("/selectLwjSubwayForm")
    public String selectLwjSubwayForm(Model model, LwjSubwayVO lwjSubwayVO){
        if (!StringUtils.isEmpty(lwjSubwayVO.getNum() )){
            LwjSubwayVO selectLwjSubwayForm = lwjSubwayServiceImpl.selectLwjSubwayOne(lwjSubwayVO);
            model.addAttribute("selectLwjSubwayForm", selectLwjSubwayForm);
        }
        return "lwj/subway/lwjSubwayForm";
    }

    @PostMapping("/lwjSubwaySave")
    public String LwjSubwaySave(Model model, LwjSubwayVO lwjSubwayVO, @RequestParam(value="action", required=true) String action){
        int cnt = 0;
        if ("insert".equals(action)) {
            cnt = lwjSubwayServiceImpl.insertLwjSubway(lwjSubwayVO);
        }else if ("update".equals(action)){
            cnt = lwjSubwayServiceImpl.updateLwjSubway(lwjSubwayVO);
        }else if ("delete".equals(action)){
            cnt = lwjSubwayServiceImpl.deleteLwjSubway(lwjSubwayVO);
        }
        System.out.println(" Save Count :: " + cnt);
        return "redirect:/selectLwjSubwayList";
    }
}