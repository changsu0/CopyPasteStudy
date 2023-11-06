package com.changsoo.copypastestudy.ase.service;

import com.changsoo.copypastestudy.ase.vo.AseMovieVO;

import java.util.List;

public interface AseMovieService {
    public List<AseMovieVO> selectAseMovieList(AseMovieVO aseMovieVO);
}
