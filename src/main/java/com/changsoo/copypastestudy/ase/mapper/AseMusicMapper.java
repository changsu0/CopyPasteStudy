package com.changsoo.copypastestudy.ase.mapper;

import com.changsoo.copypastestudy.ase.vo.AseMusicVO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface AseMusicMapper {

    public AseMusicVO selectAseMusicOne(AseMusicVO aseMusicVO);

    public List<AseMusicVO> selectAseMusicList(AseMusicVO aseMusicVO);

    public int insertAseMusic(AseMusicVO aseMusicVO);

    public int updateAseMusic(AseMusicVO aseMusicVO);

    public int deleteAseMusic(AseMusicVO aseMusicVO);
}
