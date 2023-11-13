package com.changsoo.copypastestudy.lwj.controller;

import com.changsoo.copypastestudy.lwj.service.LwjCategoryServiceImpl;
import com.changsoo.copypastestudy.lwj.vo.LwjCategoryVO;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class LwjCategoryController {
    private final LwjCategoryServiceImpl lwjCategoryServiceImpl;

    public LwjCategoryController(LwjCategoryServiceImpl lwjCategoryServiceImpl) {
        this.lwjCategoryServiceImpl = lwjCategoryServiceImpl;
    }

    @GetMapping("/selectLwjCategoryHeaderList")
    public String selectlwjCategoryList(Model model, LwjCategoryVO lwjCategoryVO) {
        List<LwjCategoryVO> selectLwjCategoryHeaderList = lwjCategoryServiceImpl.selectLwjCategoryList(lwjCategoryVO);
        model.addAttribute("selectLwjCategoryHeaderList", selectLwjCategoryHeaderList);

        return "lwj/category/lwjHeaderList";
    }

    @GetMapping("/selectLwjCategoryDetailList")
    public String selectlwjCategoryDetailList(Model model, LwjCategoryVO lwjCategoryVO) {
        List<LwjCategoryVO> selectLwjCategoryDetailList = lwjCategoryServiceImpl.selectLwjCategoryDetailList(lwjCategoryVO);
        model.addAttribute("selectLwjCategoryDetailList", selectLwjCategoryDetailList);

        return "lwj/category/lwjDetailList";
    }


    @GetMapping("/selectLwjCategoryHeaderForm") // 화면 -> 컨트롤러를 호출하는 URL == Form Action 같아야해
    public String selectlwjCategoryForm(Model model, LwjCategoryVO lwjCategoryVO){ // Method 함수명

        if (!StringUtils.isEmpty(lwjCategoryVO.getCatgHdCd() )){
            LwjCategoryVO selectLwjCategoryOne = lwjCategoryServiceImpl.selectLwjCategoryOne(lwjCategoryVO);

            // 컨트롤러 -> 화면 보내주는 이름!!
            // 화면에서 쓰는 값의 시작은 반드시!! attributeName으로 써야함!!!
            model.addAttribute("lwj", selectLwjCategoryOne);
        }
        // 데이터의 종류!!


        return "lwj/category/lwjHeaderForm";
    }

    @PostMapping("/lwjCategoryHeaderSave")
    public String lwjCategoryHeaderSave(Model model, LwjCategoryVO lwjCategoryVO, @RequestParam(value="action", required=true) String action){
        int cnt = 0;
        if ("insert".equals(action)) {
            cnt = lwjCategoryServiceImpl.insertLwjCategory(lwjCategoryVO);
        }else if ("update".equals(action)){
            cnt = lwjCategoryServiceImpl.updateLwjCategory(lwjCategoryVO);
        }else if ("delete".equals(action)){
            cnt = lwjCategoryServiceImpl.deleteLwjCategory(lwjCategoryVO);
        }
        System.out.println(" Save Count :: " + cnt);
        return "redirect:/selectLwjCategoryHeaderList";
    }
}