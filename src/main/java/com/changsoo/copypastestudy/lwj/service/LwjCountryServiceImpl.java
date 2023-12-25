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
    public LwjCountryVO selectLwjCountryOne(LwjCountryVO lwjCountryVO) {
        return lwjCountryMapper.selectLwjCountryOne(lwjCountryVO);
    }

    @Override
    public List<LwjCountryVO> selectLwjCountryList(LwjCountryVO lwjCountryVO) {
        return lwjCountryMapper.selectLwjCountryList(lwjCountryVO);
    }

    @Override
    public int insertLwjCountry(LwjCountryVO lwjCountryVO) {
        return lwjCountryMapper.insertLwjCountry(lwjCountryVO);
    }

    @Override
    public int updateLwjCountry(LwjCountryVO lwjCountryVO) {
        return lwjCountryMapper.updateLwjCountry(lwjCountryVO);
    }

    @Override
    public int deleteLwjCountry(LwjCountryVO lwjCountryVO) {
        return lwjCountryMapper.deleteLwjCountry(lwjCountryVO);
    }

}
