 package com.changsoo.copypastestudy.ase.controller;

import com.changsoo.copypastestudy.ase.service.AseCommDtServiceImpl;
import com.changsoo.copypastestudy.ase.vo.AseCommDtVO;
import com.google.gson.Gson;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

 @Controller
 public class AseAjaxController {

     private final AseCommDtServiceImpl aseCommDtService;

     public AseAjaxController(AseCommDtServiceImpl aseCommDtService) {
         this.aseCommDtService = aseCommDtService;
     }

     @GetMapping("/aseAjaxList")
     public String aseAjaxList(Model model, AseCommDtVO aseCommDtVO){

         return "ase/ajax/aseAjax";
     }


     @GetMapping("/aseAjaxLayer")
     public String aseAjaxLayer(Model model, AseCommDtVO aseCommDtVO){

         return "ase/ajax/aseAjaxLayer";
     }

     @GetMapping("/selectAseAsyncList")
     @ResponseBody //Annotation : 찾아보렴
     public String aseAjaxList(@ModelAttribute AseCommDtVO aseCommDtVO){
         String rstJson = null;
         List<AseCommDtVO> selectAseCommCdList = aseCommDtService.selectAseCommCdList(aseCommDtVO);

         Gson gson = new Gson();
         rstJson = gson.toJson(selectAseCommCdList);

         return rstJson;
     }

     @PostMapping("/saveAseAsyncAjax")
     @ResponseBody //Annotation : 찾아보렴
     public String saveAseAsyncAjax(@ModelAttribute AseCommDtVO aseCommDtVO){
         String rstJson = null;
         try {
             int cnt = 0;
             AseCommDtVO rstVO = aseCommDtService.selectAseCommCdOne(aseCommDtVO);

             if(rstVO == null){
                 cnt = aseCommDtService.insertAseCommCd(aseCommDtVO);
             } else {
                 cnt = aseCommDtService.updateAseCommCd(aseCommDtVO);
             }
             Gson gson = new Gson();
             rstJson = gson.toJson(cnt);
         }catch (Exception e){
             e.printStackTrace();
         }
         return rstJson;
     }

     @PostMapping("/delAseAsyncAjax")
     @ResponseBody //Annotation : 찾아보렴
     public String delAseAsyncAjax(@ModelAttribute AseCommDtVO aseCommDtVO){
         String rstJson = null;
         try {
             int cnt = 0;
             cnt = aseCommDtService.deleteAseCommCd(aseCommDtVO);

             Gson gson = new Gson();
             rstJson = gson.toJson(cnt);
         }catch (Exception e){
             e.printStackTrace();
         }
         return rstJson;
     }

     @GetMapping("/aseAjaxPopupList")
     public String aseAjaxPopupList(Model model, AseCommDtVO aseCommDtVO){

         model.addAttribute("aseCommDtVO", aseCommDtVO);

         return "ase/ajax/aseAjaxPopup";
     }

 }
