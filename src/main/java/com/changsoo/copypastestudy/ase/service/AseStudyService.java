package com.changsoo.copypastestudy.ase.service;

import com.changsoo.copypastestudy.ase.vo.AseStudyVO;

import java.util.List;

public interface AseStudyService {
    public List<AseStudyVO> selectAseStudyList(AseStudyVO aseStudyVO);
}
