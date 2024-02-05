package com.changsoo.copypastestudy.commCd.vo;

import lombok.Data;
import org.apache.ibatis.type.Alias;

@Data
@Alias("commCdVO")
public class CommDtlCdVO extends CommCdVO {
    private String commDtlCd;
    private String commDtlNm;
    private String commDtlDesc;
}
