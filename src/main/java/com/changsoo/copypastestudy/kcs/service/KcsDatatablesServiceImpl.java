package com.changsoo.copypastestudy.kcs.service;

import com.changsoo.copypastestudy.kcs.mapper.KcsDatatablesMapper;
import com.changsoo.copypastestudy.kcs.mapper.KcsMemMapper;
import com.changsoo.copypastestudy.kcs.vo.KcsDtVO;
import com.changsoo.copypastestudy.kcs.vo.KcsMemVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Arrays;
import java.util.List;

@Service
public class KcsDatatablesServiceImpl implements KcsDatatablesService {
    @Autowired
    private KcsDatatablesMapper kcsDatatablesMapper;
    @Override
    public List<KcsDtVO> selectDatatablesList(KcsDtVO kcsDtVO) {
        return kcsDatatablesMapper.selectDatatablesList(kcsDtVO);
    }

    @Override
    public int insertDatatables(KcsDtVO kcsDtVO) {
        return kcsDatatablesMapper.insertDatatables(kcsDtVO);
    }

    @Override
    public int updateDatatables(KcsDtVO kcsDtVO) {
        return kcsDatatablesMapper.updateDatatables(kcsDtVO);
    }
}
