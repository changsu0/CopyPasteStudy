package com.changsoo.copypastestudy.yjs.vo;

import lombok.Data;
import org.apache.ibatis.type.Alias;

@Data
@Alias("yjsMusicalVO")
public class YjsMusicalVO {
    private String title;
    private String place;
    private String firstSchedule;
    private String lastSchedule;
}
