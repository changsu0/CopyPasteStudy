package com.changsoo.copypastestudy.lwj.service;

import com.changsoo.copypastestudy.lwj.vo.LwjMemberVO;

import java.util.List;

public interface LwjMemberService {
    List<LwjMemberVO> selectLwjMemberList(LwjMemberVO lwjMemberVO);

    LwjMemberVO selectLwjMemberOne(LwjMemberVO lwjMemberVO);

    int insertLwjMemberTemp(LwjMemberVO lwjMemberVO);

    int insertLwjMember(LwjMemberVO lwjMemberVO);
}
