package com.changsoo.copypastestudy.yjs.mapper;
import com.changsoo.copypastestudy.yjs.vo.YjsDataTablesVO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface YjsDataTablesMapper {

    public List<YjsDataTablesVO> selectYjsDataTablesList(YjsDataTablesVO yjsDataTablesVO);
}
