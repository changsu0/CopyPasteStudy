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
    public List<LwjSubwayVO> selectLwjSubwayList(LwjSubwayVO lwjSubwayVO) {
        return lwjSubwayMapper.selectLwjSubwayList(lwjSubwayVO);
    }

}
