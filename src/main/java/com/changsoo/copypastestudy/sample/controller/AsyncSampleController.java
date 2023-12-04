package com.changsoo.copypastestudy.sample.controller;

import com.changsoo.copypastestudy.sample.service.SampleServiceImpl;
import com.changsoo.copypastestudy.sample.vo.SampleVO;
import com.google.gson.Gson;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class AsyncSampleController {

    private final SampleServiceImpl sampleService;

    public AsyncSampleController(SampleServiceImpl sampleService) {
        this.sampleService = sampleService;
    }

    @GetMapping("/asyncSampleList")
    public String asyncSampleList(Model model){
        return "sample/asyncSample/asyncSampleList";
    }

    @GetMapping("/selectAsyncSampleList")
    @ResponseBody
    public String asyncSampleList(@ModelAttribute SampleVO sampleVO){
        String rstJson = null;
        try {
            List<SampleVO> selectSampleList = sampleService.selectSampleList(sampleVO);

            Gson gson = new Gson();
            rstJson = gson.toJson(selectSampleList);

        } catch (Exception e) {
            e.printStackTrace();
        }
        return rstJson;
    }

    @PostMapping("/saveAsyncSample")
    @ResponseBody
    public String saveAsyncSample(@ModelAttribute SampleVO sampleVO){
        String rstJson = null;
        try {
            int cnt = sampleService.insertSample(sampleVO);
            Gson gson = new Gson();
            rstJson = gson.toJson(cnt);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return rstJson;
    }
}
