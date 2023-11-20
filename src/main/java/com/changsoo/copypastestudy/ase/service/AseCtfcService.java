package com.changsoo.copypastestudy.ase.service;

import com.changsoo.copypastestudy.ase.vo.AseCtfcVO;

import java.util.List;

public interface AseCtfcService {

    public AseCtfcVO selectAseCtfcHdOne(AseCtfcVO aseCtfcVO);

    public List<AseCtfcVO> selectAseCtfcHdList(AseCtfcVO aseCtfcVO);

    public int insertAseCtfcHd(AseCtfcVO aseCtfcVO);

    public int updateAseCtfcHd(AseCtfcVO aseCtfcVO);

    public int deleteAseCtfcHd(AseCtfcVO aseCtfcVO);

    public AseCtfcVO selectAseCtfcDtOne(AseCtfcVO aseCtfcVO);

    public List<AseCtfcVO> selectAseCtfcDtList(AseCtfcVO aseCtfcVO);

    public int insertAseCtfcDt(AseCtfcVO aseCtfcVO);

    public int updateAseCtfcDt(AseCtfcVO aseCtfcVO);

    public int deleteAseCtfcDt(AseCtfcVO aseCtfcVO);
}
