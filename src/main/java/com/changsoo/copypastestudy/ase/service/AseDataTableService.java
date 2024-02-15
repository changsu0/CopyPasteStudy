package com.changsoo.copypastestudy.ase.service;

import com.changsoo.copypastestudy.ase.vo.AseCatgVO;
import com.changsoo.copypastestudy.ase.vo.AseDataTableVO;

import java.util.List;

public interface AseDataTableService {

    public List<AseDataTableVO> selectAseDataTBList(AseDataTableVO aseDataTableVO);

    public int insertAseDataTBList(AseDataTableVO aseDataTableVO);

    int updateAseDataTBList(AseDataTableVO aseDataTableVO);

    int deleteAseDataTBList(AseDataTableVO aseDataTableVO);

}
