package com.changsoo.copypastestudy.ase.service;

import com.changsoo.copypastestudy.ase.mapper.AseMusicMapper;
import com.changsoo.copypastestudy.ase.vo.AseMusicVO;
import com.changsoo.copypastestudy.sample.vo.SampleVO;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AseMusicServiceImpl implements AseMusicService {
    public final AseMusicMapper aseMusicMapper;

    public AseMusicServiceImpl(AseMusicMapper aseMusicMapper) {
        this.aseMusicMapper = aseMusicMapper;
    }

    @Override
    public List<AseMusicVO> selectAseMusicList(AseMusicVO aseMusicVO) {
        return aseMusicMapper.selectAseMusicList(aseMusicVO);
    }

    @Override
    public AseMusicVO selectAseMusicOne(AseMusicVO aseMusicVO){
        return aseMusicMapper.selectAseMusicOne(aseMusicVO);
    }

    @Override
    public int insertAseMusic(AseMusicVO aseMusicVO) {
        return aseMusicMapper.insertAseMusic(aseMusicVO);
    }

    @Override
    public int updateAseMusic(AseMusicVO aseMusicVO) {
        return aseMusicMapper.updateAseMusic(aseMusicVO);
    }

    @Override
    public int deleteAseMusic(AseMusicVO aseMusicVO) {
        return aseMusicMapper.deleteAseMusic(aseMusicVO);
    }

}
