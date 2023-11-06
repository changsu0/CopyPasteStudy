package com.changsoo.copypastestudy.ase.controller;

import com.changsoo.copypastestudy.ase.service.AseMovieServiceImpl;
import com.changsoo.copypastestudy.ase.vo.AseMovieVO;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

@Controller
public class AseMovieController {

    private final AseMovieServiceImpl aseMovieServiceImpl;

    public AseMovieController(AseMovieServiceImpl aseMovieServiceImpl) {
        this.aseMovieServiceImpl = aseMovieServiceImpl;
    }

    @GetMapping("/aseMovieList")
    public String aseMovieList(Model model, AseMovieVO aseMovieVO){

        List<AseMovieVO> selectAseMovieList = aseMovieServiceImpl.selectAseMovieList(aseMovieVO);
        model.addAttribute("aseMovieList", selectAseMovieList);

        return "ase/Movie/aseMovieList";
    }

}
