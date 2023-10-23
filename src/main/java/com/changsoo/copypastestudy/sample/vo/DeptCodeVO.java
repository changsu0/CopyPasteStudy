package com.changsoo.copypastestudy.sample.vo;

import lombok.Data;
import org.apache.ibatis.type.Alias;

@Data
@Alias("deptCodeVO")
public class DeptCodeVO {
    private String deptCode;
    private String deptName;
    private String deptSeq;
}
