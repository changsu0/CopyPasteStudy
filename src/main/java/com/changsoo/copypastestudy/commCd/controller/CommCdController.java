 package com.changsoo.copypastestudy.commCd.controller;

 import com.changsoo.copypastestudy.commCd.service.CommCdService;
 import com.changsoo.copypastestudy.commCd.vo.CommCdVO;
 import com.google.gson.Gson;
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
 }
