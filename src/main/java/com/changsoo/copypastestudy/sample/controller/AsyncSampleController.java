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
public class AsyncSampleController {

    private final SampleServiceImpl sampleServiceImpl;

    public AsyncSampleController(SampleServiceImpl sampleServiceImpl) {
        this.sampleServiceImpl = sampleServiceImpl;
    }

    @GetMapping("/asyncSampleList")
    public String asyncSampleList(Model model){
//        List<DeptCodeVO> selectDeptCodeList = sampleServiceImpl.selectDeptCodeList(null);
//        model.addAttribute("deptCodeList", selectDeptCodeList);
        return "sample/asyncSample/asyncSampleList";
    }

    @GetMapping("/selectAsyncSampleList")
    @ResponseBody
    public String selectAsyncSampleList(@ModelAttribute SampleVO sampleVO){
        String rstJson = null;
        try {
            List<SampleVO> selectSampleList = sampleServiceImpl.selectSampleList(sampleVO);
            Gson gson = new Gson();
            rstJson = gson.toJson(selectSampleList);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return rstJson;
    }

    @PostMapping("/saveAsyncSample")
    @ResponseBody
    public String saveAsyncSample(@ModelAttribute SampleVO sampleVO, @RequestParam(value="action", required=true) String action){
        if ( "save".equals(action) ){
//            int saveCnt = sampleServiceImpl.saveSample(sampleVO);
        }else if ( "delete".equals(action) ){
            int deleteCnt = sampleServiceImpl.deleteSample(sampleVO);
        }
        return new Gson().toJson(null);
    }
}
