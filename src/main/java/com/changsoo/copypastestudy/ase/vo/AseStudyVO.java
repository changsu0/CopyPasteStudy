package com.changsoo.copypastestudy.ase.vo;

import lombok.Data;
import org.apache.ibatis.type.Alias;

@Data
@Alias("aseStudyVO")
public class AseStudyVO {
    private String title;
    private String comment1;
}
