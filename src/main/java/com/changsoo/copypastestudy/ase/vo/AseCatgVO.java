package com.changsoo.copypastestudy.ase.vo;

import lombok.Data;
import org.apache.ibatis.type.Alias;

@Data
@Alias("aseCatgVO")
public class AseCatgVO {
    private String catgHdCd;
    private String catgHdNm;
    private String catgDtCd;
    private String catgDtNm;
}
