package com.changsoo.copypastestudy.kcs.mapper;

import com.changsoo.copypastestudy.kcs.vo.KcsMemVO;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface KcsMemMapper {
    int insertKcsMem(KcsMemVO kcsMemVO);
}
