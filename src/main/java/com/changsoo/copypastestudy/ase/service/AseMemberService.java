package com.changsoo.copypastestudy.ase.service;

import com.changsoo.copypastestudy.ase.vo.AseMemberVO;

import java.util.List;

public interface AseMemberService {

    public AseMemberVO selectAseMemberOne(AseMemberVO aseMemberVO);
    public List<AseMemberVO> selectAseMember(AseMemberVO aseMemberVO);
    int insertAseMember(AseMemberVO aseMemberVO);
    int insertAseCheckMember(AseMemberVO aseMemberVO);

}
