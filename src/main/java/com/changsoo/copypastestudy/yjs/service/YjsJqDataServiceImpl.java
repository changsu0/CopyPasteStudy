package com.changsoo.copypastestudy.yjs.service;

import com.changsoo.copypastestudy.ase.vo.AseMemberVO;
import com.changsoo.copypastestudy.yjs.mapper.YjsJqDataMapper;
import com.changsoo.copypastestudy.yjs.mapper.YjsMemberMapper;
import com.changsoo.copypastestudy.yjs.vo.YjsJqDataVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@Service
public class YjsJqDataServiceImpl implements YjsJqDataService {

    @Autowired
    private YjsJqDataMapper yjsJqDataMapper;

    @Override
    public void insertYjsJqMultiRows(YjsJqDataVO yjsJqDataVO) {
        if (yjsJqDataVO.getChkVal() == null) {
            yjsJqDataVO.setChkVal("");
        }
        if (yjsJqDataVO.getRdoVal() == null) {
            yjsJqDataVO.setRdoVal("");
        }
        String chk = yjsJqDataVO.getChkVal();
        if (!chk.isEmpty()){
            List<String> chkList = Arrays.asList(chk.split(","));
            int listCount = chkList.size();
            for (int i = 0; i < listCount; i++) {
                String chkVal = chkList.get(i);
                yjsJqDataVO.setChkVal(chkVal);
                yjsJqDataMapper.insertYjsJqMultiRows(yjsJqDataVO);
            }
        } else {
            yjsJqDataMapper.insertYjsJqMultiRows(yjsJqDataVO);
        }
    }

    @Override
    public int insertYjsJqMultiRowsForeach(YjsJqDataVO yjsJqDataVO) {
        String chk = yjsJqDataVO.getChkVal();
        if (!chk.isEmpty()){
            List<String> chkList = Arrays.asList(chk.split(","));
            int listCount = chkList.size();
            List<YjsJqDataVO> foreachList = new ArrayList<YjsJqDataVO>();
            for (int i = 0; i < listCount; i++) {
                String chkVal = chkList.get(i);
                yjsJqDataVO.setChkVal(chkVal);
                foreachList.add(yjsJqDataVO);
            }
        }
        return yjsJqDataMapper.insertYjsJqMultiRows(yjsJqDataVO);
    }

}
