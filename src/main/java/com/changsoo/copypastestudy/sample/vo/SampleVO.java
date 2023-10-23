package com.changsoo.copypastestudy.sample.vo;

import lombok.Data;
import org.apache.ibatis.type.Alias;

@Data
@Alias("sampleVO")
public class SampleVO extends DeptCodeVO{
    private String userId;
    private String userName;
    private String userPhone;
}
