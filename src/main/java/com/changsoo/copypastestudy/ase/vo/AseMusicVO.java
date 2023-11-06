package com.changsoo.copypastestudy.ase.vo;

import lombok.Data;
import org.apache.ibatis.type.Alias;

@Data
@Alias("aseMusicVO")
public class AseMusicVO {
    private String title;
    private String artist;
    private String genre;
    private String releaseDate;
}
