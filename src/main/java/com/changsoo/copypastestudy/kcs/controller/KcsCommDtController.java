package com.changsoo.copypastestudy.kcs.controller;

import com.changsoo.copypastestudy.kcs.service.KcsCommDtServiceImpl;
import com.changsoo.copypastestudy.kcs.vo.KcsCommDtVO;
import com.changsoo.copypastestudy.yjs.service.YjsCommDtServiceImpl;
import com.changsoo.copypastestudy.yjs.vo.YjsCommDtVO;
import com.google.gson.Gson;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
public class KcsCommDtController {
    final
    KcsCommDtServiceImpl kcsCommDtService;
    final
    YjsCommDtServiceImpl yjsCommDtService;

    public KcsCommDtController(KcsCommDtServiceImpl kcsCommDtService, YjsCommDtServiceImpl yjsCommDtService) {
        this.kcsCommDtService = kcsCommDtService;
        this.yjsCommDtService = yjsCommDtService;
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
