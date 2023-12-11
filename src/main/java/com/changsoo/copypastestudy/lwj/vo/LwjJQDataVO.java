package com.changsoo.copypastestudy.lwj.vo;

import lombok.Data;
import org.apache.ibatis.type.Alias;

@Data
@Alias("lwjJQDataVO")
public class LwjJQDataVO {
    private String seq;
    private String inpVal;
    private String selVal;
    private String rdoVal;
    private String chkVal;
}