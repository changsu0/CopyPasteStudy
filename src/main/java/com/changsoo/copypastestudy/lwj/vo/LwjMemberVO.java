package com.changsoo.copypastestudy.lwj.vo;

import lombok.Data;
import org.apache.ibatis.type.Alias;

@Data
@Alias("lwjMemberVO")
public class LwjMemberVO {
    private String memUid;
    private String memName;
    private String memPhone;
    private String memPhone1;
    private String memPhone2;
    private String memPhone3;
    private String memRegNum;
    private String memRegNum1;
    private String memRegNum2;
    private String memChk;
    private String memRdo;
    private String memDesc;
    private String memCreate;
    private String memAllow;
}