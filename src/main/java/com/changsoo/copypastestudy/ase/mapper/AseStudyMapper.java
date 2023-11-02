package com.changsoo.copypastestudy.ase.mapper;

import com.changsoo.copypastestudy.ase.vo.AseStudyVO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface AseStudyMapper {
    public List<AseStudyVO> selectAseStudyList(AseStudyVO aseStudyVO);
}
