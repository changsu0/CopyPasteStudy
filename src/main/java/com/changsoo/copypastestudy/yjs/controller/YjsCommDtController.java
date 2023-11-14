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

    @GetMapping("/yjsCommDtForm")
    public String yjsCommDtForm(){
        // 화면이 최초 열릴 때 필요한 데이터가 있다면 조회
        // 필요한 데이터가 없다면 아무것도 안하기 > 파라미터 필요 없다.

        return "yjs/commDt/yjsCommDtForm";
    }

    @PostMapping("/yjsCommDtSave")
    public String yjsCommDtSave(YjsCommDtVO yjsCommDtVO){
        int insertCnt = yjsCommDtService.insertCommDt(yjsCommDtVO);
        return "yjs/musical/yjsMusicalList";
    }

}
