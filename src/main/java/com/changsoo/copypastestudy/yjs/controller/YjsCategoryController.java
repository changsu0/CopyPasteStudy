package com.changsoo.copypastestudy.yjs.controller;

import com.changsoo.copypastestudy.yjs.service.YjsCategoryServiceImpl;
import com.changsoo.copypastestudy.yjs.vo.YjsCategoryVO;
import com.changsoo.copypastestudy.yjs.vo.YjsMusicalVO;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class YjsCategoryController {

    private final YjsCategoryServiceImpl yjsCategoryServiceImpl;

    public YjsCategoryController(YjsCategoryServiceImpl yjsCategoryServiceImpl) {
        this.yjsCategoryServiceImpl = yjsCategoryServiceImpl;
    }

    @GetMapping("/yjsCategoryHDList")
    public String selectYjsCategoryHD(Model model, YjsCategoryVO yjsCategoryVO){

        List<YjsCategoryVO> selectYjsCategoryHD = yjsCategoryServiceImpl.selectYjsCategoryHD(yjsCategoryVO);
        model.addAttribute("selectYjsCategoryHD", selectYjsCategoryHD);

        return "yjs/category/yjsCategoryHdList";
    }

    @GetMapping("/yjsCategoryDtList")
    public String selectYjsCategoryDT(Model model, YjsCategoryVO yjsCategoryVO){
        if (!StringUtils.isEmpty( yjsCategoryVO.getCatgHdCd() )){
            List<YjsCategoryVO> selectYjsCategoryDT = yjsCategoryServiceImpl.selectYjsCategoryDT(yjsCategoryVO);
            model.addAttribute("selectYjsCategoryDT", selectYjsCategoryDT);
        }
        return "yjs/category/yjsCategoryDtList";
    }

    @GetMapping("/yjsCategoryHdForm")
    public String yjsCategoryHDOne(Model model, YjsCategoryVO yjsCategoryVO){
        if (!StringUtils.isEmpty( yjsCategoryVO.getCatgHdCd() )){
            YjsCategoryVO yjsCategoryHDOne = yjsCategoryServiceImpl.yjsCategoryHDOne(yjsCategoryVO);
            model.addAttribute("yjsCategoryVO", yjsCategoryHDOne);
        }
        return "yjs/category/yjsCategoryHdForm";
    }

    @PostMapping("/yjsCategoryHDFormSave")
    public String yjsCategoryHDFormSave(Model model, YjsCategoryVO yjsCategoryVO, @RequestParam(value="action", required=true) String action){
        int cnt = 0;
        if ("insert".equals(action)) {
            cnt = yjsCategoryServiceImpl.insertYjsCategoryHD(yjsCategoryVO);
        }else if ("update".equals(action)){
            cnt = yjsCategoryServiceImpl.updateYjsCategoryHD(yjsCategoryVO);
        }else if ("delete".equals(action)){
            cnt = yjsCategoryServiceImpl.deleteYjsCategoryHD(yjsCategoryVO);
        }
        System.out.println(" Save Count :: " + cnt);
        return "redirect:/yjsCategoryHDList";
    }

}
