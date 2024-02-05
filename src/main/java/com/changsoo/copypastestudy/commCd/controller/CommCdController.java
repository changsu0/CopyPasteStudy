 package com.changsoo.copypastestudy.commCd.controller;

 import com.changsoo.copypastestudy.commCd.service.CommCdService;
 import org.springframework.beans.factory.annotation.Autowired;
 import org.springframework.stereotype.Controller;

 @Controller
 public class CommCdController {
     final CommCdService commCdService;

     public CommCdController(CommCdService commCdService) {
         this.commCdService = commCdService;
     }
 }
