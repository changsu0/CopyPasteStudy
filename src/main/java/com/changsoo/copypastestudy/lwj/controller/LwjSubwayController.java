package com.changsoo.copypastestudy.lwj.controller;

import com.changsoo.copypastestudy.lwj.service.LwjSubwayServiceImpl;
import com.changsoo.copypastestudy.lwj.vo.LwjSubwayVO;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

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


}
