package com.changsoo.copypastestudy.yjs.mapper;
import com.changsoo.copypastestudy.yjs.vo.YjsMemberVO;
import com.changsoo.copypastestudy.yjs.vo.YjsMusicalVO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface YjsMemberMapper {

    public List<YjsMemberVO> selectYjsMemberList(YjsMemberVO yjsMemberVO);

    public YjsMemberVO selectYjsMemberForm(YjsMemberVO yjsMemberVO);

    int insertYjsMemberTemp(YjsMemberVO yjsMemberVO);

    int insertYjsMember(YjsMemberVO yjsMemberVO);
}
