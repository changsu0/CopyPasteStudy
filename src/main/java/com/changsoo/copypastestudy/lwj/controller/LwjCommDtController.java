package com.changsoo.copypastestudy.lwj.controller;
import com.changsoo.copypastestudy.lwj.service.LwjCommDtServiceImpl;
import com.changsoo.copypastestudy.lwj.vo.LwjCommDtVO;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class LwjCommDtController {
    private final LwjCommDtServiceImpl lwjCommDtServiceImpl;

    public LwjCommDtController(LwjCommDtServiceImpl lwjCommDtServiceImpl) {
        this.lwjCommDtServiceImpl = lwjCommDtServiceImpl;
    }

    @GetMapping("/lwjCommCdList")
    public String lwjCommCdList(Model model, LwjCommDtVO lwjCommDtVO) {
        List<LwjCommDtVO> lwjCommCdList = lwjCommDtServiceImpl.selectLwjCommCdList(lwjCommDtVO);
        model.addAttribute("lwjCommCdList", lwjCommCdList);

        return "lwj/commDt/lwjCommCdList";
    }

    @GetMapping("/lwjCommCdForm")
    public String lwjCommCdForm(Model model, LwjCommDtVO lwjCommDtVO) {
        if (!StringUtils.isEmpty(lwjCommDtVO.getCommCd() )){
            LwjCommDtVO lwjCommCdForm = lwjCommDtServiceImpl.selectLwjCommCdOne(lwjCommDtVO);
            model.addAttribute("lwjCommCdForm", lwjCommCdForm);
        }
        //화면이 최초 열릴 때, 필요한 데이터가 있다면 조회
        //필요한 데이터가 없다면 아무것도 하지마
        return "lwj/commDt/lwjCommCdForm";
    }

    @PostMapping("/lwjcommCdSave")
    public String lwjcommCdSave(Model model, LwjCommDtVO lwjCommDtVO, @RequestParam(value="action", required=true) String action) {
        int cnt = 0;
        if ("insert".equals(action)) {
            cnt = lwjCommDtServiceImpl.insertLwjCommCd(lwjCommDtVO);
        }else if ("update".equals(action)){
            cnt = lwjCommDtServiceImpl.updateLwjCommCd(lwjCommDtVO);
        }else if ("delete".equals(action)){
            cnt = lwjCommDtServiceImpl.deleteLwjCommCd(lwjCommDtVO);
        }
        System.out.println(" Save Count :: " + cnt);
        return "redirect:/lwjCommCdList";
    }

    @GetMapping("/lwjCommDtList")
    public String lwjCommDtList(Model model, LwjCommDtVO lwjCommDtVO) {
        List<LwjCommDtVO> lwjCommDtList = lwjCommDtServiceImpl.selectLwjCommDtList(lwjCommDtVO);
        model.addAttribute("lwjCommDtList", lwjCommDtList);

        return "lwj/commDt/lwjCommDtList";
    }

    @GetMapping("/lwjCommDtForm")
    public String lwjCommDtForm(Model model, LwjCommDtVO lwjCommDtVO) {
        if (!StringUtils.isEmpty(lwjCommDtVO.getCommDtCd() )){
            LwjCommDtVO lwjCommDtForm = lwjCommDtServiceImpl.selectLwjCommDtOne(lwjCommDtVO);
            model.addAttribute("lwjCommDtForm", lwjCommDtForm);
        }
        List<LwjCommDtVO> lwjCommCdList = lwjCommDtServiceImpl.selectLwjCommCdList(new LwjCommDtVO()); //혹은 null(빈 객체 넘김)
        model.addAttribute("lwjCommCdList", lwjCommCdList);

        return "lwj/commDt/lwjCommDtForm";
    }

    @PostMapping("/lwjcommDtSave")
    public String lwjcommDtSave(Model model, LwjCommDtVO lwjCommDtVO, @RequestParam(value="action", required=true) String action) {
        int cnt = 0;
        if ("insert".equals(action)) {
            cnt = lwjCommDtServiceImpl.insertLwjCommDt(lwjCommDtVO);
        }else if ("update".equals(action)){
            cnt = lwjCommDtServiceImpl.updateLwjCommDt(lwjCommDtVO);
        }else if ("delete".equals(action)){
            cnt = lwjCommDtServiceImpl.deleteLwjCommDt(lwjCommDtVO);
        }
        System.out.println(" Save Count :: " + cnt);
        return "redirect:/lwjCommDtList";
    }
}