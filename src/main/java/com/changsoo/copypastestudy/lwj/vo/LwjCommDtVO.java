package com.changsoo.copypastestudy.lwj.vo;

import lombok.Data;
import org.apache.ibatis.type.Alias;

@Data
@Alias("lwjCommDtVO")
public class LwjCommDtVO {
    private String commCd;
    private String commNm;
    private String commDesc;
    private String commDtCd;
    private String commDtNm;
    private String commDtDesc;
    private int sortOrder;
    private String commDtGrp;
}
