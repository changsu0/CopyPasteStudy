package com.changsoo.copypastestudy.yjs.service;

import com.changsoo.copypastestudy.yjs.mapper.YjsDataTablesMapper;
import com.changsoo.copypastestudy.yjs.vo.YjsDataTablesVO;
import com.changsoo.copypastestudy.yjs.vo.YjsJqDataVO;
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

    @Override
    public int insertYjsDataTablesList(YjsDataTablesVO yjsDataTablesVO) {
        return yjsDataTablesMapper.insertYjsDataTablesList(yjsDataTablesVO);
    }

    @Override
    public int updateYjsDataTablesList(YjsDataTablesVO yjsDataTablesVO) {
        return yjsDataTablesMapper.updateYjsDataTablesList(yjsDataTablesVO);
    }

    @Override
    public int deleteYjsDataTablesList(List<YjsDataTablesVO> yjsDataTablesVO) {
        return yjsDataTablesMapper.deleteYjsDataTablesList(yjsDataTablesVO);
    }

}
