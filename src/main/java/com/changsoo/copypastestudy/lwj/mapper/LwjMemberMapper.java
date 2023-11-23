package com.changsoo.copypastestudy.lwj.mapper;

import com.changsoo.copypastestudy.lwj.vo.LwjMemberVO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface LwjMemberMapper {
    List<LwjMemberVO> selectLwjMemberList(LwjMemberVO lwjMemberVO);

    LwjMemberVO selectLwjMemberOne(LwjMemberVO lwjMemberVO);

    int insertLwjMemberTemp(LwjMemberVO lwjMemberVO);

    int insertLwjMember(LwjMemberVO lwjMemberVO);
}
