package com.changsoo.copypastestudy.sample.service;

import com.changsoo.copypastestudy.sample.mapper.SampleMapper;
import com.changsoo.copypastestudy.sample.vo.DeptCodeVO;
import com.changsoo.copypastestudy.sample.vo.SampleVO;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SampleServiceImpl implements SampleService{
    public final SampleMapper syncSampleMapper;

    public SampleServiceImpl(SampleMapper syncSampleMapper) {
        this.syncSampleMapper = syncSampleMapper;
    }

    @Override
    public SampleVO selectSampleOne(SampleVO sampleVO){
        return syncSampleMapper.selectSampleOne(sampleVO);
    }

    @Override
    public List<SampleVO> selectSampleList(SampleVO sampleVO) {
        return syncSampleMapper.selectSampleList(sampleVO);
    }

    @Override
    public int insertSample(SampleVO sampleVO) {
        return syncSampleMapper.insertSample(sampleVO);
    }

    @Override
    public int updateSample(SampleVO sampleVO) {
        return syncSampleMapper.updateSample(sampleVO);
    }

    @Override
    public int deleteSample(SampleVO sampleVO) {
        return syncSampleMapper.deleteSample(sampleVO);
    }
}
