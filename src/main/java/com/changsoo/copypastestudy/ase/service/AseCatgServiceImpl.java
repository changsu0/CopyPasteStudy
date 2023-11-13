package com.changsoo.copypastestudy.ase.service;

import com.changsoo.copypastestudy.ase.mapper.AseCatgMapper;
import com.changsoo.copypastestudy.ase.vo.AseCatgVO;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AseCatgServiceImpl implements AseCatgService {
    public final AseCatgMapper aseCatgMapper;

    public AseCatgServiceImpl(AseCatgMapper aseCatgMapper) {
        this.aseCatgMapper = aseCatgMapper;
    }

    @Override
    public List<AseCatgVO> selectAseCatgHdList(AseCatgVO aseCatgVO) {
        return aseCatgMapper.selectAseCatgHdList(aseCatgVO);
    }

    @Override
    public AseCatgVO selectAseCatgHdOne(AseCatgVO aseCatgVO){
        return aseCatgMapper.selectAseCatgHdOne(aseCatgVO);
    }

    @Override
    public int insertAseCatgHd(AseCatgVO aseCatgVO) {
        return aseCatgMapper.insertAseCatgHd(aseCatgVO);
    }

    @Override
    public int updateAseCatgHd(AseCatgVO aseCatgVO) {
        return aseCatgMapper.updateAseCatgHd(aseCatgVO);
    }

    @Override
    public int deleteAseCatgHd(AseCatgVO aseCatgVO) {
        return aseCatgMapper.deleteAseCatgHd(aseCatgVO);
    }

    public List<AseCatgVO> selectAseCatgDtList(AseCatgVO aseCatgVO) {
        return aseCatgMapper.selectAseCatgDtList(aseCatgVO);
    }

    @Override
    public AseCatgVO selectAseCatgDtOne(AseCatgVO aseCatgVO){
        return aseCatgMapper.selectAseCatgDtOne(aseCatgVO);
    }

    @Override
    public int insertAseCatgDt(AseCatgVO aseCatgVO) {
        return aseCatgMapper.insertAseCatgDt(aseCatgVO);
    }

    @Override
    public int updateAseCatgDt(AseCatgVO aseCatgVO) {
        return aseCatgMapper.updateAseCatgDt(aseCatgVO);
    }

    @Override
    public int deleteAseCatgDt(AseCatgVO aseCatgVO) {
        return aseCatgMapper.deleteAseCatgDt(aseCatgVO);
    }
}
