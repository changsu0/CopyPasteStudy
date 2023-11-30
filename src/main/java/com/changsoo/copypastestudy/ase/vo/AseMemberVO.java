package com.changsoo.copypastestudy.ase.vo;

import lombok.Data;
import org.apache.ibatis.type.Alias;

import java.util.List;

@Data
@Alias("aseMemberVO")
public class AseMemberVO {
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
    private String createDt;
    private String confDate;
    private String memUid;
    private List<String> memChkList;

}
