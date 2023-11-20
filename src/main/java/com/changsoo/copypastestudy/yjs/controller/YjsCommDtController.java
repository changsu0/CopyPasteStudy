package com.changsoo.copypastestudy.yjs.controller;

import com.changsoo.copypastestudy.yjs.service.YjsCategoryServiceImpl;
import com.changsoo.copypastestudy.yjs.service.YjsCommDtServiceImpl;
import com.changsoo.copypastestudy.yjs.vo.YjsCategoryVO;
import com.changsoo.copypastestudy.yjs.vo.YjsCommDtVO;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class YjsCommDtController {

    final
    YjsCommDtServiceImpl yjsCommDtService;

    public YjsCommDtController(YjsCommDtServiceImpl yjsCommDtService) {
        this.yjsCommDtService = yjsCommDtService;
    }

    @GetMapping("/yjsCommCdList")
    public String yjsCommCdList(Model model, YjsCommDtVO yjsCommDtVO){
        List<YjsCommDtVO> yjsCommCdList = yjsCommDtService.yjsCommCdList(yjsCommDtVO);
        model.addAttribute("yjsCommCdList", yjsCommCdList);

        return "yjs/commDt/yjsCommCdList";
    }

    @GetMapping("/yjsCommCdForm")
    public String yjsCommCdForm(Model model, YjsCommDtVO yjsCommDtVO){
        // 화면이 최초 열릴 때 필요한 데이터가 있다면 조회
        // 필요한 데이터가 없다면 아무것도 안하기 > 파라미터 필요 없다.
        if (!StringUtils.isEmpty( yjsCommDtVO.getCommCd() )){
            YjsCommDtVO yjsCommCdForm = yjsCommDtService.yjsCommCdForm(yjsCommDtVO);
            model.addAttribute("yjsCommCdForm", yjsCommCdForm);
        }
        return "yjs/commDt/yjsCommCdForm";
    }

    @PostMapping("/yjsCommCdSave")
    public String yjsCommCdSave(Model model, YjsCommDtVO yjsCommDtVO, @RequestParam(value="action", required=true) String action){
        int cnt = 0;
        if ("insert".equals(action)) {
            cnt = yjsCommDtService.insertCommCd(yjsCommDtVO);
        }else if ("update".equals(action)){
            cnt = yjsCommDtService.updateCommCd(yjsCommDtVO);
        }else if ("delete".equals(action)){
            cnt = yjsCommDtService.deleteCommCd(yjsCommDtVO);
        }
        System.out.println(" Save Count :: " + cnt);
        return "redirect:/yjsCommCdList";
    }

    @GetMapping("/yjsCommDtList")
    public String yjsCommDtList(Model model, YjsCommDtVO yjsCommDtVO){
        List<YjsCommDtVO> yjsCommDtList = yjsCommDtService.yjsCommDtList(yjsCommDtVO);
        model.addAttribute("yjsCommDtList", yjsCommDtList);

        return "yjs/commDt/yjsCommDtList";
    }

    @GetMapping("/yjsCommDtForm")
    public String yjsCommDtForm(Model model, YjsCommDtVO yjsCommDtVO){
        // 화면이 최초 열릴 때 필요한 데이터가 있다면 조회
        // 필요한 데이터가 없다면 아무것도 안하기 > 파라미터 필요 없다.
        List<YjsCommDtVO> selectYjsCommCd = yjsCommDtService.selectYjsCommCd(yjsCommDtVO);
        model.addAttribute("selectYjsCommCd", selectYjsCommCd);
        if (!StringUtils.isEmpty( yjsCommDtVO.getCommDtCd() )){
            YjsCommDtVO yjsCommDtForm = yjsCommDtService.yjsCommDtForm(yjsCommDtVO);
            model.addAttribute("yjsCommDtForm", yjsCommDtForm);
        }
        return "yjs/commDt/yjsCommDtForm";
    }

    @PostMapping("/yjsCommDtSave")
    public String yjsCommDtSave(Model model, YjsCommDtVO yjsCommDtVO, @RequestParam(value="action", required=true) String action){
        int cnt = 0;
        if ("insert".equals(action)) {
            cnt = yjsCommDtService.insertCommDt(yjsCommDtVO);
        }else if ("update".equals(action)){
            cnt = yjsCommDtService.updateCommDt(yjsCommDtVO);
        }else if ("delete".equals(action)){
            cnt = yjsCommDtService.deleteCommDt(yjsCommDtVO);
        }
        System.out.println(" Save Count :: " + cnt);
        return "redirect:/yjsCommDtList";
    }

}
