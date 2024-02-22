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

}
