package com.changsoo.copypastestudy.lwj.mapper;

import com.changsoo.copypastestudy.lwj.vo.LwjCategoryVO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface LwjCategoryMapper {
    public LwjCategoryVO selectLwjCategoryOne(LwjCategoryVO lwjCategoryVO);

    public List<LwjCategoryVO> selectLwjCategoryList(LwjCategoryVO lwjCategoryVO);

    public List<LwjCategoryVO> selectLwjCategoryDetailList(LwjCategoryVO lwjCategoryVO);

    public int insertLwjCategory(LwjCategoryVO lwjCategoryVO);

    public int updateLwjCategory(LwjCategoryVO lwjCategoryVO);

    public int deleteLwjCategory(LwjCategoryVO lwjCategoryVO);
}
