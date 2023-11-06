package com.changsoo.copypastestudy.ase.vo;

import lombok.Data;
import org.apache.ibatis.type.Alias;

@Data
@Alias("aseMovieVO")
public class AseMovieVO {
    private String title;
    private String content;
    private String genre;
    private String runningTime;
}
