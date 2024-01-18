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
 public class AseJsController {

     private final AseCommDtServiceImpl aseCommDtService;

     public AseJsController(AseCommDtServiceImpl aseCommDtService) {
         this.aseCommDtService = aseCommDtService;
     }

     @GetMapping("/aseJavaScript")
     public String aseJavaScript(Model model, AseCommDtVO aseCommDtVO){

         return "ase/aseJs/aseJavaScript";
     }



 }
