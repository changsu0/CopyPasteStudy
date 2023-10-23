package com.changsoo.copypastestudy.sample.controller;

import com.changsoo.copypastestudy.sample.service.SampleServiceImpl;
import com.changsoo.copypastestudy.sample.vo.DeptCodeVO;
import com.changsoo.copypastestudy.sample.vo.SampleVO;
import com.google.gson.Gson;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
public class GridSampleController {

    private final SampleServiceImpl sampleServiceImpl;

    public GridSampleController(SampleServiceImpl sampleServiceImpl) {
        this.sampleServiceImpl = sampleServiceImpl;
    }

    @GetMapping("/gridSampleList")
    public String asyncSampleList(Model model){
//        List<DeptCodeVO> selectDeptCodeList = sampleServiceImpl.selectDeptCodeList(null);
//        model.addAttribute("deptCodeList", selectDeptCodeList);
        return "sample/tabulatorGridSample/gridSampleList";
    }
}
