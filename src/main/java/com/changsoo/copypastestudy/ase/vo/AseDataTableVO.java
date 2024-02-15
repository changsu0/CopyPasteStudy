package com.changsoo.copypastestudy.ase.vo;

import lombok.Data;
import org.apache.ibatis.type.Alias;

import java.util.List;

@Data
@Alias("aseDataTableVO")
public class AseDataTableVO {
    private String idx;
    private String name;
    private String position;
    private String office;
    private String age;
    private String salary;

    private List<String> idxList;

}
