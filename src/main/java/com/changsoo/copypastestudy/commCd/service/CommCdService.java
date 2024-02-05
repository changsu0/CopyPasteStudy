package com.changsoo.copypastestudy.commCd.service;

import com.changsoo.copypastestudy.ase.mapper.AseCatgMapper;
import com.changsoo.copypastestudy.ase.service.AseCatgService;
import com.changsoo.copypastestudy.ase.vo.AseCatgVO;
import com.changsoo.copypastestudy.commCd.mapper.CommCdMapper;
import com.changsoo.copypastestudy.commCd.vo.CommCdVO;
import com.changsoo.copypastestudy.commCd.vo.CommDtlCdVO;
import com.changsoo.copypastestudy.yjs.mapper.YjsDataTablesMapper;
import com.changsoo.copypastestudy.yjs.vo.YjsDataTablesVO;
import com.changsoo.copypastestudy.yjs.vo.YjsMemberVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CommCdService {
    final CommCdMapper commCdMapper;

    public CommCdService(CommCdMapper commCdMapper) {
        this.commCdMapper = commCdMapper;
    }

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
