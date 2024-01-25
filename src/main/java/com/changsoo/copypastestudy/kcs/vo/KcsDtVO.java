package com.changsoo.copypastestudy.kcs.vo;

import lombok.Data;
import org.apache.ibatis.type.Alias;

import java.util.List;

@Data
@Alias("kcsDtVO")
public class KcsDtVO {
    private String idx;
    private String name;
    private String position;
    private String office;
    private String age;
    private String salary;
}
