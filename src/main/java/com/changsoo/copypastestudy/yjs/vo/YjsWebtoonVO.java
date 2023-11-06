package com.changsoo.copypastestudy.yjs.vo;

import lombok.Data;
import org.apache.ibatis.type.Alias;

@Data
@Alias("yjsWebtoonVO")
public class YjsWebtoonVO {
    private String title;
    private String author;
}
