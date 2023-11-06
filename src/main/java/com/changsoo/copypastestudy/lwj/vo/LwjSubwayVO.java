package com.changsoo.copypastestudy.lwj.vo;

import lombok.Data;
import org.apache.ibatis.type.Alias;

@Data
@Alias("lwjSubwayVO")
public class LwjSubwayVO {
    private String line;
    private String name;
}
