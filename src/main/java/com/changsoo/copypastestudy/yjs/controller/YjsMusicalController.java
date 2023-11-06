package com.changsoo.copypastestudy.yjs.controller;

import com.changsoo.copypastestudy.yjs.service.YjsMusicalServiceImpl;
import com.changsoo.copypastestudy.yjs.vo.YjsMusicalVO;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

@Controller
public class YjsMusicalController {

    private final YjsMusicalServiceImpl yjsMusicalServiceImpl;

    public YjsMusicalController(YjsMusicalServiceImpl yjsMusicalServiceImpl) {
        this.yjsMusicalServiceImpl = yjsMusicalServiceImpl;
    }

    @GetMapping("/selectYjsMusicalList")
    public String selectYjsMusicalList(Model model, YjsMusicalVO yjsMusicalVO){

        List<YjsMusicalVO> selectYjsMusicalList = yjsMusicalServiceImpl.selectYjsMusicalList(yjsMusicalVO);
        model.addAttribute("selectYjsMusicalList", selectYjsMusicalList);

        return "yjs/musical/yjsMusicalList";
    }

}
