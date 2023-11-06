package com.changsoo.copypastestudy.kcs.vo;

import lombok.Data;
import org.apache.ibatis.type.Alias;

@Data
@Alias("kcsFirstVO")
public class KcsFirstVO {
    private String col1;
    private String col2;
}
