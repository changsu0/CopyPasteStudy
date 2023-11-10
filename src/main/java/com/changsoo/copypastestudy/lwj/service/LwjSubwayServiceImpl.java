package com.changsoo.copypastestudy.lwj.service;

import com.changsoo.copypastestudy.lwj.mapper.LwjSubwayMapper;
import com.changsoo.copypastestudy.lwj.vo.LwjSubwayVO;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class LwjSubwayServiceImpl implements LwjSubwayService {
    public final LwjSubwayMapper lwjSubwayMapper;

    public LwjSubwayServiceImpl(LwjSubwayMapper lwjSubwayMapper) {
        this.lwjSubwayMapper = lwjSubwayMapper;
    }

    @Override
    public LwjSubwayVO selectLwjSubwayOne(LwjSubwayVO lwjSubwayVO){
        return lwjSubwayMapper.selectLwjSubwayOne(lwjSubwayVO);
    }

    @Override
    public List<LwjSubwayVO> selectLwjSubwayList(LwjSubwayVO lwjSubwayVO) {
        return lwjSubwayMapper.selectLwjSubwayList(lwjSubwayVO);
    }

    @Override
    public int insertLwjSubway(LwjSubwayVO lwjSubwayVO) {
        return lwjSubwayMapper.insertLwjSubway(lwjSubwayVO);
    }

    @Override
    public int updateLwjSubway(LwjSubwayVO lwjSubwayVO) {
        return lwjSubwayMapper.updateLwjSubway(lwjSubwayVO);
    }

    @Override
    public int deleteLwjSubway(LwjSubwayVO lwjSubwayVO) {
        return lwjSubwayMapper.deleteLwjSubway(lwjSubwayVO);
    }
}
