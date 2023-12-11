package com.changsoo.copypastestudy.lwj.service;

import com.changsoo.copypastestudy.lwj.mapper.LwjJQDataMapper;
import com.changsoo.copypastestudy.lwj.vo.LwjJQDataVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Arrays;
import java.util.List;

@Service
public class LwjJQDataServiceImpl implements LwjJQDataService { //서비스를 implements하면 서비스에 쓴 것만 사용 가능
    @Autowired
    private LwjJQDataMapper lwjJQDataMapper;

    @Override
    public int insertLwjJqMultiRows(LwjJQDataVO lwjJQDataVO) {
        int num = 0;
        String chkVal = lwjJQDataVO.getChkVal();
        List<String> list = Arrays.asList(chkVal.split(","));

        //1건씩 N번 실행
        for (int i=0; i < list.size(); i++) {
            String a = list.get(i);
            lwjJQDataVO.setChkVal(a);
            num = lwjJQDataMapper.insertLwjJqMultiRows(lwjJQDataVO);
        }
        return num;
    }
}
