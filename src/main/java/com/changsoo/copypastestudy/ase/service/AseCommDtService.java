package com.changsoo.copypastestudy.ase.service;

import com.changsoo.copypastestudy.ase.vo.AseCommDtVO;
import com.changsoo.copypastestudy.ase.vo.AseCommDtVO;

import java.util.List;

public interface AseCommDtService {

    public AseCommDtVO selectAseCommCdOne(AseCommDtVO AseCommDtVO);

    public List<AseCommDtVO> selectAseCommCdList(AseCommDtVO AseCommDtVO);

    public int insertAseCommCd(AseCommDtVO AseCommDtVO);

    public int updateAseCommCd(AseCommDtVO AseCommDtVO);

    public int deleteAseCommCd(AseCommDtVO AseCommDtVO);

    public int deleteAseCommCdMulti(AseCommDtVO AseCommDtVO);

    public AseCommDtVO selectAseCommDtOne(AseCommDtVO AseCommDtVO);

    public List<AseCommDtVO> selectAseCommDtList(AseCommDtVO AseCommDtVO);

    public int insertAseCommDt(AseCommDtVO AseCommDtVO);

    public int updateAseCommDt(AseCommDtVO AseCommDtVO);

    public int deleteAseCommDt(AseCommDtVO AseCommDtVO);

    public List<AseCommDtVO> selectAseCommCd(AseCommDtVO AseCommDtVO);
}
