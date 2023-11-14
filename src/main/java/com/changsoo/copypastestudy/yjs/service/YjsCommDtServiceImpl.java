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
    public int insertCommDt(YjsCommDtVO yjsCommDtVO) {
        return yjsCommCdMapper.insertCommDt(yjsCommDtVO);
    }
}
