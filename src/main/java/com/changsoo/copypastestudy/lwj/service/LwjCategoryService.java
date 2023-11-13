package com.changsoo.copypastestudy.lwj.service;

import com.changsoo.copypastestudy.lwj.vo.LwjCategoryVO;

import java.util.List;

public interface LwjCategoryService {
    public LwjCategoryVO selectLwjCategoryOne(LwjCategoryVO lwjCategoryVO);

    public List<LwjCategoryVO> selectLwjCategoryList(LwjCategoryVO lwjCategoryVO);

    public List<LwjCategoryVO> selectLwjCategoryDetailList(LwjCategoryVO lwjCategoryVO);

    public int insertLwjCategory(LwjCategoryVO lwjCategoryVO);

    public int updateLwjCategory(LwjCategoryVO lwjCategoryVO);

    public int deleteLwjCategory(LwjCategoryVO lwjCategoryVO);
}
