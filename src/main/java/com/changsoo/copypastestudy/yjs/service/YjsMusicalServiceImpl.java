package com.changsoo.copypastestudy.yjs.service;

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
    public List<YjsMusicalVO> selectYjsMusicalList(YjsMusicalVO yjsMusicalVO) {
        return yjsMusicalMapper.selectYjsMusicalList(yjsMusicalVO);
    }

}
