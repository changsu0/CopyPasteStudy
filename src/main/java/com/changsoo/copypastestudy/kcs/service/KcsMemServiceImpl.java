package com.changsoo.copypastestudy.kcs.service;

import com.changsoo.copypastestudy.kcs.mapper.KcsFirstMapper;
import com.changsoo.copypastestudy.kcs.mapper.KcsMemMapper;
import com.changsoo.copypastestudy.kcs.vo.KcsFirstVO;
import com.changsoo.copypastestudy.kcs.vo.KcsMemVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class KcsMemServiceImpl implements KcsMemService {
    @Autowired
    private KcsMemMapper kcsMemMapper;
    @Override
    public int insertKcsMem(KcsMemVO kcsMemVO) {

        String phone = "";
                phone += kcsMemVO.getMemPhone1();
                phone += kcsMemVO.getMemPhone2();
                phone += kcsMemVO.getMemPhone3();
        String regNum = "";
                regNum += kcsMemVO.getMemRegNum1();
                regNum += kcsMemVO.getMemRegNum2();

        kcsMemVO.setMemPhone( phone );
        kcsMemVO.setMemRegNum( regNum );

        return kcsMemMapper.insertKcsMem(kcsMemVO);
    }
}
