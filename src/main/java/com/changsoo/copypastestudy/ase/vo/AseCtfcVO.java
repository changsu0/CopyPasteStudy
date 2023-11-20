package com.changsoo.copypastestudy.ase.vo;

import lombok.Data;
import org.apache.ibatis.type.Alias;

@Data
@Alias("aseCtfcVO")
public class AseCtfcVO {
    private String ctfcCd;
    private String ctfcNm;
    private String ctfcDtCd;
    private String ctfcDtNm;
}
