package com.changsoo.copypastestudy.ase.service;

import com.changsoo.copypastestudy.ase.vo.AseMusicVO;
import com.changsoo.copypastestudy.sample.vo.SampleVO;

import java.util.List;

public interface AseMusicService {

    public AseMusicVO selectAseMusicOne(AseMusicVO aseMusicVO);

    public List<AseMusicVO> selectAseMusicList(AseMusicVO aseMusicVO);

    public int insertAseMusic(AseMusicVO aseMusicVO);

    public int updateAseMusic(AseMusicVO aseMusicVO);

    public int deleteAseMusic(AseMusicVO aseMusicVO);
}
