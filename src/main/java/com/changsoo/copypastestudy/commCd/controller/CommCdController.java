 package com.changsoo.copypastestudy.commCd.controller;

 import com.changsoo.copypastestudy.commCd.service.CommCdService;
 import com.changsoo.copypastestudy.commCd.vo.CommCdVO;
 import com.changsoo.copypastestudy.yjs.vo.YjsDataTablesVO;
 import com.google.gson.Gson;
 import org.springframework.beans.factory.annotation.Autowired;
 import org.springframework.stereotype.Controller;
 import org.springframework.ui.Model;
 import org.springframework.web.bind.annotation.GetMapping;
 import org.springframework.web.bind.annotation.ModelAttribute;
 import org.springframework.web.bind.annotation.ResponseBody;

 import java.util.HashMap;
 import java.util.List;

 @Controller
 public class CommCdController {
     final CommCdService commCdService;

     public CommCdController(CommCdService commCdService) {
         this.commCdService = commCdService;
     }

     @GetMapping("/yjsDataTables02")
     public String yjsDataTables02(Model model){

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
 }
