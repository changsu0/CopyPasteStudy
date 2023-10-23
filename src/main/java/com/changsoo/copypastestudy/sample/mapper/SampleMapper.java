package com.changsoo.copypastestudy.sample.mapper;

import com.changsoo.copypastestudy.sample.vo.DeptCodeVO;
import com.changsoo.copypastestudy.sample.vo.SampleVO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface SampleMapper {

    public SampleVO selectSampleOne(SampleVO sampleVO);

    public List<SampleVO> selectSampleList(SampleVO sampleVO);

    public int insertSample(SampleVO sampleVO);

    public int updateSample(SampleVO sampleVO);

    public int deleteSample(SampleVO sampleVO);
}
