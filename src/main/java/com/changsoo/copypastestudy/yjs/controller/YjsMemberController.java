package com.changsoo.copypastestudy.yjs.controller;

import com.changsoo.copypastestudy.yjs.service.YjsMemberServiceImpl;
import com.changsoo.copypastestudy.yjs.vo.YjsMemberVO;
import com.changsoo.copypastestudy.yjs.vo.YjsMusicalVO;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class YjsMemberController {

    @Autowired
    YjsMemberServiceImpl yjsMemberService;

    @GetMapping("/yjsMemberList")
    public String selectMemberList(Model model, YjsMemberVO yjsMemberVO){

        List<YjsMemberVO> selectYjsMemberList = yjsMemberService.selectYjsMemberList(yjsMemberVO);
        model.addAttribute("selectYjsMemberList", selectYjsMemberList);

        return "yjs/member/yjsMemberList";
    }

    @GetMapping("/yjsMemberForm")
    public String selectYjsMemberForm(Model model, YjsMemberVO yjsMemberVO){
        if (!StringUtils.isEmpty( yjsMemberVO.getMemUid() )){
            YjsMemberVO selectYjsMemberForm = yjsMemberService.selectYjsMemberForm(yjsMemberVO);
            model.addAttribute("yjsMemberVO", selectYjsMemberForm);
        }
        return "yjs/member/yjsMemberForm";
    }

//    @PostMapping("/insertYjsMember")
//    public String insertYjsMember(YjsMemberVO yjsMemberVO){
//        int insertCnt = yjsMemberService.insertYjsMember(yjsMemberVO);
//        return "redirect:/yjsMemberList";
//    }

    @PostMapping("/yjsMemberFormSave")
    public String yjsMemberFormSave(Model model, YjsMemberVO yjsMemberVO, @RequestParam(value="action", required=true) String action){
        int cnt = 0;
        if ("insert".equals(action)) {
            cnt = yjsMemberService.insertYjsMemberTemp(yjsMemberVO);
        }else if ("esc".equals(action)){
//            cnt = yjsMemberService.updateYjsMusical(yjsMusicalVO);
        }else if ("recognize".equals(action)){
            cnt = yjsMemberService.insertYjsMember(yjsMemberVO);
        }
        System.out.println(" Save Count :: " + cnt);
        return "redirect:/yjsMemberList";
    }

}
