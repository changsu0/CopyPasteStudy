package com.changsoo.copypastestudy.lwj.mapper;

import com.changsoo.copypastestudy.lwj.vo.LwjSubwayVO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface LwjSubwayMapper {
    public LwjSubwayVO selectLwjSubwayOne(LwjSubwayVO lwjSubwayVO);

    public List<LwjSubwayVO> selectLwjSubwayList(LwjSubwayVO lwjSubwayVO);

    public int insertLwjSubway(LwjSubwayVO lwjSubwayVO);

    public int updateLwjSubway(LwjSubwayVO lwjSubwayVO);

    public int deleteLwjSubway(LwjSubwayVO lwjSubwayVO);
}
