package com.changsoo.copypastestudy.ase.controller;

import com.changsoo.copypastestudy.ase.service.AseStudyServiceImpl;
import com.changsoo.copypastestudy.ase.vo.AseStudyVO;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

@Controller
public class AseStudyController {

    private final AseStudyServiceImpl aseStudyServiceImpl;

    public AseStudyController(AseStudyServiceImpl aseStudyServiceImpl) {
        this.aseStudyServiceImpl = aseStudyServiceImpl;
    }

    @GetMapping("/aseStudyList")
    public String aseStudyList(Model model, AseStudyVO aseStudyVO){

        List<AseStudyVO> selectAseStudyList = aseStudyServiceImpl.selectAseStudyList(aseStudyVO);
        model.addAttribute("aseStudyList", selectAseStudyList);

        return "ase/study/aseStudyList";
    }

}
