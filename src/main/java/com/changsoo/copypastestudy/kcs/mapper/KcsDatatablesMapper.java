package com.changsoo.copypastestudy.kcs.mapper;

import com.changsoo.copypastestudy.kcs.vo.KcsDtVO;
import com.changsoo.copypastestudy.kcs.vo.KcsMemVO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface KcsDatatablesMapper {
    List<KcsDtVO> selectDatatablesList(KcsDtVO kcsDtVO);
    int insertDatatables(KcsDtVO kcsDtVO);
    int updateDatatables(KcsDtVO kcsDtVO);
}
