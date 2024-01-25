package com.changsoo.copypastestudy.yjs.service;

import com.changsoo.copypastestudy.yjs.vo.YjsDataTablesVO;

import java.util.List;

public interface YjsDataTablesService {

    public List<YjsDataTablesVO> selectYjsDataTablesList(YjsDataTablesVO yjsDataTablesVO);
}
