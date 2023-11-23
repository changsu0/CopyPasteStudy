package com.changsoo.copypastestudy.ase.service;

import com.changsoo.copypastestudy.ase.mapper.AseMemberMapper;
import com.changsoo.copypastestudy.ase.vo.AseMemberVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AseMemberServiceImpl implements AseMemberService {
    @Autowired
    private AseMemberMapper aseMemberMapper;

    @Override
    public AseMemberVO selectAseMemberOne(AseMemberVO aseMemberVO) {
        return aseMemberMapper.selectAseMemberOne(aseMemberVO);
    }

    @Override
    public List<AseMemberVO> selectAseMember(AseMemberVO aseMemberVO) {
        return aseMemberMapper.selectAseMember(aseMemberVO);
    }

    @Override
    public int insertAseMember(AseMemberVO aseMemberVO) {
        String phone = "";
            phone += aseMemberVO.getMemPhone1();
            phone += aseMemberVO.getMemPhone2();
            phone += aseMemberVO.getMemPhone3();
    aseMemberVO.setMemPhone(phone);

        String regNum = "";
            regNum += aseMemberVO.getMemRegNum1();
            regNum += aseMemberVO.getMemRegNum2();
    aseMemberVO.setMemRegNum(regNum);

        return aseMemberMapper.insertAseMember(aseMemberVO);
    }
    @Override
    public int insertAseCheckMember(AseMemberVO aseMemberVO) {
        return aseMemberMapper.insertAseCheckMember(aseMemberVO);
    }
}
