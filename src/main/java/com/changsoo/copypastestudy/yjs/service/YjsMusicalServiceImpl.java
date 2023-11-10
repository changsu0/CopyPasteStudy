package com.changsoo.copypastestudy.yjs.service;

import com.changsoo.copypastestudy.sample.vo.SampleVO;
import com.changsoo.copypastestudy.yjs.mapper.YjsMusicalMapper;
import com.changsoo.copypastestudy.yjs.vo.YjsMusicalVO;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class YjsMusicalServiceImpl implements YjsMusicalService {
    public final YjsMusicalMapper yjsMusicalMapper;

    public YjsMusicalServiceImpl(YjsMusicalMapper yjsMusicalMapper) {
        this.yjsMusicalMapper = yjsMusicalMapper;
    }

    @Override
    public YjsMusicalVO selectYjsMusicalOne(YjsMusicalVO yjsMusicalVO){
        return yjsMusicalMapper.selectYjsMusicalOne(yjsMusicalVO);
    }

    @Override
    public List<YjsMusicalVO> selectYjsMusicalList(YjsMusicalVO yjsMusicalVO) {
        return yjsMusicalMapper.selectYjsMusicalList(yjsMusicalVO);
    }

    @Override
    public int insertYjsMusical(YjsMusicalVO yjsMusicalVO) {
        return yjsMusicalMapper.insertYjsMusical(yjsMusicalVO);
    }

    @Override
    public int updateYjsMusical(YjsMusicalVO yjsMusicalVO) {
        return yjsMusicalMapper.updateYjsMusical(yjsMusicalVO);
    }

    @Override
    public int deleteYjsMusical(YjsMusicalVO yjsMusicalVO) {
        return yjsMusicalMapper.deleteYjsMusical(yjsMusicalVO);
    }

}
