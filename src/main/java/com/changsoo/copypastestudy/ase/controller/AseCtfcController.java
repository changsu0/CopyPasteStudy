package com.changsoo.copypastestudy.ase.controller;

import com.changsoo.copypastestudy.ase.service.AseCtfcServiceImpl;
import com.changsoo.copypastestudy.ase.vo.AseCtfcVO;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.List;

@Controller
public class AseCtfcController {

    private final AseCtfcServiceImpl aseCtfcServiceImpl;

    public AseCtfcController(AseCtfcServiceImpl aseCtfcServiceImpl) {
        this.aseCtfcServiceImpl = aseCtfcServiceImpl;
    }

    @GetMapping("/aseCtfcList")
    public String aseCtfcList(Model model, AseCtfcVO aseCtfcVO){

        List<AseCtfcVO> selectAseCtfcHdList = aseCtfcServiceImpl.selectAseCtfcHdList(aseCtfcVO);
        model.addAttribute("aseCtfcList", selectAseCtfcHdList);

        return "ase/certificate/aseCtfcList";
    }

    @GetMapping("/aseCtfcForm")
    public String aseCtfcForm(Model model, AseCtfcVO aseCtfcVO){
        if (!StringUtils.isEmpty( aseCtfcVO.getCtfcCd() )){
            AseCtfcVO selectAseCtfc = aseCtfcServiceImpl.selectAseCtfcHdOne(aseCtfcVO);
            model.addAttribute("aseCtfcVO", selectAseCtfc);
        }
        return "ase/certificate/aseCtfcForm";
    }

    @PostMapping("/aseCtfcHdFormSave")
    public String aseCtfcHdFormSave(Model model, AseCtfcVO aseCtfcVO, @RequestParam(value="action", required=true) String action){
        int cnt = 0;
        if ("insert".equals(action)) {
            cnt = aseCtfcServiceImpl.insertAseCtfcHd(aseCtfcVO);
        }else if ("update".equals(action)){
            cnt = aseCtfcServiceImpl.updateAseCtfcHd(aseCtfcVO);
        }else if ("delete".equals(action)){
            cnt = aseCtfcServiceImpl.deleteAseCtfcHd(aseCtfcVO);
        }
        System.out.println(" Save Count :: " + cnt);
        return "redirect:/aseCtfcList";
    }

    @GetMapping("/aseCtfcDtList")
    public String aseCtfcDtList(Model model, AseCtfcVO aseCtfcVO){
        if (!StringUtils.isEmpty( aseCtfcVO.getCtfcCd() )) {
            List<AseCtfcVO> selectAseCtfcDtList = aseCtfcServiceImpl.selectAseCtfcDtList(aseCtfcVO);
            model.addAttribute("aseCtfcDtList", selectAseCtfcDtList);
        }

        return "ase/certificate/aseCtfcDtList";
    }

    @GetMapping("/aseCtfcDtForm")
    public String aseCtfcDtForm(Model model, AseCtfcVO aseCtfcVO){
        if (!StringUtils.isEmpty( aseCtfcVO.getCtfcDtCd() )){
            AseCtfcVO selectAseCtfc = aseCtfcServiceImpl.selectAseCtfcDtOne(aseCtfcVO);
            model.addAttribute("aseCtfcVO", selectAseCtfc);
        }
        return "ase/certificate/aseCtfcDtForm";
    }

    @PostMapping("/aseCtfcDtFormSave")
    public String aseCtfcDtFormSave(Model model, AseCtfcVO aseCtfcVO, @RequestParam(value="action", required=true) String action, RedirectAttributes re){
        int cnt = 0;
        if ("insert".equals(action)) {
            cnt = aseCtfcServiceImpl.insertAseCtfcDt(aseCtfcVO);
        }else if ("update".equals(action)){
            cnt = aseCtfcServiceImpl.updateAseCtfcDt(aseCtfcVO);
        }else if ("delete".equals(action)){
            cnt = aseCtfcServiceImpl.deleteAseCtfcDt(aseCtfcVO);
        }
        re.addAttribute("ctfcCd", aseCtfcVO.getCtfcCd());
        System.out.println(" Save Count :: " + cnt);
        return "redirect:/aseCtfcDtList";
    }

}
