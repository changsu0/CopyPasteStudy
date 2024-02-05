package com.changsoo.copypastestudy.yjs.mapper;
import com.changsoo.copypastestudy.yjs.vo.YjsDataTablesVO;
import com.changsoo.copypastestudy.yjs.vo.YjsJqDataVO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface YjsDataTablesMapper {

    public List<YjsDataTablesVO> selectYjsDataTablesList(YjsDataTablesVO yjsDataTablesVO);

    int insertYjsDataTablesList(YjsDataTablesVO yjsDataTablesVO);

    int updateYjsDataTablesList(YjsDataTablesVO yjsDataTablesVO);

    int deleteYjsDataTablesList(List<YjsDataTablesVO> yjsDataTablesVO);
}
