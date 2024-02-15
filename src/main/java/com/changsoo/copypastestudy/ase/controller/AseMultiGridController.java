 package com.changsoo.copypastestudy.ase.controller;

import com.changsoo.copypastestudy.ase.service.AseDataTableServiceImpl;
import com.changsoo.copypastestudy.ase.vo.AseDataTableVO;
import com.google.gson.Gson;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;

 @Controller
 public class AseMultiGridController {
     private final AseDataTableServiceImpl aseDataTableService;

     public AseMultiGridController(AseDataTableServiceImpl aseDataTableService) {
         this.aseDataTableService = aseDataTableService;
     }

     @GetMapping("/aseMultiGrid")
     public String aseMultiGrid(Model model){
         return "ase/dataTable/aseDataTable01";
     }

 }
