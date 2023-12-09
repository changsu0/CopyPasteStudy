package com.changsoo.copypastestudy.ase.mapper;

import com.changsoo.copypastestudy.ase.vo.AseJqDataVO;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface AseJqDataMapper {

    int insertAseMultiRow(AseJqDataVO aseJqDataVO);
}
