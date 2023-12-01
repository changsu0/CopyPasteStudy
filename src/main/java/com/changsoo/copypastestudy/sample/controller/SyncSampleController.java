package com.changsoo.copypastestudy.sample.controller;

import com.changsoo.copypastestudy.sample.service.SampleServiceImpl;
import com.changsoo.copypastestudy.sample.vo.DeptCodeVO;
import com.changsoo.copypastestudy.sample.vo.SampleVO;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.List;

@Controller
public class SyncSampleController {

    private final SampleServiceImpl sampleServiceImpl;

    public SyncSampleController(SampleServiceImpl sampleServiceImpl) {
        this.sampleServiceImpl = sampleServiceImpl;
    }

    @GetMapping("/syncSampleList")
    public String syncSampleList(Model model, SampleVO sampleVO, @RequestParam(value="action", required=false) String action){
        List<SampleVO> selectSampleList = sampleServiceImpl.selectSampleList(sampleVO);
        model.addAttribute("syncSampleList", selectSampleList);
        model.addAttribute("sampleVO", sampleVO);

        return "sample/syncSample/syncSampleList";
    }

    @GetMapping("/syncSampleForm")
    public String syncSampleForm(Model model, SampleVO sampleVO){
        if (!StringUtils.isEmpty( sampleVO.getUserId() )){
            SampleVO selectSample = sampleServiceImpl.selectSampleOne(sampleVO);
            model.addAttribute("sampleVO", selectSample);
        }
        return "sample/syncSample/syncSampleForm";
    }

    @PostMapping("/syncSampleFormSave")
    public String syncSampleFormSave(Model model, RedirectAttributes redirectAttributes, SampleVO sampleVO, @RequestParam(value="action", required=true) String action){
        int cnt = 0;
        if ("insert".equals(action)) {
            cnt = sampleServiceImpl.insertSample(sampleVO);
        }else if ("update".equals(action)){
            cnt = sampleServiceImpl.updateSample(sampleVO);
        }else if ("delete".equals(action)){
            cnt = sampleServiceImpl.deleteSample(sampleVO);
        }
        redirectAttributes.addAttribute("action", "1234");
        System.out.println(" Save Count :: " + cnt);
        return "redirect:/syncSampleList";
    }

//    @PostMapping("/syncSampleFormInsert")
//    public String syncSampleFormInsert(Model model, SampleVO sampleVO, @RequestParam(value="action", required=true) String action){
//        int saveCnt = sampleServiceImpl.insertSample(sampleVO);
//        return "redirect:/syncSampleList";
//    }
//
//    @PostMapping("/syncSampleFormUpdate")
//    public String syncSampleFormUpdate(Model model, SampleVO sampleVO, @RequestParam(value="action", required=true) String action){
//        int saveCnt = sampleServiceImpl.updateSample(sampleVO);
//        return "redirect:/syncSampleList";
//    }
//
//    @PostMapping("/syncSampleFormDelete")
//    public String syncSampleFormDelete(Model model, SampleVO sampleVO, @RequestParam(value="action", required=true) String action){
//        int saveCnt = sampleServiceImpl.deleteSample(sampleVO);
//        return "redirect:/syncSampleList";
//    }
}
