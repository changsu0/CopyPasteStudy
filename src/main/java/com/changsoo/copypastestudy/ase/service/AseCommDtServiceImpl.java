package com.changsoo.copypastestudy.ase.service;

import com.changsoo.copypastestudy.ase.mapper.AseCommCdMapper;
import com.changsoo.copypastestudy.ase.vo.AseCommDtVO;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Service;

import java.util.Arrays;
import java.util.List;

@Service
public class AseCommDtServiceImpl implements AseCommDtService {
    public final AseCommCdMapper aseCommCdMapper;

    public AseCommDtServiceImpl(AseCommCdMapper aseCommCdMapper) {
        this.aseCommCdMapper = aseCommCdMapper;
    }

    @Override
    public List<AseCommDtVO> selectAseCommCdList(AseCommDtVO aseCommDtVO) {
        return aseCommCdMapper.selectAseCommCdList(aseCommDtVO);
    }

    @Override
    public AseCommDtVO selectAseCommCdOne(AseCommDtVO aseCommDtVO){
        return aseCommCdMapper.selectAseCommCdOne(aseCommDtVO);
    }

    @Override
    public int insertAseCommCd(AseCommDtVO aseCommDtVO) {
        return aseCommCdMapper.insertAseCommCd(aseCommDtVO);
    }

    @Override
    public int updateAseCommCd(AseCommDtVO aseCommDtVO) {
        return aseCommCdMapper.updateAseCommCd(aseCommDtVO);
    }

    @Override
    public int deleteAseCommCd(AseCommDtVO aseCommDtVO) {
        return aseCommCdMapper.deleteAseCommCd(aseCommDtVO);
    }

    @Override
    public int deleteAseCommCdMulti(AseCommDtVO aseCommDtVO) {

        int cnt = 0;
        String commCd = aseCommDtVO.getCommCd();

        if (StringUtils.isNotEmpty(commCd)){
            List<String> commCdList = Arrays.asList(commCd.split(","));

            for (String paramCommCd : commCdList) {
                AseCommDtVO paramVO = new AseCommDtVO();
                paramVO.setCommCd(paramCommCd);

                cnt = aseCommCdMapper.deleteAseCommCd(paramVO);
            }
        }

        return cnt;
    }

    @Override
    public List<AseCommDtVO> selectAseCommDtList(AseCommDtVO aseCommDtVO) {
        return aseCommCdMapper.selectAseCommDtList(aseCommDtVO);
    }

    @Override
    public AseCommDtVO selectAseCommDtOne(AseCommDtVO aseCommDtVO){
        return aseCommCdMapper.selectAseCommDtOne(aseCommDtVO);
    }

    @Override
    public int insertAseCommDt(AseCommDtVO aseCommDtVO) {
        return aseCommCdMapper.insertAseCommDt(aseCommDtVO);
    }

    @Override
    public int updateAseCommDt(AseCommDtVO aseCommDtVO) {
        return aseCommCdMapper.updateAseCommDt(aseCommDtVO);
    }

    @Override
    public int deleteAseCommDt(AseCommDtVO aseCommDtVO) {
        return aseCommCdMapper.deleteAseCommDt(aseCommDtVO);
    }

    @Override
    public List<AseCommDtVO> selectAseCommCd(AseCommDtVO aseCommDtVO) {
        return aseCommCdMapper.selectAseCommCd(aseCommDtVO);
    }
}
