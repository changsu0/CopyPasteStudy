package com.changsoo.copypastestudy.menu.service;

import com.changsoo.copypastestudy.commCd.vo.CommCdVO;
import com.changsoo.copypastestudy.menu.mapper.MenuMapper;
import com.changsoo.copypastestudy.menu.vo.MenuVO;
import org.springframework.stereotype.Service;

import java.util.Arrays;
import java.util.List;

@Service
public class MenuService {
    final MenuMapper menuMapper;

    public MenuService(MenuMapper menuMapper) {
        this.menuMapper = menuMapper;
    }

    public List<MenuVO> yjsMenuList(MenuVO menuVO){
        return menuMapper.yjsMenuList(menuVO);
    }

    public int yjsMenuInsert(MenuVO menuVO) {
        return menuMapper.yjsMenuInsert(menuVO);
    }

    public int yjsMenuUpdate(MenuVO menuVO) {
        return menuMapper.yjsMenuUpdate(menuVO);
    }

    public int yjsMenuDelete(MenuVO menuVO) {
        return menuMapper.yjsMenuDelete(menuVO);
    }

    /* 공통코드 ASE ----------- START */
    public List<MenuVO> selectMenuListAse(MenuVO menuVO) {
        return menuMapper.selectMenuListAse(menuVO);
    }

    public List<MenuVO> select1DethMenuAse() {
        return menuMapper.select1DethMenuAse();
    }


    public List<MenuVO> select2DethMenuAse() {
        return menuMapper.select2DethMenuAse();
    }

    public MenuVO selectMenuOneAse(MenuVO menuVO) {
        return menuMapper.selectMenuOneAse(menuVO);
    }
    public int insertMenuAse(MenuVO menuVO) {
        return menuMapper.insertMenuAse(menuVO);
    }

    public int updateMenuAse(MenuVO menuVO) {
        return menuMapper.updateMenuAse(menuVO);
    }

    public int updateUseYnAse(MenuVO menuVO) {
        return menuMapper.updateUseYnAse(menuVO);
    }

    /* 공통코드 ASE ----------- END */

}
