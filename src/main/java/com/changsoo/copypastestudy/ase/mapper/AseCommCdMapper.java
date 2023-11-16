package com.changsoo.copypastestudy.ase.mapper;

import com.changsoo.copypastestudy.ase.vo.AseCommDtVO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface AseCommCdMapper {

    public AseCommDtVO selectAseCommCdOne(AseCommDtVO aseCommDtVO);

    public List<AseCommDtVO> selectAseCommCdList(AseCommDtVO aseCommDtVO);

    public int insertAseCommCd(AseCommDtVO aseCommDtVO);

    public int updateAseCommCd(AseCommDtVO aseCommDtVO);

    public int deleteAseCommCd(AseCommDtVO aseCommDtVO);

    public AseCommDtVO selectAseCommDtOne(AseCommDtVO aseCommDtVO);

    public List<AseCommDtVO> selectAseCommDtList(AseCommDtVO aseCommDtVO);

    public int insertAseCommDt(AseCommDtVO aseCommDtVO);

    public int updateAseCommDt(AseCommDtVO aseCommDtVO);

    public int deleteAseCommDt(AseCommDtVO aseCommDtVO);

    public List<AseCommDtVO> selectAseCommCd(AseCommDtVO aseCommDtVO);
}
