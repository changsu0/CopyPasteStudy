package com.changsoo.copypastestudy.commCd.vo;

import lombok.Data;
import org.apache.ibatis.type.Alias;

@Data
@Alias("commCdVO")
public class CommCdVO extends CommonVO{
    private String commCd;
    private String commNm;
    private String commDesc;

    private String commDtlCd;
    private String commDtlNm;
    private String commDtlDesc;
}
