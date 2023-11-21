package com.changsoo.copypastestudy.lwj.service;

import com.changsoo.copypastestudy.lwj.mapper.LwjCommCdMapper;
import com.changsoo.copypastestudy.lwj.vo.LwjCommDtVO;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class LwjCommDtServiceImpl implements LwjCommDtService {
    public final LwjCommCdMapper lwjCommCdMapper;

    public LwjCommDtServiceImpl(LwjCommCdMapper LwjCommCdMapper) {
        this.lwjCommCdMapper = LwjCommCdMapper;
    }

    @Override
    public LwjCommDtVO selectLwjCommCdOne(LwjCommDtVO lwjCommDtVO){
        return lwjCommCdMapper.selectLwjCommCdOne(lwjCommDtVO);
    }

    @Override
    public List<LwjCommDtVO> selectLwjCommCdList(LwjCommDtVO lwjCommDtVO) {
        return lwjCommCdMapper.selectLwjCommCdList(lwjCommDtVO);
    }

    @Override
    public int insertLwjCommCd(LwjCommDtVO lwjCommDtVO) {
        return lwjCommCdMapper.insertLwjCommCd(lwjCommDtVO);
    }

    @Override
    public int updateLwjCommCd(LwjCommDtVO lwjCommDtVO) {
        return lwjCommCdMapper.updateLwjCommCd(lwjCommDtVO);
    }

    @Override
    public int deleteLwjCommCd(LwjCommDtVO lwjCommDtVO) {
        return lwjCommCdMapper.deleteLwjCommCd(lwjCommDtVO);
    }


    @Override
    public LwjCommDtVO selectLwjCommDtOne(LwjCommDtVO lwjCommDtVO){
        return lwjCommCdMapper.selectLwjCommDtOne(lwjCommDtVO);
    }

    @Override
    public List<LwjCommDtVO> selectLwjCommDtList(LwjCommDtVO lwjCommDtVO) {
        return lwjCommCdMapper.selectLwjCommDtList(lwjCommDtVO);
    }

    @Override
    public int insertLwjCommDt(LwjCommDtVO lwjCommDtVO) {
        return lwjCommCdMapper.insertLwjCommDt(lwjCommDtVO);
    }

    @Override
    public int updateLwjCommDt(LwjCommDtVO lwjCommDtVO) {
        return lwjCommCdMapper.updateLwjCommDt(lwjCommDtVO);
    }

    @Override
    public int deleteLwjCommDt(LwjCommDtVO lwjCommDtVO) {
        return lwjCommCdMapper.deleteLwjCommDt(lwjCommDtVO);
    }
}
