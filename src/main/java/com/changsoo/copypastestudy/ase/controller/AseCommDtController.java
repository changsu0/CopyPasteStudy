 package com.changsoo.copypastestudy.ase.controller;

import com.changsoo.copypastestudy.ase.service.AseCommDtServiceImpl;
import com.changsoo.copypastestudy.ase.vo.AseCommDtVO;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class AseCommDtController {
    final
    AseCommDtServiceImpl aseCommDtService;

    public AseCommDtController(AseCommDtServiceImpl aseCommDtService) {
        this.aseCommDtService = aseCommDtService;
    }

    @GetMapping("/aseCommCdList")
    public String aseCommCdList(Model model, AseCommDtVO aseCommDtVO){

        List<AseCommDtVO> selectAseCommCdList = aseCommDtService.selectAseCommCdList(aseCommDtVO);
        model.addAttribute("aseCommCdList", selectAseCommCdList);

        return "ase/commDt/aseCommCdList";
    }

    @GetMapping("/aseCommCdForm")
    public String aseCommCdForm(Model model, AseCommDtVO aseCommDtVO){
        if (!StringUtils.isEmpty( aseCommDtVO.getCommCd() )){
            AseCommDtVO selectAseCommCdOne = aseCommDtService.selectAseCommCdOne(aseCommDtVO);
            model.addAttribute("aseCommDtVO", selectAseCommCdOne);
        }
        return "ase/commDt/aseCommCdForm";
    }

    @PostMapping("/aseCommCdFormSave")
    public String aseCommCdFormSave(Model model, AseCommDtVO aseCommDtVO, @RequestParam(value="action", required=true) String action){
        int cnt = 0;
        if ("insert".equals(action)) {
            cnt = aseCommDtService.insertAseCommCd(aseCommDtVO);
        }else if ("update".equals(action)){
            cnt = aseCommDtService.updateAseCommCd(aseCommDtVO);
        }else if ("delete".equals(action)){
            cnt = aseCommDtService.deleteAseCommCd(aseCommDtVO);
        }
        System.out.println(" Save Count :: " + cnt);
        return "redirect:/aseCommCdList";
    }


    @GetMapping("/aseCommDtList")
    public String aseCommDtList(Model model, AseCommDtVO aseCommDtVO){

        List<AseCommDtVO> selectAseCommDtList = aseCommDtService.selectAseCommDtList(aseCommDtVO);
        model.addAttribute("aseCommDtList", selectAseCommDtList);

        return "ase/commDt/aseCommDtList";
    }

    @GetMapping("/aseCommDtForm")
    public String aseCommDtForm(Model model, AseCommDtVO aseCommDtVO){
        List<AseCommDtVO> selectAseCommCd = aseCommDtService.selectAseCommCd(aseCommDtVO);
        model.addAttribute("aseCommCd", selectAseCommCd);
        if (!StringUtils.isEmpty( aseCommDtVO.getCommDtCd() )){
            AseCommDtVO selectAseCommDtOne = aseCommDtService.selectAseCommDtOne(aseCommDtVO);
            model.addAttribute("aseCommDtVO", selectAseCommDtOne);
        }
        return "ase/commDt/aseCommDtForm";
    }

    @PostMapping("/aseCommDtFormSave")
    public String aseCommDtFormSave(Model model, AseCommDtVO aseCommDtVO, @RequestParam(value="action", required=true) String action){
        int cnt = 0;
        if ("insert".equals(action)) {
            cnt = aseCommDtService.insertAseCommDt(aseCommDtVO);
        }else if ("update".equals(action)){
            cnt = aseCommDtService.updateAseCommDt(aseCommDtVO);
        }else if ("delete".equals(action)){
            cnt = aseCommDtService.deleteAseCommDt(aseCommDtVO);
        }
        System.out.println(" Save Count :: " + cnt);
        return "redirect:/aseCommDtList";
    }



}
