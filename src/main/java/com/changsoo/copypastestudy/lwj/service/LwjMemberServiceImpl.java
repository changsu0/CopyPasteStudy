package com.changsoo.copypastestudy.lwj.service;

import com.changsoo.copypastestudy.lwj.mapper.LwjMemberMapper;
import com.changsoo.copypastestudy.lwj.vo.LwjMemberVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class LwjMemberServiceImpl implements LwjMemberService { //서비스를 implements하면 서비스에 쓴 것만 사용 가능
    @Autowired
    private LwjMemberMapper lwjMemberMapper;

    public LwjMemberServiceImpl(LwjMemberMapper lwjMemberMapper) {
        this.lwjMemberMapper = lwjMemberMapper;
    }

    @Override
    public List<LwjMemberVO> selectLwjMemberList(LwjMemberVO lwjMemberVO) {
        return lwjMemberMapper.selectLwjMemberList(lwjMemberVO);
    }

    @Override
    public LwjMemberVO selectLwjMemberOne(LwjMemberVO lwjMemberVO) {
        return lwjMemberMapper.selectLwjMemberOne(lwjMemberVO);
    }

    @Override
    public int insertLwjMemberTemp(LwjMemberVO lwjMemberVO) {
        String phone = "";
            phone += lwjMemberVO.getMemPhone1();
            phone += lwjMemberVO.getMemPhone2();
            phone += lwjMemberVO.getMemPhone3();

        String regNum = "";
            regNum += lwjMemberVO.getMemRegNum1();
            regNum += lwjMemberVO.getMemRegNum2();

        lwjMemberVO.setMemPhone(phone);
        lwjMemberVO.setMemRegNum(regNum);

        return lwjMemberMapper.insertLwjMemberTemp(lwjMemberVO);
    }

    @Override
    public int insertLwjMember(LwjMemberVO lwjMemberVO) {
        return lwjMemberMapper.insertLwjMember(lwjMemberVO);
    }
}
