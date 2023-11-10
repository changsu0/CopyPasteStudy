package com.changsoo.copypastestudy.yjs.service;

import com.changsoo.copypastestudy.sample.vo.SampleVO;
import com.changsoo.copypastestudy.yjs.vo.YjsMusicalVO;

import java.util.List;

public interface YjsMusicalService {

    public YjsMusicalVO selectYjsMusicalOne(YjsMusicalVO yjsMusicalVO);

    public List<YjsMusicalVO> selectYjsMusicalList(YjsMusicalVO yjsMusicalVO);

    public int insertYjsMusical(YjsMusicalVO yjsMusicalVO);

    public int updateYjsMusical(YjsMusicalVO yjsMusicalVO);

    public int deleteYjsMusical(YjsMusicalVO yjsMusicalVO);

}
