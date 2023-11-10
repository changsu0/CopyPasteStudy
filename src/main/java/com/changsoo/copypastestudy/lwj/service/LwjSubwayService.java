package com.changsoo.copypastestudy.lwj.service;

import com.changsoo.copypastestudy.lwj.vo.LwjSubwayVO;

import java.util.List;

public interface LwjSubwayService {
    public LwjSubwayVO selectLwjSubwayOne(LwjSubwayVO lwjSubwayVO);

    public List<LwjSubwayVO> selectLwjSubwayList(LwjSubwayVO lwjSubwayVO);

    public int insertLwjSubway(LwjSubwayVO lwjSubwayVO);

    public int updateLwjSubway(LwjSubwayVO lwjSubwayVO);

    public int deleteLwjSubway(LwjSubwayVO lwjSubwayVO);
}
