package com.changsoo.copypastestudy.kcs.controller;

import com.changsoo.copypastestudy.ase.service.AseCommDtServiceImpl;
import com.changsoo.copypastestudy.kcs.service.KcsMemServiceImpl;
import com.changsoo.copypastestudy.kcs.vo.KcsMemVO;
import com.changsoo.copypastestudy.lwj.service.LwjCommDtServiceImpl;
import com.changsoo.copypastestudy.lwj.vo.LwjCommDtVO;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.List;

@Controller
public class KcsMemController {
    @Autowired
    private KcsMemServiceImpl kcsMemService;
    @Autowired
    private AseCommDtServiceImpl aseCommDtService;
    @Autowired
    private LwjCommDtServiceImpl lwjCommDtService;

    @GetMapping("/kcsMemForm")
    public String kcsMemForm(Model model, KcsMemVO kcsMemVO){
        LwjCommDtVO lwjCommDtVO = new LwjCommDtVO();
        lwjCommDtVO.setCommCd("kcs_chk");
        model.addAttribute( "modelChkCommCd", lwjCommDtService.selectLwjCommDtList(lwjCommDtVO) );

        lwjCommDtVO = new LwjCommDtVO();
        lwjCommDtVO.setCommCd("kcs_rdo");
        model.addAttribute( "rdo", lwjCommDtService.selectLwjCommDtList(lwjCommDtVO) );

        lwjCommDtVO = new LwjCommDtVO();
        lwjCommDtVO.setCommCd("kcs_phone");
        model.addAttribute( "phone", lwjCommDtService.selectLwjCommDtList(lwjCommDtVO) );

        if (StringUtils.isNotEmpty( kcsMemVO.getMemUid() )){
            model.addAttribute( "memVO", kcsMemService.selectKcsMemOne(kcsMemVO) );
        }
        return "kcs/member/kcsMemberForm";
    }
    @PostMapping("/insertKcsMem")
    public String insertKcsMem(KcsMemVO kcsMemVO){
        int insertCnt = kcsMemService.insertKcsMem(kcsMemVO);
        return "redirect:/selectKcsMemList";
    }
    @GetMapping("/selectKcsMemList")
    public String selectKcsMemList(Model model, KcsMemVO kcsMemVO){
        model.addAttribute("memList", kcsMemService.selectKcsMemList(kcsMemVO));
        return "kcs/member/kcsMemberList";
    }
    @GetMapping("/kcsMemAprv")
    public String kcsMemAprv(KcsMemVO kcsMemVO){
        List<KcsMemVO> selectKcsMemList = kcsMemService.selectKcsMemList(kcsMemVO);
        return "redirect:/selectKcsMemList";
    }
}
