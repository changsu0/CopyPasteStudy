package com.changsoo.copypastestudy.commCd.service;

import com.changsoo.copypastestudy.ase.mapper.AseCatgMapper;
import com.changsoo.copypastestudy.ase.service.AseCatgService;
import com.changsoo.copypastestudy.ase.vo.AseCatgVO;
import com.changsoo.copypastestudy.commCd.mapper.CommCdMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CommCdService {
    final CommCdMapper commCdMapper;

    public CommCdService(CommCdMapper commCdMapper) {
        this.commCdMapper = commCdMapper;
    }
}
