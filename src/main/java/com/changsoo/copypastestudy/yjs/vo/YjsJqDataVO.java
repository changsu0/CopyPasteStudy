package com.changsoo.copypastestudy.yjs.vo;

import lombok.Data;
import org.apache.ibatis.type.Alias;

import java.util.List;

@Data
@Alias("yjsJqDataVO")
public class YjsJqDataVO {
    private String seq;
    private String inpVal;
    private String selVal;
    private String rdoVal;
    private String chkVal;
    private List<String> multiSelList;
}
