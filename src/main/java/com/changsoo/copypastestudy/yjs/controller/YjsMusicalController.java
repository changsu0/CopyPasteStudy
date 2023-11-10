package com.changsoo.copypastestudy.yjs.controller;

import com.changsoo.copypastestudy.sample.vo.SampleVO;
import com.changsoo.copypastestudy.yjs.service.YjsMusicalServiceImpl;
import com.changsoo.copypastestudy.yjs.vo.YjsMusicalVO;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

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

    @GetMapping("/selectYjsMusicalForm")
    public String selectYjsMusicalForm(Model model, YjsMusicalVO yjsMusicalVO){
        if (!StringUtils.isEmpty( yjsMusicalVO.getTitle() )){
            YjsMusicalVO selectYjsMusical = yjsMusicalServiceImpl.selectYjsMusicalOne(yjsMusicalVO);
            model.addAttribute("yjsMusicalVO", selectYjsMusical);
        }
        return "yjs/musical/yjsMusicalForm";
    }

    @PostMapping("/yjsMusicalFormSave")
    public String yjsMusicalFormSave(Model model, YjsMusicalVO yjsMusicalVO, @RequestParam(value="action", required=true) String action){
        int cnt = 0;
        if ("insert".equals(action)) {
            cnt = yjsMusicalServiceImpl.insertYjsMusical(yjsMusicalVO);
        }else if ("update".equals(action)){
            cnt = yjsMusicalServiceImpl.updateYjsMusical(yjsMusicalVO);
        }else if ("delete".equals(action)){
            cnt = yjsMusicalServiceImpl.deleteYjsMusical(yjsMusicalVO);
        }
        System.out.println(" Save Count :: " + cnt);
        return "redirect:/selectYjsMusicalList";
    }

}
