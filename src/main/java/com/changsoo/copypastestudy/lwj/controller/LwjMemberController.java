package com.changsoo.copypastestudy.lwj.controller;

import com.changsoo.copypastestudy.lwj.service.LwjMemberServiceImpl;
import com.changsoo.copypastestudy.lwj.vo.LwjMemberVO;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.List;

@Controller
public class LwjMemberController {
    @Autowired
    private LwjMemberServiceImpl lwjMemberService;

    private final LwjMemberServiceImpl lwjMemberServiceImpl;

    public LwjMemberController(LwjMemberServiceImpl lwjMemberServiceImpl) {
        this.lwjMemberServiceImpl = lwjMemberServiceImpl;
    }

    @GetMapping("/lwjMemberList")
    public String lwjMemberList(Model model, LwjMemberVO lwjMemberVO) {
        List<LwjMemberVO> lwjMemberList = lwjMemberServiceImpl.selectLwjMemberList(lwjMemberVO);
        model.addAttribute("lwjMemberList",lwjMemberList);

        return "lwj/member/lwjMemberList";
    }

    @GetMapping("/lwjMemberForm")
    public String lwjMemberOne(Model model, LwjMemberVO lwjMemberVO) {
        if (!StringUtils.isEmpty(lwjMemberVO.getMemUid() )){
            LwjMemberVO lwjMemberOne = lwjMemberServiceImpl.selectLwjMemberOne(lwjMemberVO);
            model.addAttribute("lwjMemberOne", lwjMemberOne);
        }
        List<LwjMemberVO> lwjMemberList = lwjMemberServiceImpl.selectLwjMemberList(lwjMemberVO);
        model.addAttribute("lwjMemberList",lwjMemberList);

        return "lwj/member/lwjMemberForm";
    }

    @PostMapping("/insertLwjMemberTemp")
    public String insertLwjMemberTemp(LwjMemberVO lwjMemberVO) {
        if (!StringUtils.isEmpty(lwjMemberVO.getMemUid() )) {
            LwjMemberVO lwjMemberOne = lwjMemberServiceImpl.selectLwjMemberOne(lwjMemberVO);
            int insertMember = lwjMemberService.insertLwjMember(lwjMemberVO);
        } else {
            int insertCnt = lwjMemberService.insertLwjMemberTemp(lwjMemberVO);//변수를 쓰는 이유 : return이 있어서
        }
        return "redirect:/lwjMemberList"; //ctrl+Space 누르면 자동완성
    }
}