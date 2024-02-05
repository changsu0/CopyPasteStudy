package com.changsoo.copypastestudy.commCd.vo;

import lombok.Data;
import org.apache.ibatis.type.Alias;

@Data
@Alias("commonVO")
public class CommonVO {
    private String useYn;

    private String createUserId;
    private String createDt;
    private String updateUserId;
    private String updateDt;
}
