package com.changsoo.copypastestudy.ase.mapper;

import com.changsoo.copypastestudy.ase.vo.AseCatgVO;
import com.changsoo.copypastestudy.ase.vo.AseMemberVO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface AseMemberMapper {

    public AseMemberVO selectAseMemberOne(AseMemberVO aseMemberVO);
    public List<AseMemberVO> selectAseMember(AseMemberVO aseMemberVO);
    int insertAseMember(AseMemberVO aseMemberVO);
    int insertAseCheckMember(AseMemberVO aseMemberVO);
}
