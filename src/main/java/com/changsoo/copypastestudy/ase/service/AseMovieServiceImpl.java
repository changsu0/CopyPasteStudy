package com.changsoo.copypastestudy.ase.service;

import com.changsoo.copypastestudy.ase.mapper.AseMovieMapper;
import com.changsoo.copypastestudy.ase.vo.AseMovieVO;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AseMovieServiceImpl implements AseMovieService {
    public final AseMovieMapper aseMovieMapper;

    public AseMovieServiceImpl(AseMovieMapper aseMovieMapper) {
        this.aseMovieMapper = aseMovieMapper;
    }

    @Override
    public List<AseMovieVO> selectAseMovieList(AseMovieVO aseMovieVO) {
        return aseMovieMapper.selectAseMovieList(aseMovieVO);
    }

}
