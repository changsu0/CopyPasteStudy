package com.changsoo.copypastestudy.yjs.vo;

import lombok.Data;
import org.apache.ibatis.type.Alias;

import java.util.List;

@Data
@Alias("yjsDataTablesVO")
public class YjsDataTablesVO {
    private String idx;
    private String name;
    private String position;
    private String office;
    private String age;
    private String salary;
}
