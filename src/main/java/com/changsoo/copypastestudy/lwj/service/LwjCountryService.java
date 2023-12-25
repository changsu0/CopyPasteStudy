package com.changsoo.copypastestudy.lwj.service;

import com.changsoo.copypastestudy.lwj.vo.LwjCountryVO;

import java.util.List;

public interface LwjCountryService {
    public LwjCountryVO selectLwjCountryOne(LwjCountryVO lwjCountryVO);

    public List<LwjCountryVO> selectLwjCountryList(LwjCountryVO lwjCountryVO);

    public int insertLwjCountry(LwjCountryVO lwjCountryVO);

    public int updateLwjCountry(LwjCountryVO lwjCountryVO);

    public int deleteLwjCountry(LwjCountryVO lwjCountryVO);

}
