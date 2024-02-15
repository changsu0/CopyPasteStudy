package com.changsoo.copypastestudy.ase.service;

import com.changsoo.copypastestudy.ase.mapper.AseDataTableMapper;
import com.changsoo.copypastestudy.ase.vo.AseCatgVO;
import com.changsoo.copypastestudy.ase.vo.AseDataTableVO;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AseDataTableServiceImpl implements AseDataTableService {
    public final AseDataTableMapper aseDataTableMapper;

    public AseDataTableServiceImpl(AseDataTableMapper aseDataTableMapper) {
        this.aseDataTableMapper = aseDataTableMapper;
    }

    @Override
    public List<AseDataTableVO> selectAseDataTBList(AseDataTableVO aseDataTableVO) {
        return aseDataTableMapper.selectAseDataTBList(aseDataTableVO);
    }

    public int insertAseDataTBList(AseDataTableVO aseDataTableVO) {
        return aseDataTableMapper.insertAseDataTBList(aseDataTableVO);
    }

    public int updateAseDataTBList(AseDataTableVO aseDataTableVO) {
        return aseDataTableMapper.updateAseDataTBList(aseDataTableVO);
    }

    public int deleteAseDataTBList(AseDataTableVO aseDataTableVO) {

        return aseDataTableMapper.deleteAseDataTBList(aseDataTableVO);
    }


}
