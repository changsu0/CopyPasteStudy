package com.changsoo.copypastestudy.ase.controller;

import com.changsoo.copypastestudy.ase.service.AseMusicServiceImpl;
import com.changsoo.copypastestudy.ase.vo.AseMusicVO;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class AseMusicController {

    private final AseMusicServiceImpl aseMusicServiceImpl;

    public AseMusicController(AseMusicServiceImpl aseMusicServiceImpl) {
        this.aseMusicServiceImpl = aseMusicServiceImpl;
    }

    @GetMapping("/aseMusicList")
    public String aseMusicList(Model model, AseMusicVO aseMusicVO){

        List<AseMusicVO> selectAseMusicList = aseMusicServiceImpl.selectAseMusicList(aseMusicVO);
        model.addAttribute("aseMusicList", selectAseMusicList);

        return "ase/Music/aseMusicList";
    }

    @GetMapping("/aseMusicForm")
    public String aseMusicForm(Model model, AseMusicVO aseMusicVO){
        if (!StringUtils.isEmpty( aseMusicVO.getTitle() )){
            AseMusicVO selectAseMusic = aseMusicServiceImpl.selectAseMusicOne(aseMusicVO);
            model.addAttribute("aseMusicVO", selectAseMusic);
        }
        return "ase/Music/aseMusicForm";
    }

    @PostMapping("/aseMusicFormSave")
    public String aseMusicFormSave(Model model, AseMusicVO aseMusicVO, @RequestParam(value="action", required=true) String action){
        int cnt = 0;
        if ("insert".equals(action)) {
            cnt = aseMusicServiceImpl.insertAseMusic(aseMusicVO);
        }else if ("update".equals(action)){
            cnt = aseMusicServiceImpl.updateAseMusic(aseMusicVO);
        }else if ("delete".equals(action)){
            cnt = aseMusicServiceImpl.deleteAseMusic(aseMusicVO);
        }
        System.out.println(" Save Count :: " + cnt);
        return "redirect:/aseMusicList";
    }

}
