package com.changsoo.copypastestudy.kcs.vo;

import lombok.Data;
import org.apache.ibatis.type.Alias;

@Data
@Alias("kcsCommDtVO")
public class KcsCommDtVO {
    private String commCd;
    private String commDtCd;
    private String commDtNm;
    private String commDtDesc;
    private int sortOrder;
    private String commDtGrp;
}
