package com.changsoo.copypastestudy.yjs.service;

import com.changsoo.copypastestudy.yjs.mapper.YjsCategoryMapper;
import com.changsoo.copypastestudy.yjs.mapper.YjsMemberMapper;
import com.changsoo.copypastestudy.yjs.vo.YjsCategoryVO;
import com.changsoo.copypastestudy.yjs.vo.YjsMemberVO;
import com.changsoo.copypastestudy.yjs.vo.YjsMusicalVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class YjsMemberServiceImpl implements YjsMemberService {

    @Autowired
    private YjsMemberMapper yjsMemberMapper;

    @Override
    public List<YjsMemberVO> selectYjsMemberList(YjsMemberVO yjsMemberVO) {
        return yjsMemberMapper.selectYjsMemberList(yjsMemberVO);
    }

    @Override
    public YjsMemberVO selectYjsMemberForm(YjsMemberVO yjsMemberVO){
        return yjsMemberMapper.selectYjsMemberForm(yjsMemberVO);
    }

    @Override
    public int insertYjsMemberTemp(YjsMemberVO yjsMemberVO) {
        String phone = "";
        phone += yjsMemberVO.getMemPhone1();
        phone += yjsMemberVO.getMemPhone2();
        phone += yjsMemberVO.getMemPhone3();
        yjsMemberVO.setMemPhone(phone);

        String regNum = "";
        regNum += yjsMemberVO.getMemRegNum1();
        regNum += yjsMemberVO.getMemRegNum2();
        yjsMemberVO.setMemRegNum(regNum);

        return yjsMemberMapper.insertYjsMemberTemp(yjsMemberVO);
    }

    @Override
    public int insertYjsMember(YjsMemberVO yjsMemberVO) {
        return yjsMemberMapper.insertYjsMember(yjsMemberVO);
    }
}
