package com.changsoo.copypastestudy.yjs.controller;

import com.changsoo.copypastestudy.ase.service.AseCommDtServiceImpl;
import com.changsoo.copypastestudy.ase.vo.AseCommDtVO;
import com.changsoo.copypastestudy.lwj.service.LwjCommDtServiceImpl;
import com.changsoo.copypastestudy.lwj.vo.LwjCommDtVO;
import com.changsoo.copypastestudy.yjs.service.YjsCommDtServiceImpl;
import com.changsoo.copypastestudy.yjs.vo.YjsCommDtVO;
import com.changsoo.copypastestudy.yjs.service.YjsMemberServiceImpl;
import com.changsoo.copypastestudy.yjs.vo.YjsMemberVO;
import com.google.gson.Gson;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
public class YjsAjaxController {

    private final YjsCommDtServiceImpl yjsCommDtService;
    private final YjsMemberServiceImpl yjsMemberService;
    // 접근제한자
    // private=내클래스임. 내 파일에서만 접근 public=어디서나 접근 protected=내패키지

    public YjsAjaxController(YjsCommDtServiceImpl yjsCommDtService, YjsMemberServiceImpl yjsMemberService) {
        this.yjsCommDtService = yjsCommDtService;
        this.yjsMemberService = yjsMemberService;
    }

    @GetMapping("/yjsAjax")
    public String yjsAjaxList(Model model, YjsCommDtVO yjsCommDtVO, YjsMemberVO yjsMemberVO){
        List<YjsCommDtVO> yjsCommCdList = yjsCommDtService.yjsCommCdList(yjsCommDtVO);
        model.addAttribute("yjsCommCdList", yjsCommCdList);
        List<YjsMemberVO> yjsMemberList = yjsMemberService.selectYjsMemberList(yjsMemberVO);
        model.addAttribute("yjsMemberList", yjsMemberList);

        return "yjs/ajax/yjsAjax";
    }
    @GetMapping("/yjsAjaxLayerPop")
    public String yjsAjaxLayerPop(Model model, YjsCommDtVO yjsCommDtVO, YjsMemberVO yjsMemberVO){
        List<YjsCommDtVO> yjsCommCdList = yjsCommDtService.yjsCommCdList(yjsCommDtVO);
        model.addAttribute("yjsCommCdList", yjsCommCdList);

        return "yjs/ajax/yjsAjaxLayerPop";
    }

    @GetMapping("/yjsAjaxPopUp")
    public String yjsAjaxPopUp(Model model, YjsCommDtVO yjsCommDtVO){
        model.addAttribute("yjsCommDtVO", yjsCommDtVO);

        return "yjs/ajax/yjsAjaxPopUp";
    }

    @GetMapping("/selectYjsAsyncAjax")
    @ResponseBody
    public String selectYjsAsyncAjax(@ModelAttribute YjsCommDtVO yjsCommDtVO){
        String rstJson = null;
        List<YjsCommDtVO> selectYjsCommCdList = yjsCommDtService.yjsCommCdList(yjsCommDtVO);

        Gson gson = new Gson();
        rstJson = gson.toJson(selectYjsCommCdList);

        return rstJson;
    }

    @PostMapping("/saveYjsAsyncAjax")
    @ResponseBody
    public String saveYjsAsyncAjax(@ModelAttribute YjsCommDtVO yjsCommDtVO){
        String rstJson = null;
        try {
            YjsCommDtVO rstVO = yjsCommDtService.yjsCommCdForm(yjsCommDtVO);
            int cnt = 0;
            if (rstVO != null) {
                cnt = yjsCommDtService.updateCommCd(yjsCommDtVO);
            } else {
                cnt = yjsCommDtService.insertCommCd(yjsCommDtVO);
            }

            Gson gson = new Gson();
            rstJson = gson.toJson(cnt);
        } catch(Exception e) {
            e.printStackTrace();
        }
        return rstJson;
    }

    @PostMapping("/deleteYjsAsyncAjax")
    @ResponseBody
    public String deleteYjsAsyncAjax(@ModelAttribute YjsCommDtVO yjsCommDtVO){
        String rstJson = null;
        try {
            int cnt = 0;
            cnt = yjsCommDtService.deleteCommCd(yjsCommDtVO);

            Gson gson = new Gson();
            rstJson = gson.toJson(cnt);

        } catch(Exception e) {
            e.printStackTrace();
        }
        return rstJson;
    }


    @GetMapping("/selectYjsAsyncMem")
    @ResponseBody
    public String selectYjsAsyncMem(@ModelAttribute YjsMemberVO yjsMemberVO){
        String rstJson = null;
        List<YjsMemberVO> selectYjsMemberList = yjsMemberService.selectYjsMemberList(null);

        Gson gson = new Gson();
        rstJson = gson.toJson(selectYjsMemberList);

        return rstJson;
    }
}
