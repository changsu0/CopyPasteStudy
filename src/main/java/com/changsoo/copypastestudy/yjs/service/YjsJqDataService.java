package com.changsoo.copypastestudy.yjs.service;

import com.changsoo.copypastestudy.yjs.vo.YjsJqDataVO;

import java.util.List;

public interface YjsJqDataService {

    void insertYjsJqMultiRows(YjsJqDataVO yjsJqDataVO);

    int insertYjsJqMultiRowsForeach(YjsJqDataVO yjsJqDataVO);

    int insertYjsMultiSelList(YjsJqDataVO yjsJqDataVO);
}
