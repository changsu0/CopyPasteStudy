package com.changsoo.copypastestudy.yjs.service;

import com.changsoo.copypastestudy.yjs.mapper.YjsCategoryMapper;
import com.changsoo.copypastestudy.yjs.mapper.YjsCommCdMapper;
import com.changsoo.copypastestudy.yjs.vo.YjsCategoryVO;
import com.changsoo.copypastestudy.yjs.vo.YjsCommDtVO;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class YjsCommDtServiceImpl implements YjsCommDtService {
    public final YjsCommCdMapper yjsCommCdMapper;

    public YjsCommDtServiceImpl(YjsCommCdMapper yjsCommCdMapper) {
        this.yjsCommCdMapper = yjsCommCdMapper;
    }

    @Override
    public List<YjsCommDtVO> yjsCommCdList(YjsCommDtVO yjsCommDtVO){
        return yjsCommCdMapper.yjsCommCdList(yjsCommDtVO);
    }

    @Override
    public YjsCommDtVO yjsCommCdForm(YjsCommDtVO yjsCommDtVO){
        return yjsCommCdMapper.yjsCommCdForm(yjsCommDtVO);
    }

    @Override
    public int insertCommCd(YjsCommDtVO yjsCommDtVO) {
        return yjsCommCdMapper.insertCommCd(yjsCommDtVO);
    }

    @Override
    public int updateCommCd(YjsCommDtVO yjsCommDtVO) {
        return yjsCommCdMapper.updateCommCd(yjsCommDtVO);
    }

    @Override
    public int deleteCommCd(YjsCommDtVO yjsCommDtVO) {
        return yjsCommCdMapper.deleteCommCd(yjsCommDtVO);
    }

    @Override
    public List<YjsCommDtVO> yjsCommDtList(YjsCommDtVO yjsCommDtVO){
        return yjsCommCdMapper.yjsCommDtList(yjsCommDtVO);
    }

    @Override
    public YjsCommDtVO yjsCommDtForm(YjsCommDtVO yjsCommDtVO){
        return yjsCommCdMapper.yjsCommDtForm(yjsCommDtVO);
    }

    @Override
    public int insertCommDt(YjsCommDtVO yjsCommDtVO) {
        return yjsCommCdMapper.insertCommDt(yjsCommDtVO);
    }

    @Override
    public int updateCommDt(YjsCommDtVO yjsCommDtVO) {
        return yjsCommCdMapper.updateCommDt(yjsCommDtVO);
    }

    @Override
    public int deleteCommDt(YjsCommDtVO yjsCommDtVO) {
        return yjsCommCdMapper.deleteCommDt(yjsCommDtVO);
    }

    @Override
    public List<YjsCommDtVO> selectYjsCommCd(YjsCommDtVO yjsCommDtVO){
        return yjsCommCdMapper.selectYjsCommCd(yjsCommDtVO);
    }

}
