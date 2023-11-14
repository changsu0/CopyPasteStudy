package com.changsoo.copypastestudy.yjs.mapper;

import com.changsoo.copypastestudy.yjs.vo.YjsCategoryVO;
import com.changsoo.copypastestudy.yjs.vo.YjsCommDtVO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface YjsCommCdMapper {

    public int insertCommDt(YjsCommDtVO yjsCommDtVO);


}
