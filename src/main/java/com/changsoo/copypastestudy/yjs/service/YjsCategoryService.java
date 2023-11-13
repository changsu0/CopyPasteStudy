package com.changsoo.copypastestudy.yjs.service;

import com.changsoo.copypastestudy.yjs.vo.YjsCategoryVO;
import com.changsoo.copypastestudy.yjs.vo.YjsMusicalVO;

import java.util.List;

public interface YjsCategoryService {

    public List<YjsCategoryVO> selectYjsCategoryHD(YjsCategoryVO yjsCategoryVO);

    public List<YjsCategoryVO> selectYjsCategoryDT(YjsCategoryVO yjsCategoryVO);

    public YjsCategoryVO yjsCategoryHDOne(YjsCategoryVO yjsCategoryVO);

    public int insertYjsCategoryHD(YjsCategoryVO yjsCategoryVO);

    public int updateYjsCategoryHD(YjsCategoryVO yjsCategoryVO);

    public int deleteYjsCategoryHD(YjsCategoryVO yjsCategoryVO);

}
