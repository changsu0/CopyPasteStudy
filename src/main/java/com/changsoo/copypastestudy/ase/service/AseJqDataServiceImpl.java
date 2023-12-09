package com.changsoo.copypastestudy.ase.service;

import com.changsoo.copypastestudy.ase.mapper.AseJqDataMapper;
import com.changsoo.copypastestudy.ase.vo.AseJqDataVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@Service
public class AseJqDataServiceImpl implements AseJqDataService {
    @Autowired
    private AseJqDataMapper aseJqDataMapper;

    @Override
    public int insertAseMultiRow(AseJqDataVO aseJqDataVO) {
        String chk = aseJqDataVO.getChkVal();
        List<String> chkList =  Arrays.asList(chk.split(","));
        return aseJqDataMapper.insertAseMultiRow(aseJqDataVO);
    }
}
