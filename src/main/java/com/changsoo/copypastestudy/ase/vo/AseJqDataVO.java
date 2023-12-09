package com.changsoo.copypastestudy.ase.vo;

import lombok.Data;
import org.apache.ibatis.type.Alias;

import java.util.List;

@Data
@Alias("aseJqDataVO")
public class AseJqDataVO {
    private String seq;
    private String inpVal;
    private String selVal;
    private String rdoVal;
    private String chkVal;


}
