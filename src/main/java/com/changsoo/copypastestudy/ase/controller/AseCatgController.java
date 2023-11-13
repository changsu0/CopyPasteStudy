package com.changsoo.copypastestudy.ase.controller;

import com.changsoo.copypastestudy.ase.service.AseCatgServiceImpl;
import com.changsoo.copypastestudy.ase.vo.AseCatgVO;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.List;

@Controller
public class AseCatgController {

    private final AseCatgServiceImpl aseCatgServiceImpl;

    public AseCatgController(AseCatgServiceImpl aseCatgServiceImpl) {
        this.aseCatgServiceImpl = aseCatgServiceImpl;
    }

    @GetMapping("/aseCatgHdList")
    public String aseCatgHdList(Model model, AseCatgVO aseCatgVO){

        List<AseCatgVO> selectAseCatgHdList = aseCatgServiceImpl.selectAseCatgHdList(aseCatgVO);
        model.addAttribute("aseCatgHdList", selectAseCatgHdList);

        return "ase/Catg/aseCatgHdList";
    }

    @GetMapping("/aseCatgHdForm")
    public String aseCatgHdForm(Model model, AseCatgVO aseCatgVO){
        if (!StringUtils.isEmpty( aseCatgVO.getCatgHdCd() )){
            AseCatgVO selectAseCatg = aseCatgServiceImpl.selectAseCatgHdOne(aseCatgVO);
            model.addAttribute("aseCatgVO", selectAseCatg);
        }
        return "ase/Catg/aseCatgHdForm";
    }

    @PostMapping("/aseCatgHdFormSave")
    public String aseCatgHdFormSave(Model model, AseCatgVO aseCatgVO, @RequestParam(value="action", required=true) String action){
        int cnt = 0;
        if ("insert".equals(action)) {
            cnt = aseCatgServiceImpl.insertAseCatgHd(aseCatgVO);
        }else if ("update".equals(action)){
            cnt = aseCatgServiceImpl.updateAseCatgHd(aseCatgVO);
        }else if ("delete".equals(action)){
            cnt = aseCatgServiceImpl.deleteAseCatgHd(aseCatgVO);
        }
        System.out.println(" Save Count :: " + cnt);
        return "redirect:/aseCatgHdList";
    }

    @GetMapping("/aseCatgDtList")
    public String aseCatgDtList(Model model, AseCatgVO aseCatgVO){
        if (!StringUtils.isEmpty( aseCatgVO.getCatgHdCd() )) {
            List<AseCatgVO> selectAseCatgDtList = aseCatgServiceImpl.selectAseCatgDtList(aseCatgVO);
            model.addAttribute("aseCatgDtList", selectAseCatgDtList);
        }

        return "ase/Catg/aseCatgDtList";
    }

    @GetMapping("/aseCatgDtForm")
    public String aseCatgDtForm(Model model, AseCatgVO aseCatgVO){
        if (!StringUtils.isEmpty( aseCatgVO.getCatgDtCd() )){
            AseCatgVO selectAseCatg = aseCatgServiceImpl.selectAseCatgDtOne(aseCatgVO);
            model.addAttribute("aseCatgVO", selectAseCatg);
        }
        return "ase/Catg/aseCatgDtForm";
    }

    @PostMapping("/aseCatgDtFormSave")
    public String aseCatgDtFormSave(Model model, AseCatgVO aseCatgVO, @RequestParam(value="action", required=true) String action, RedirectAttributes re){
        int cnt = 0;
        if ("insert".equals(action)) {
            cnt = aseCatgServiceImpl.insertAseCatgDt(aseCatgVO);
        }else if ("update".equals(action)){
            cnt = aseCatgServiceImpl.updateAseCatgDt(aseCatgVO);
        }else if ("delete".equals(action)){
            cnt = aseCatgServiceImpl.deleteAseCatgDt(aseCatgVO);
        }
        re.addAttribute("catgHdCd", aseCatgVO.getCatgHdCd());
        System.out.println(" Save Count :: " + cnt);
        return "redirect:/aseCatgDtList";
    }

}
