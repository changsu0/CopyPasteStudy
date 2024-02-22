package com.changsoo.copypastestudy.menu.mapper;

import com.changsoo.copypastestudy.commCd.vo.CommCdVO;
import com.changsoo.copypastestudy.menu.vo.MenuVO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface MenuMapper {
    public List<MenuVO> yjsMenuList(MenuVO menuVO);
    int yjsMenuInsert(MenuVO menuVO);
    int yjsMenuUpdate(MenuVO menuVO);
    int yjsMenuDelete(MenuVO menuVO);
}
