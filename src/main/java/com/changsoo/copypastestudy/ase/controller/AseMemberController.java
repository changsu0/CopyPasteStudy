package com.changsoo.copypastestudy.ase.controller;

import com.changsoo.copypastestudy.ase.service.AseCatgServiceImpl;
import com.changsoo.copypastestudy.ase.service.AseMemberServiceImpl;
import com.changsoo.copypastestudy.ase.vo.AseCatgVO;
import com.changsoo.copypastestudy.ase.vo.AseMemberVO;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.List;

@Controller
public class AseMemberController {

    @Autowired
    AseMemberServiceImpl aseMemberService;

    @GetMapping("/aseMemberList")
    public String aseMemberList(Model model, AseMemberVO aseMemberVO){

        List<AseMemberVO> selectAseMemberList = aseMemberService.selectAseMember(aseMemberVO);
        model.addAttribute("aseMemberList", selectAseMemberList);

        return "ase/member/aseMemberList";
    }

    @GetMapping("/aseMemberForm")
    public String aseMemberForm(Model model, AseMemberVO aseMemberVO){
        if (!StringUtils.isEmpty( aseMemberVO.getMemUid() )){
            AseMemberVO selectAseMemberOne = aseMemberService.selectAseMemberOne(aseMemberVO);
            model.addAttribute("aseMemberVO", selectAseMemberOne);
        }
        return "ase/member/aseMemberForm";
    }

    @PostMapping("/insertAseMember")
    public String insertAseMember(AseMemberVO aseMemberVO, @RequestParam(value="action", required=true) String action){
        int cnt = 0;
        if ("insert".equals(action)) {
            cnt = aseMemberService.insertAseMember(aseMemberVO);
        }else if ("check".equals(action)){
            cnt = aseMemberService.insertAseCheckMember(aseMemberVO);
        }

        return "redirect:/aseMemberList";
    }


}
