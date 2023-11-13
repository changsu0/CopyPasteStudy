package com.changsoo.copypastestudy.kcs.service;

import com.changsoo.copypastestudy.kcs.mapper.KcsCommCdMapper;
import com.changsoo.copypastestudy.kcs.mapper.KcsFirstMapper;
import com.changsoo.copypastestudy.kcs.vo.KcsCommDtVO;
import com.changsoo.copypastestudy.kcs.vo.KcsFirstVO;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class KcsCommDtServiceImpl implements KcsCommDtService {
    public final KcsCommCdMapper kcsCommCdMapper;

    public KcsCommDtServiceImpl(KcsCommCdMapper kcsCommCdMapper) {
        this.kcsCommCdMapper = kcsCommCdMapper;
    }


    @Override
    public int insertCommDt(KcsCommDtVO kcsCommDtVO) {
        return kcsCommCdMapper.insertCommDt(kcsCommDtVO);
    }
}
