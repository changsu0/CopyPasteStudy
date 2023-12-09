package com.changsoo.copypastestudy.ase.mapper;

import com.changsoo.copypastestudy.ase.vo.AseCatgVO;
import com.changsoo.copypastestudy.ase.vo.AseJqDataVO;
import com.changsoo.copypastestudy.ase.vo.AseMemberVO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface AseMemberMapper {

    AseMemberVO selectAseMemberOne(AseMemberVO aseMemberVO);
    List<AseMemberVO> selectAseMember(AseMemberVO aseMemberVO);
    int insertAseMember(AseMemberVO aseMemberVO);
    int insertAseCheckMember(AseMemberVO aseMemberVO);

    int insertAseMultiRow(AseJqDataVO aseJqDataVO);
}
