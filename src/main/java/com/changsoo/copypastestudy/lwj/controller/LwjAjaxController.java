package com.changsoo.copypastestudy.lwj.controller;
import com.changsoo.copypastestudy.lwj.service.LwjCommDtServiceImpl;
import com.changsoo.copypastestudy.lwj.service.LwjCountryServiceImpl;
import com.changsoo.copypastestudy.lwj.vo.LwjCommDtVO;
import com.google.gson.Gson;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
public class LwjAjaxController {

    //private = 접근제한자
    private final LwjCommDtServiceImpl lwjCommDtService;

    public LwjAjaxController(LwjCommDtServiceImpl lwjCommDtService) {
        this.lwjCommDtService = lwjCommDtService;
    }

    @GetMapping("/lwjAjaxList")
    public String lwjCommCdList(Model model, LwjCommDtVO lwjCommDtVO) {
        List<LwjCommDtVO> lwjCommCdList = lwjCommDtService.selectLwjCommCdList(lwjCommDtVO);
        model.addAttribute("lwjCommCdList", lwjCommCdList);

        return "lwj/ajax/lwjAjaxList";
    }

    @GetMapping("/lwjAsyncAjaxList")
    @ResponseBody //어노테이션은 스프링에서만 쓸 수 있다, 리턴하는 거 자체가 데이터라서 model이 필요X
    public String lwjCommCdList(@ModelAttribute LwjCommDtVO lwjCommDtVO) {
        String rstJson = null;
        List<LwjCommDtVO> selectLwjCommCdList = lwjCommDtService.selectLwjCommCdList(lwjCommDtVO);

        Gson gson = new Gson();
        rstJson = gson.toJson( selectLwjCommCdList );

        return rstJson;
    }

    @PostMapping("/savelwjAsyncAjax")
    @ResponseBody //어노테이션은 스프링에서만 쓸 수 있다, 리턴하는 거 자체가 데이터라서 model이 필요X
    public String savelwjAsyncAjax(@ModelAttribute LwjCommDtVO lwjCommDtVO) {
        String rstJson = null;
        try {
            LwjCommDtVO resVO = lwjCommDtService.selectLwjCommCdOne(lwjCommDtVO);
            int cnt = 0;

            if(resVO != null) {
                //Update
                cnt = lwjCommDtService.updateLwjCommCd(lwjCommDtVO);
            } else {
                //Insert
                cnt = lwjCommDtService.insertLwjCommCd(lwjCommDtVO);
            }

            Gson gson = new Gson();
            rstJson = gson.toJson( cnt );
        } catch (Exception e) {
            e.printStackTrace();
        }
        return rstJson;
    }

    @PostMapping("/deletelwjAsyncAjax")
    @ResponseBody //어노테이션은 스프링에서만 쓸 수 있다, 리턴하는 거 자체가 데이터라서 model이 필요X
    public String deletelwjAsyncAjax(@ModelAttribute LwjCommDtVO lwjCommDtVO) {
        String rstJson = null;
        try {
            int cnt = 0;
            cnt = lwjCommDtService.deleteLwjCommCd(lwjCommDtVO);

            Gson gson = new Gson();
            rstJson = gson.toJson( cnt );
        } catch (Exception e) {
            e.printStackTrace();
        }
        return rstJson;
    }

    @GetMapping("/lwjAjaxPopUp")
    public String lwjAjaxPopUp(Model model, LwjCommDtVO lwjCommDtVO) {
        model.addAttribute("lwjCommDtVO", lwjCommDtVO);

        return "lwj/ajax/lwjAjaxPopUp";
    }

    @GetMapping("/lwjAjaxLayerPopUp")
    public String lwjAjaxLayerPopUp(Model model, LwjCommDtVO lwjCommDtVO) {
        return "lwj/ajax/lwjAjaxLayerPopUp";
    }
}