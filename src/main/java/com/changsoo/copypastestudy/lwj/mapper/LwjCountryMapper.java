package com.changsoo.copypastestudy.lwj.mapper;

import com.changsoo.copypastestudy.lwj.vo.LwjCountryVO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface LwjCountryMapper {
    public LwjCountryVO selectLwjCountryOne(LwjCountryVO lwjCountryVO);

    public List<LwjCountryVO> selectLwjCountryList(LwjCountryVO lwjCountryVO);

    public int insertLwjCountry(LwjCountryVO lwjCountryVO);

    public int updateLwjCountry(LwjCountryVO lwjCountryVO);

    public int deleteLwjCountry(LwjCountryVO lwjCountryVO);
}
