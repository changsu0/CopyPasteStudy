package com.changsoo.copypastestudy.yjs.mapper;

import com.changsoo.copypastestudy.sample.vo.SampleVO;
import com.changsoo.copypastestudy.yjs.vo.YjsMusicalVO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface YjsMusicalMapper {

    public YjsMusicalVO selectYjsMusicalOne(YjsMusicalVO yjsmusicalVO);

    public List<YjsMusicalVO> selectYjsMusicalList(YjsMusicalVO yjsmusicalVO);

    public int insertYjsMusical(YjsMusicalVO yjsmusicalVO);

    public int updateYjsMusical(YjsMusicalVO yjsmusicalVO);

    public int deleteYjsMusical(YjsMusicalVO yjsmusicalVO);

}
