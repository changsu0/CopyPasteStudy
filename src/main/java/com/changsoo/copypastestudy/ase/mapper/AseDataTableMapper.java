package com.changsoo.copypastestudy.ase.mapper;

import com.changsoo.copypastestudy.ase.vo.AseDataTableVO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface AseDataTableMapper {
    public List<AseDataTableVO> selectAseDataTBList(AseDataTableVO aseDataTableVO);

    int insertAseDataTBList(AseDataTableVO aseDataTableVO);

    int updateAseDataTBList(AseDataTableVO aseDataTableVO);

    int deleteAseDataTBList(AseDataTableVO aseDataTableVO);
}
