package com.changsoo.copypastestudy.lwj.vo;

import lombok.Data;
import org.apache.ibatis.type.Alias;

@Data
@Alias("lwjCountryVO")
public class LwjCountryVO {
    private String name;
    private String code;
}
