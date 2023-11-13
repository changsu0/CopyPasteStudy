package com.changsoo.copypastestudy.yjs.vo;

import lombok.Data;
import org.apache.ibatis.type.Alias;

@Data
@Alias("yjsCategoryVO")
public class YjsCategoryVO {
    private String catgHdCd;
    private String catgHdNm;
    private String catgDtCd;
    private String catgDtNm;
}
