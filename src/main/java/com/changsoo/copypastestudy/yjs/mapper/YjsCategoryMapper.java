package com.changsoo.copypastestudy.yjs.mapper;

import com.changsoo.copypastestudy.yjs.vo.YjsCategoryVO;
import com.changsoo.copypastestudy.yjs.vo.YjsMusicalVO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface YjsCategoryMapper {

    public List<YjsCategoryVO> selectYjsCategoryHD(YjsCategoryVO yjsCategoryVO);

    public List<YjsCategoryVO> selectYjsCategoryDT(YjsCategoryVO yjsCategoryVO);

    public YjsCategoryVO yjsCategoryHDOne(YjsCategoryVO yjsCategoryVO);

    public YjsCategoryVO yjsCategoryDTOne(YjsCategoryVO yjsCategoryVO);

    public int insertYjsCategoryHD(YjsCategoryVO yjsCategoryVO);

    public int updateYjsCategoryHD(YjsCategoryVO yjsCategoryVO);

    public int deleteYjsCategoryHD(YjsCategoryVO yjsCategoryVO);

    public int insertYjsCategoryDT(YjsCategoryVO yjsCategoryVO);

    public int updateYjsCategoryDT(YjsCategoryVO yjsCategoryVO);

    public int deleteYjsCategoryDT(YjsCategoryVO yjsCategoryVO);
}
