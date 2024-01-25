package com.changsoo.copypastestudy.yjs.service;

import com.changsoo.copypastestudy.yjs.mapper.YjsDataTablesMapper;
import com.changsoo.copypastestudy.yjs.vo.YjsDataTablesVO;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Service;

import java.util.Arrays;
import java.util.List;

@Service
public class YjsDataTablesServiceImpl implements YjsDataTablesService {
    public final YjsDataTablesMapper yjsDataTablesMapper;

    public YjsDataTablesServiceImpl(YjsDataTablesMapper yjsDataTablesMapper) {
        this.yjsDataTablesMapper = yjsDataTablesMapper;
    }

    @Override
    public List<YjsDataTablesVO> selectYjsDataTablesList(YjsDataTablesVO yjsDataTablesVO){
        return yjsDataTablesMapper.selectYjsDataTablesList(yjsDataTablesVO);
    }

}
