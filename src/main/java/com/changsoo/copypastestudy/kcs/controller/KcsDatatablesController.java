package com.changsoo.copypastestudy.kcs.controller;

import com.changsoo.copypastestudy.ase.service.AseCommDtServiceImpl;
import com.changsoo.copypastestudy.ase.vo.AseCommDtVO;
import com.changsoo.copypastestudy.kcs.service.KcsDatatablesService;
import com.changsoo.copypastestudy.kcs.service.KcsMemServiceImpl;
import com.changsoo.copypastestudy.kcs.vo.KcsDtVO;
import com.changsoo.copypastestudy.kcs.vo.KcsMemVO;
import com.changsoo.copypastestudy.lwj.service.LwjCommDtServiceImpl;
import com.changsoo.copypastestudy.lwj.vo.LwjCommDtVO;
import com.google.gson.Gson;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.List;

@Controller
public class KcsDatatablesController {
    @Autowired
    private KcsDatatablesService kcsDatatablesService;

    @GetMapping("/kcsDatatables01")
    public String kcsDatatables01(Model model){
        return "kcs/datatables/kcsDatatables01";
    }

    @GetMapping("/kcsDatatables01List")
    @ResponseBody
    public String kcsDatatables01List(){
        String rstJson = null;

        List<KcsDtVO> kcsDtVOList = kcsDatatablesService.selectDatatablesList(null );

        HashMap map = new HashMap();
        map.put("data", kcsDtVOList);

        Gson gson = new Gson();
        rstJson = gson.toJson( map );

        return rstJson;
    }
}
