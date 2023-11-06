package com.changsoo.copypastestudy.kcs.service;

import com.changsoo.copypastestudy.kcs.mapper.KcsFirstMapper;
import com.changsoo.copypastestudy.kcs.vo.KcsFirstVO;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class KcsFirstServiceImpl implements KcsFirstService {
    public final KcsFirstMapper kcsFirstMapper;

    public KcsFirstServiceImpl(KcsFirstMapper kcsFirstMapper) {
        this.kcsFirstMapper = kcsFirstMapper;
    }

    @Override
    public List<KcsFirstVO> selectKcsFirstList(KcsFirstVO kcsFirstVO) {
        return kcsFirstMapper.selectKcsFirstList(kcsFirstVO);
    }

}
