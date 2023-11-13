package com.changsoo.copypastestudy.yjs.controller;

import com.changsoo.copypastestudy.yjs.service.YjsWebtoonServiceImpl;
import com.changsoo.copypastestudy.yjs.vo.YjsWebtoonVO;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

@Controller
public class YjsWebtoonController {

    private final YjsWebtoonServiceImpl yjsWebtoonServiceImpl;

    public YjsWebtoonController(YjsWebtoonServiceImpl yjsWebtoonServiceImpl) {
        this.yjsWebtoonServiceImpl = yjsWebtoonServiceImpl;
    }

    @GetMapping("/yjsWebtoonList")
    public String selectYjsWebtoonList(Model model, YjsWebtoonVO yjsWebtoonVO){

        List<YjsWebtoonVO> selectYjsWebtoonList = yjsWebtoonServiceImpl.selectYjsWebtoonList(yjsWebtoonVO);
        model.addAttribute("selectYjsWebtoonList", selectYjsWebtoonList);

        return "yjs/webtoon/yjsWebtoonList";
    }

}
