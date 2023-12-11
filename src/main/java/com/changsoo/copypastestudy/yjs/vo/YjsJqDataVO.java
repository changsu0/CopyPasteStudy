package com.changsoo.copypastestudy.yjs.vo;

import lombok.Data;
import org.apache.ibatis.type.Alias;

@Data
@Alias("yjsJqDataVO")
public class YjsJqDataVO {
    private String seq;
    private String inpVal;
    private String selVal;
    private String rdoVal;
    private String chkVal;
}
