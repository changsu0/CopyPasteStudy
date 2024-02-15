package com.changsoo.copypastestudy.commCd.service;

import com.changsoo.copypastestudy.commCd.mapper.CommCdMapper;
import com.changsoo.copypastestudy.commCd.vo.CommCdVO;
import com.changsoo.copypastestudy.commCd.vo.CommDtlCdVO;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CommCdService {
    final CommCdMapper commCdMapper;

    public CommCdService(CommCdMapper commCdMapper) {
        this.commCdMapper = commCdMapper;
    }

    /* 공통코드 ASE ----------- START */
    public List<CommCdVO> selectCommCdListAse(CommCdVO commCdVO) {
        return commCdMapper.selectCommCdListAse(commCdVO);
    }

    public List<CommDtlCdVO> selectCommDtlCdListAse(CommDtlCdVO commDtlCdVO) {
        return commCdMapper.selectCommDtlCdListAse(commDtlCdVO);
    }

    public CommCdVO selectCommCdOneAse(CommCdVO commCdVO) {
        return commCdMapper.selectCommCdOneAse(commCdVO);
    }

    public CommDtlCdVO selectCommDtlCdOneAse(CommDtlCdVO commDtlCdVO) {
        return commCdMapper.selectCommDtlCdOneAse(commDtlCdVO);
    }

    public int insertCommCdAse(List<CommCdVO> commCdVOList) {
        return commCdMapper.insertCommCdAse(commCdVOList);
    }

    public int updateCommCdAse(List<CommCdVO> commCdVOList) {
        return commCdMapper.updateCommCdAse(commCdVOList);
    }
    public int deleteCommCdAse(List<CommCdVO> commCdVOList) {
        return commCdMapper.deleteCommCdAse(commCdVOList);
    }
    /* 공통코드 ASE ----------- END */


    public List<CommCdVO> selectCommCdListYjs(CommCdVO commCdVO){
        return commCdMapper.selectCommCdListYjs(commCdVO);
    }

    public CommCdVO selectCommCdOneYjs(CommCdVO commCdVO){
        return commCdMapper.selectCommCdOneYjs(commCdVO);
    }

    public int insertCommCdYjs(CommCdVO commCdVO) {
        return commCdMapper.insertCommCdYjs(commCdVO);
    }

    public int updateCommCdYjs(CommCdVO commCdVO) {
        return commCdMapper.updateCommCdYjs(commCdVO);
    }

    public int deleteCommCdYjs(CommCdVO commCdVO) {
        return commCdMapper.deleteCommCdYjs(commCdVO);
    }

    public List<CommDtlCdVO> selectCommDtListYjs(CommDtlCdVO commDtlCdVO){
        return commCdMapper.selectCommDtListYjs(commDtlCdVO);
    }

    public CommDtlCdVO selectCommDtOneYjs(CommDtlCdVO commDtlCdVO){
        return commCdMapper.selectCommDtOneYjs(commDtlCdVO);
    }

    public int insertCommDtYjs(CommDtlCdVO commDtlCdVO) {
        return commCdMapper.insertCommDtYjs(commDtlCdVO);
    }

    public int updateCommDtYjs(CommDtlCdVO commDtlCdVO) {
        return commCdMapper.updateCommDtYjs(commDtlCdVO);
    }

    public int deleteCommDtYjs(CommDtlCdVO commDtlCdVO) {
        return commCdMapper.deleteCommDtYjs(commDtlCdVO);
    }
}
