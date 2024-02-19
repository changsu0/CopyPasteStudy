package com.changsoo.copypastestudy.commCd.controller;

import com.changsoo.copypastestudy.commCd.service.CommCdService;
import com.changsoo.copypastestudy.commCd.vo.CommCdVO;
import com.changsoo.copypastestudy.commCd.vo.CommDtlCdVO;
import com.google.gson.Gson;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;

@Controller
public class CommCdController {
    final CommCdService commCdService;

    public CommCdController(CommCdService commCdService) {
        this.commCdService = commCdService;
    }

    @GetMapping("/commCdListYjs")
    public String commCdListYjs(Model model){

        return "yjs/tables/yjsDataTables02";
    }

    @GetMapping("/selectCommCdListYjs")
    @ResponseBody
    public String selectCommCdListYjs(@ModelAttribute CommCdVO commCdVO){
        String rstJson = null;
        List<CommCdVO> selectCommCdListYjs = commCdService.selectCommCdListYjs(commCdVO);

        HashMap map = new HashMap();
        map.put("data", selectCommCdListYjs);

        Gson gson = new Gson();
        rstJson = gson.toJson(map);

        return rstJson;
    }

    @GetMapping("/selectCommCdOneYjs")
    @ResponseBody
    public String selectCommCdOneYjs(@ModelAttribute CommCdVO commCdVO){
        String rstJson = null;
        CommCdVO selectCommCdOneYjs = commCdService.selectCommCdOneYjs(commCdVO);

        HashMap map = new HashMap();
        map.put("data", selectCommCdOneYjs);

        Gson gson = new Gson();
        rstJson = gson.toJson(map);

        return rstJson;
    }

    @PostMapping("/selectCommDtlListYjs")
    @ResponseBody
    public String selectCommDtlListYjs(@RequestBody CommDtlCdVO commDtlCdVO){
        String rstJson = null;
        List<CommDtlCdVO> selectCommCdListYjs = commCdService.selectCommDtListYjs(commDtlCdVO);

        HashMap map = new HashMap();
        map.put("data", selectCommCdListYjs);

        Gson gson = new Gson();
        rstJson = gson.toJson( map );

        return rstJson;
    }

    @GetMapping("/selectCommDtlOneYjs")
    @ResponseBody
    public String selectCommDtlOneYjs(@ModelAttribute CommDtlCdVO commDtlCdVO){
        String rstJson = null;
        CommDtlCdVO selectCommDtOneYjs = commCdService.selectCommDtOneYjs(commDtlCdVO);

        HashMap map = new HashMap();
        map.put("data", selectCommDtOneYjs);

        Gson gson = new Gson();
        rstJson = gson.toJson(map);

        return rstJson;
    }

    @PostMapping("/insertCommCdYjs")
    @ResponseBody
    public String insertCommCdYjs(@RequestBody List<CommCdVO> commCdVOList){
        String rstJson = null;
        int cnt = commCdService.insertCommCdYjs(commCdVOList);

        Gson gson = new Gson();
        rstJson = gson.toJson( cnt );

        return rstJson;
    }
    @PostMapping("/updateCommCdYjs")
    @ResponseBody
    public String updateCommCdYjs(@RequestBody List<CommCdVO> commCdVOList){
        String rstJson = null;
        int cnt = commCdService.updateCommCdYjs(commCdVOList);

        Gson gson = new Gson();
        rstJson = gson.toJson( cnt );

        return rstJson;
    }
    @PostMapping("/deleteCommCdYjs")
    @ResponseBody
    public String deleteCommCdYjs(@RequestBody List<CommCdVO> commCdVOList){
        String rstJson = null;
        int cnt = commCdService.deleteCommCdYjs(commCdVOList);

        Gson gson = new Gson();
        rstJson = gson.toJson( cnt );

        return rstJson;
    }

    @GetMapping("/commCdListAse")
    public String commCdListAse(Model model){

        return "ase/dataTable/aseDataTable01";
    }

    @GetMapping("/selectCommCdListAse")
    @ResponseBody
    public String selectCommCdListAse(@ModelAttribute CommCdVO commCdVO){
        String rstJson = null;
        List<CommCdVO> selectCommCdListAse = commCdService.selectCommCdListAse(commCdVO);

        HashMap map = new HashMap();
        map.put("data", selectCommCdListAse);

        Gson gson = new Gson();
        rstJson = gson.toJson( map );

        return rstJson;
    }

    @PostMapping("/selectCommDtlCdListAse")
    @ResponseBody
    public String selectCommDtlCdListAse(@RequestBody CommDtlCdVO commDtlCdVO){
        String rstJson = null;
        List<CommDtlCdVO> selectCommDtlCdListAse = commCdService.selectCommDtlCdListAse(commDtlCdVO);

        HashMap map = new HashMap();
        map.put("data", selectCommDtlCdListAse);

        Gson gson = new Gson();
        rstJson = gson.toJson( map );

        return rstJson;
    }

    @PostMapping("/selectCommCdOneAse")
    @ResponseBody
    public String selectCommCdOneAse(@RequestBody CommCdVO commCdVO){
        String rstJson = null;

        Gson gson = new Gson();
        rstJson = gson.toJson(commCdService.selectCommCdOneAse(commCdVO) );

        return rstJson;
    }

    @PostMapping("/selectCommDtlCdOneAse")
    @ResponseBody
    public String selectCommDtlCdOneAse(@RequestBody CommDtlCdVO commDtlCdVO){
        String rstJson = null;
        CommCdVO selectCommDtlCdOneAse = commCdService.selectCommDtlCdOneAse(commDtlCdVO);

        HashMap map = new HashMap();
        map.put("data", selectCommDtlCdOneAse);

        Gson gson = new Gson();
        rstJson = gson.toJson( map );

        return rstJson;
    }

    @PostMapping("/insertCommCdAse")
    @ResponseBody
    public String insertCommCdAse(@RequestBody List<CommCdVO> commCdVOList){
        String rstJson = null;
        int cnt = commCdService.insertCommCdAse(commCdVOList);

        Gson gson = new Gson();
        rstJson = gson.toJson( cnt );

        return rstJson;
    }


    @PostMapping("/updateCommCdAse")
    @ResponseBody
    public String updateCommCdAse(@RequestBody List<CommCdVO> commCdVOList){
        String rstJson = null;
        int cnt = commCdService.updateCommCdAse(commCdVOList);

        Gson gson = new Gson();
        rstJson = gson.toJson( cnt );

        return rstJson;
    }

    @PostMapping("/deleteCommCdAse")
    @ResponseBody
    public String deleteCommCdAse(@RequestBody List<CommCdVO> commCdVOList){
        String rstJson = null;
        int cnt = commCdService.deleteCommCdAse(commCdVOList);

        Gson gson = new Gson();
        rstJson = gson.toJson( cnt );

        return rstJson;
    }

}
