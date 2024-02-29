package com.changsoo.copypastestudy.menu.mapper;

import com.changsoo.copypastestudy.menu.vo.MenuVO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface MenuMapper {
    public List<MenuVO> yjsMenuList(MenuVO menuVO);
    int yjsMenuInsert(MenuVO menuVO);
    int yjsMenuUpdate(MenuVO menuVO);
    int yjsMenuDelete(MenuVO menuVO);
    public List<MenuVO> yjsMenuUpIdNull(MenuVO menuVO);
    public List<MenuVO> yjsMenu2Dep(MenuVO menuVO);


    /* * 공통코드 ASE ----------- START */
    public List<MenuVO> selectMenuListAse(MenuVO menuVO);
    public List<MenuVO> select1DethMenuAse(MenuVO menuVO);
    public List<MenuVO> select2DethMenuAse(MenuVO menuVO);
    public MenuVO selectMenuOneAse(MenuVO menuVO);
    int insertMenuAse(MenuVO menuVO);
    int updateMenuAse(MenuVO menuVO);
    int updateUseYnAse(MenuVO menuVO);
    public List<MenuVO> selectAuthListAse(MenuVO menuVO);
    public List<MenuVO> selectAuthMenuListAse(MenuVO menuVO);

    int deleteAuthMenuAse(MenuVO menuVO);
    int insertAuthMenuAse(MenuVO menuVO);
    /* 공통코드 ASE ----------- END */

}
