package com.changsoo.copypastestudy.yjs.mapper;
import com.changsoo.copypastestudy.yjs.vo.YjsAuthMenuVO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface YjsAuthMenuMapper {

    public List<YjsAuthMenuVO> selectAuthGrpAll(YjsAuthMenuVO yjsAuthMenuVO);
    public List<YjsAuthMenuVO> selectMenuAll(YjsAuthMenuVO yjsAuthMenuVO);
    public List<YjsAuthMenuVO> selectAuthMenuChk(YjsAuthMenuVO yjsAuthMenuVO);
}
