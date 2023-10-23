package com.changsoo.copypastestudy.sample.service;

import com.changsoo.copypastestudy.sample.vo.DeptCodeVO;
import com.changsoo.copypastestudy.sample.vo.SampleVO;

import java.util.List;

public interface SampleService {
    public SampleVO selectSampleOne(SampleVO sampleVO);

    public List<SampleVO> selectSampleList(SampleVO sampleVO);

    public int insertSample(SampleVO sampleVO);

    public int updateSample(SampleVO sampleVO);

    public int deleteSample(SampleVO sampleVO);
}
