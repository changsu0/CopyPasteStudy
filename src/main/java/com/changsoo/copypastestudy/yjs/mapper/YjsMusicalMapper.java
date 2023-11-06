package com.changsoo.copypastestudy.yjs.mapper;

import com.changsoo.copypastestudy.yjs.vo.YjsMusicalVO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface YjsMusicalMapper {

    public List<YjsMusicalVO> selectYjsMusicalList(YjsMusicalVO yjsmusicalVO);

}
