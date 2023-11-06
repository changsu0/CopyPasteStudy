package com.changsoo.copypastestudy.ase.mapper;

import com.changsoo.copypastestudy.ase.vo.AseMovieVO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface AseMovieMapper {
    public List<AseMovieVO> selectAseMovieList(AseMovieVO aseMovieVO);
}
