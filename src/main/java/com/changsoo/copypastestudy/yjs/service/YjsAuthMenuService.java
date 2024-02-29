package com.changsoo.copypastestudy.yjs.service;

import com.changsoo.copypastestudy.yjs.mapper.YjsAuthMenuMapper;
import com.changsoo.copypastestudy.yjs.vo.YjsAuthMenuVO;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class YjsAuthMenuService {
    final YjsAuthMenuMapper yjsAuthMenuMapper;

    public YjsAuthMenuService(YjsAuthMenuMapper yjsAuthMenuMapper) {
        this.yjsAuthMenuMapper = yjsAuthMenuMapper;
    }

    public List<YjsAuthMenuVO> selectAuthGrpAll(YjsAuthMenuVO yjsAuthMenuVO){
        return yjsAuthMenuMapper.selectAuthGrpAll(yjsAuthMenuVO);
    }

    public List<YjsAuthMenuVO> selectMenuAll(YjsAuthMenuVO yjsAuthMenuVO){
        return yjsAuthMenuMapper.selectMenuAll(yjsAuthMenuVO);
    }

    public List<YjsAuthMenuVO> selectAuthMenuChk(YjsAuthMenuVO yjsAuthMenuVO){
        return yjsAuthMenuMapper.selectAuthMenuChk(yjsAuthMenuVO);
    }

}
