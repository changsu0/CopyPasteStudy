package com.changsoo.copypastestudy.kcs.mapper;

import com.changsoo.copypastestudy.kcs.vo.KcsFirstVO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface KcsFirstMapper {

    public List<KcsFirstVO> selectKcsFirstList(KcsFirstVO kcsFirstVO);

}
