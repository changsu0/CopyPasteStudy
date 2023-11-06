package com.changsoo.copypastestudy.lwj.service;

import com.changsoo.copypastestudy.lwj.mapper.LwjCountryMapper;
import com.changsoo.copypastestudy.lwj.vo.LwjCountryVO;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class LwjCountryServiceImpl implements LwjCountryService {
    public final LwjCountryMapper lwjCountryMapper;

    public LwjCountryServiceImpl(LwjCountryMapper lwjCountryMapper) {
        this.lwjCountryMapper = lwjCountryMapper;
    }

    @Override
    public List<LwjCountryVO> selectLwjCountryList(LwjCountryVO lwjCountryVO) {
        return lwjCountryMapper.selectLwjCountryList(lwjCountryVO);
    }

}
