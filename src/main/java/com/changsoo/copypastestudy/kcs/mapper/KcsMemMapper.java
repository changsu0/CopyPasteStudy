package com.changsoo.copypastestudy.kcs.mapper;

import com.changsoo.copypastestudy.kcs.vo.KcsMemVO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface KcsMemMapper {
    int insertKcsMem(KcsMemVO kcsMemVO);
    List<KcsMemVO> selectKcsMemList(KcsMemVO kcsMemVO);
    KcsMemVO selectKcsMemOne(KcsMemVO kcsMemVO);
}
