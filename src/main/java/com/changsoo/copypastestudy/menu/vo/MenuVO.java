package com.changsoo.copypastestudy.menu.vo;

import com.changsoo.copypastestudy.commCd.vo.CommonVO;
import lombok.Data;
import org.apache.ibatis.type.Alias;

@Data
@Alias("menuVO")
public class MenuVO extends CommonVO {
    private String menuId;
    private String menuNm;
    private String menuUpId;
    private String sortOrder;
    private String menuUrl;
}
