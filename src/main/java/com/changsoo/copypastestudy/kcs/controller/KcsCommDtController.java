package com.changsoo.copypastestudy.kcs.controller;

import com.changsoo.copypastestudy.kcs.service.KcsCommDtServiceImpl;
import com.changsoo.copypastestudy.kcs.vo.KcsCommDtVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class KcsCommDtController {
    final
    KcsCommDtServiceImpl kcsCommDtService;

    public KcsCommDtController(KcsCommDtServiceImpl kcsCommDtService) {
        this.kcsCommDtService = kcsCommDtService;
    }

    @GetMapping("/kcsCommDtForm")
    public String kcsCommDtForm(){
        // 화면이 최초 열릴때 필요한 데이터가 있다면 조회
        // 필요한 데이터가 없다면 아무것도 하지마!!!!!!!
        return "kcs/commDt/kcsCommDtForm";
    }
    @PostMapping("/kcsCommDtSave")
    public String kcsCommDtSave(KcsCommDtVO kcsCommDtVO){
        int insertCnt = kcsCommDtService.insertCommDt(kcsCommDtVO);
        return "yjs/musical/yjsMusicalList";
    }
}
