package com.changsoo.copypastestudy.yjs.service;

import com.changsoo.copypastestudy.yjs.vo.YjsDataTablesVO;
import com.changsoo.copypastestudy.yjs.vo.YjsJqDataVO;

import java.util.List;

public interface YjsDataTablesService {

    public List<YjsDataTablesVO> selectYjsDataTablesList(YjsDataTablesVO yjsDataTablesVO);

    int insertYjsDataTablesList(YjsDataTablesVO yjsDataTablesVO);

    int updateYjsDataTablesList(YjsDataTablesVO yjsDataTablesVO);

    int deleteYjsDataTablesList(List<YjsDataTablesVO> yjsDataTablesVO);
}
