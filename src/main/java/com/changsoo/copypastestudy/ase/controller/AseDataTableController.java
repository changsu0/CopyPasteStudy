 package com.changsoo.copypastestudy.ase.controller;

import com.changsoo.copypastestudy.ase.service.AseCatgServiceImpl;
import com.changsoo.copypastestudy.ase.service.AseDataTableServiceImpl;
import com.changsoo.copypastestudy.ase.vo.AseCommDtVO;
import com.changsoo.copypastestudy.ase.vo.AseDataTableVO;
import com.changsoo.copypastestudy.ase.vo.AseDataTableVO;
import com.google.gson.Gson;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;

 @Controller
 public class AseDataTableController {
     private final AseDataTableServiceImpl aseDataTableService;

     public AseDataTableController(AseDataTableServiceImpl aseDataTableService) {
         this.aseDataTableService = aseDataTableService;
     }

     @GetMapping("/dataTableList")
     public String dataTableList(Model model){

         List<AseDataTableVO> selectAseDataTBList = aseDataTableService.selectAseDataTBList(null);
         
         return "ase/dataTable/aseDataTable01";
     }


     @GetMapping("/selectAseDataTBList")
     @ResponseBody
     public String selectAseDataTBList(@ModelAttribute AseDataTableVO aseDataTableVO){
         String rstJson = null;
         List<AseDataTableVO> selectAseDataTBList = aseDataTableService.selectAseDataTBList(aseDataTableVO);

         HashMap map = new HashMap();
         map.put("data", selectAseDataTBList);
         
         Gson gson = new Gson();
         rstJson = gson.toJson( map );

         return rstJson;
     }

     @GetMapping("/insertAseDataTBList")
     @ResponseBody
     public String insertAseDataTBList(@ModelAttribute AseDataTableVO aseDataTableVO){
         String rstJson = null;
         int cnt = aseDataTableService.insertAseDataTBList(aseDataTableVO);

         Gson gson = new Gson();
         rstJson = gson.toJson(cnt);

         return rstJson;
     }

     @GetMapping("/updateAseDataTBList")
     @ResponseBody
     public String updateAseDataTBList(@ModelAttribute AseDataTableVO aseDataTableVO){
         String rstJson = null;
         int cnt = aseDataTableService.updateAseDataTBList(aseDataTableVO);

         Gson gson = new Gson();
         rstJson = gson.toJson(cnt);

         return rstJson;
     }

     @PostMapping("/deleteAseDataTBList")
     @ResponseBody
     public String deleteAseDataTBList(@RequestBody AseDataTableVO aseDataTableVO){
         String rstJson = null;
         int cnt = aseDataTableService.deleteAseDataTBList(aseDataTableVO);

         Gson gson = new Gson();
         rstJson = gson.toJson(cnt);

         return rstJson;
     }

 }
