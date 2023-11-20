package com.changsoo.copypastestudy.ase.service;

import com.changsoo.copypastestudy.ase.mapper.AseCtfcMapper;
import com.changsoo.copypastestudy.ase.vo.AseCtfcVO;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AseCtfcServiceImpl implements AseCtfcService {
    public final AseCtfcMapper aseCtfcMapper;

    public AseCtfcServiceImpl(AseCtfcMapper aseCtfcMapper) {
        this.aseCtfcMapper = aseCtfcMapper;
    }

    @Override
    public List<AseCtfcVO> selectAseCtfcHdList(AseCtfcVO aseCtfcVO) {
        return aseCtfcMapper.selectAseCtfcHdList(aseCtfcVO);
    }

    @Override
    public AseCtfcVO selectAseCtfcHdOne(AseCtfcVO aseCtfcVO){
        return aseCtfcMapper.selectAseCtfcHdOne(aseCtfcVO);
    }

    @Override
    public int insertAseCtfcHd(AseCtfcVO aseCtfcVO) {
        return aseCtfcMapper.insertAseCtfcHd(aseCtfcVO);
    }

    @Override
    public int updateAseCtfcHd(AseCtfcVO aseCtfcVO) {
        return aseCtfcMapper.updateAseCtfcHd(aseCtfcVO);
    }

    @Override
    public int deleteAseCtfcHd(AseCtfcVO aseCtfcVO) {
        return aseCtfcMapper.deleteAseCtfcHd(aseCtfcVO);
    }

    public List<AseCtfcVO> selectAseCtfcDtList(AseCtfcVO aseCtfcVO) {
        return aseCtfcMapper.selectAseCtfcDtList(aseCtfcVO);
    }

    @Override
    public AseCtfcVO selectAseCtfcDtOne(AseCtfcVO aseCtfcVO){
        return aseCtfcMapper.selectAseCtfcDtOne(aseCtfcVO);
    }

    @Override
    public int insertAseCtfcDt(AseCtfcVO aseCtfcVO) {
        return aseCtfcMapper.insertAseCtfcDt(aseCtfcVO);
    }

    @Override
    public int updateAseCtfcDt(AseCtfcVO aseCtfcVO) {
        return aseCtfcMapper.updateAseCtfcDt(aseCtfcVO);
    }

    @Override
    public int deleteAseCtfcDt(AseCtfcVO aseCtfcVO) {
        return aseCtfcMapper.deleteAseCtfcDt(aseCtfcVO);
    }
}
