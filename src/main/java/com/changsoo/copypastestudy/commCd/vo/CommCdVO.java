package com.changsoo.copypastestudy.commCd.vo;

import lombok.Data;
import org.apache.ibatis.type.Alias;

@Data
@Alias("commCdVO")
public class CommCdVO {
    private String commCd;
    private String commNm;
    private String commDesc;
    private String createUserId;
    private String createDt;

    private String commDtlCd;
    private String commDtlNm;
    private String commDtlDesc;
    private String useYn;
    private String updateUserId;
    private String updateDt;
}
