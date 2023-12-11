package com.changsoo.copypastestudy.yjs.mapper;
import com.changsoo.copypastestudy.yjs.vo.YjsJqDataVO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface YjsJqDataMapper {

    int insertYjsJqMultiRows(YjsJqDataVO yjsJqDataVO);

    int insertYjsJqMultiRowsForeach(YjsJqDataVO yjsJqDataVO);
}
