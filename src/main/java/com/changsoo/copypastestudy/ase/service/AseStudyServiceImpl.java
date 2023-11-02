package com.changsoo.copypastestudy.ase.service;

import com.changsoo.copypastestudy.ase.mapper.AseStudyMapper;
import com.changsoo.copypastestudy.ase.vo.AseStudyVO;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AseStudyServiceImpl implements AseStudyService {
    public final AseStudyMapper aseStudyMapper;

    public AseStudyServiceImpl(AseStudyMapper aseStudyMapper) {
        this.aseStudyMapper = aseStudyMapper;
    }

    @Override
    public List<AseStudyVO> selectAseStudyList(AseStudyVO aseStudyVO) {
        return aseStudyMapper.selectAseStudyList(aseStudyVO);
    }

}
