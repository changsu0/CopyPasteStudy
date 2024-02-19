package com.changsoo.copypastestudy.menu.service;

import com.changsoo.copypastestudy.menu.mapper.MenuMapper;
import org.springframework.stereotype.Service;

@Service
public class MenuService {
    final MenuMapper menuMapper;

    public MenuService(MenuMapper menuMapper) {
        this.menuMapper = menuMapper;
    }

}
