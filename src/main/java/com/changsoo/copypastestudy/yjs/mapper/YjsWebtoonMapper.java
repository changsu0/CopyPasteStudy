package com.changsoo.copypastestudy.yjs.mapper;

import com.changsoo.copypastestudy.yjs.vo.YjsWebtoonVO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface YjsWebtoonMapper {

    public List<YjsWebtoonVO> selectYjsWebtoonList(YjsWebtoonVO yjswebtoonVO);

}
