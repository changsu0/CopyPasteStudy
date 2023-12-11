package com.changsoo.copypastestudy.yjs.controller;

import com.changsoo.copypastestudy.lwj.vo.LwjCommDtVO;
import com.changsoo.copypastestudy.yjs.service.YjsMemberServiceImpl;
import com.changsoo.copypastestudy.yjs.service.YjsCommDtServiceImpl;
import com.changsoo.copypastestudy.yjs.vo.YjsCommDtVO;
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
    @Autowired
    YjsCommDtServiceImpl yjsCommDtService;


    @GetMapping("/yjsMemberList")
    public String selectMemberList(Model model, YjsMemberVO yjsMemberVO){

        List<YjsMemberVO> selectYjsMemberList = yjsMemberService.selectYjsMemberList(yjsMemberVO);
        model.addAttribute("selectYjsMemberList", selectYjsMemberList);

        model.addAttribute("selectNum", yjsMemberVO.getMemPhone());
        model.addAttribute("selectRdo", yjsMemberVO.getMemRdo());
        model.addAttribute("selectChk", yjsMemberVO.getMemChk());
//        List<YjsMemberVO> selectChk = yjsMemberService.
//        model.addAttribute("selectChk", yjsMemberVO.getMemChk());

        return "yjs/member/yjsMemberList";
    }

    @GetMapping("/yjsMemberForm")
    public String selectYjsMemberForm(Model model, YjsMemberVO yjsMemberVO){
        YjsCommDtVO yjsCommDtVO = new YjsCommDtVO();
        yjsCommDtVO.setCommCd("kcs_chk");
        model.addAttribute( "Chk", yjsCommDtService.yjsCommDtList(yjsCommDtVO) );

        yjsCommDtVO = new YjsCommDtVO();
        yjsCommDtVO.setCommCd("kcs_rdo");
        model.addAttribute( "rdo", yjsCommDtService.yjsCommDtList(yjsCommDtVO) );

        yjsCommDtVO = new YjsCommDtVO();
        yjsCommDtVO.setCommCd("kcs_phone");
        model.addAttribute( "phone", yjsCommDtService.yjsCommDtList(yjsCommDtVO) );

        if (!StringUtils.isEmpty( yjsMemberVO.getMemUid() )){
            YjsMemberVO selectYjsMemberForm = yjsMemberService.selectYjsMemberForm(yjsMemberVO);
            model.addAttribute("yjsMemberVO", selectYjsMemberForm);
        }
        return "yjs/member/yjsMemberForm";
    }

    @PostMapping("/yjsMemberFormSave")
    public String yjsMemberFormSave(Model model, YjsMemberVO yjsMemberVO, @RequestParam(value="action", required=true) String action){
        int cnt = 0;
        if ("insert".equals(action)) {
            cnt = yjsMemberService.insertYjsMemberTemp(yjsMemberVO);
        }else if ("recognize".equals(action)){
            cnt = yjsMemberService.insertYjsMember(yjsMemberVO);
        }else if ("esc".equals(action)) {

        }
        System.out.println(" Save Count :: " + cnt);
        return "redirect:/yjsMemberList";
    }


}
