package com.changsoo.copypastestudy.ase.service;

import com.changsoo.copypastestudy.ase.mapper.AseJqDataMapper;
import com.changsoo.copypastestudy.ase.vo.AseJqDataVO;
import com.changsoo.copypastestudy.ase.vo.AseMemberVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@Service
public class AseJqDataServiceImpl implements AseJqDataService {
    @Autowired
    private AseJqDataMapper aseJqDataMapper;

    @Override /*List insert 1*/
    public int insertAseMultiRow(AseJqDataVO aseJqDataVO) {
        int cnt = 0;

        if (aseJqDataVO.getRdoVal() == null) {
            aseJqDataVO.setRdoVal("");
        }

        if (aseJqDataVO.getChkVal() == null) {
            aseJqDataVO.setChkVal("");
        }

        String chk = aseJqDataVO.getChkVal();
        String[] chkList = chk.split(",");
        for (String s : chkList) {
            //chkList[i]의 값을 VO에 담고 insert
            aseJqDataVO.setChkVal(s);
            cnt = aseJqDataMapper.insertAseMultiRow(aseJqDataVO);
        }

        return cnt;
    }

//    @Override
//    public int insertAseMultiRow(AseJqDataVO aseJqDataVO) {
//        if (aseJqDataVO.getRdoVal() == null) {
//            aseJqDataVO.setRdoVal("");
//        }
//
//        if (aseJqDataVO.getChkVal() == null) {
//            aseJqDataVO.setChkVal("");
//        }
//
//        return aseJqDataMapper.insertAseMultiRow(aseJqDataVO);
//    }


}
