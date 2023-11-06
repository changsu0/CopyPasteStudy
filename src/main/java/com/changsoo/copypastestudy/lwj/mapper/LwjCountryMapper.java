package com.changsoo.copypastestudy.lwj.mapper;

import com.changsoo.copypastestudy.lwj.vo.LwjCountryVO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface LwjCountryMapper {
    public List<LwjCountryVO> selectLwjCountryList(LwjCountryVO lwjCountryVO);
}
