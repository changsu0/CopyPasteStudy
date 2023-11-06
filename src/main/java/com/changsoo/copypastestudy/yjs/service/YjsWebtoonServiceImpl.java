package com.changsoo.copypastestudy.yjs.service;

import com.changsoo.copypastestudy.yjs.mapper.YjsWebtoonMapper;
import com.changsoo.copypastestudy.yjs.vo.YjsWebtoonVO;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class YjsWebtoonServiceImpl implements YjsWebtoonService {
    public final YjsWebtoonMapper yjsWebtoonMapper;

    public YjsWebtoonServiceImpl(YjsWebtoonMapper yjsWebtoonMapper) {
        this.yjsWebtoonMapper = yjsWebtoonMapper;
    }

    @Override
    public List<YjsWebtoonVO> selectYjsWebtoonList(YjsWebtoonVO yjsWebtoonVO) {
        return yjsWebtoonMapper.selectYjsWebtoonList(yjsWebtoonVO);
    }

}
