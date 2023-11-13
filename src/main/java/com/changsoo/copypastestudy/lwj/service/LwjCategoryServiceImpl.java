package com.changsoo.copypastestudy.lwj.service;

import com.changsoo.copypastestudy.lwj.mapper.LwjCategoryMapper;
import com.changsoo.copypastestudy.lwj.vo.LwjCategoryVO;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class LwjCategoryServiceImpl implements LwjCategoryService {
    public final LwjCategoryMapper lwjCategoryMapper;

    public LwjCategoryServiceImpl(LwjCategoryMapper lwjCategoryMapper) {
        this.lwjCategoryMapper = lwjCategoryMapper;
    }

    @Override
    public LwjCategoryVO selectLwjCategoryOne(LwjCategoryVO lwjCategoryVO){
        return lwjCategoryMapper.selectLwjCategoryOne(lwjCategoryVO);
    }

    @Override
    public List<LwjCategoryVO> selectLwjCategoryList(LwjCategoryVO lwjCategoryVO) {
        return lwjCategoryMapper.selectLwjCategoryList(lwjCategoryVO);
    }

    @Override
    public List<LwjCategoryVO> selectLwjCategoryDetailList(LwjCategoryVO lwjCategoryVO) {
        return lwjCategoryMapper.selectLwjCategoryDetailList(lwjCategoryVO);
    }

    @Override
    public int insertLwjCategory(LwjCategoryVO lwjCategoryVO) {
        return lwjCategoryMapper.insertLwjCategory(lwjCategoryVO);
    }

    @Override
    public int updateLwjCategory(LwjCategoryVO lwjCategoryVO) {
        return lwjCategoryMapper.updateLwjCategory(lwjCategoryVO);
    }

    @Override
    public int deleteLwjCategory(LwjCategoryVO lwjCategoryVO) {
        return lwjCategoryMapper.deleteLwjCategory(lwjCategoryVO);
    }
}
