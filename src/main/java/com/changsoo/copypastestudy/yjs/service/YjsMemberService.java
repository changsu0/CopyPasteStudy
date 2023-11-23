package com.changsoo.copypastestudy.yjs.service;

import com.changsoo.copypastestudy.yjs.vo.YjsMemberVO;
import com.changsoo.copypastestudy.yjs.vo.YjsMusicalVO;

import java.util.List;

public interface YjsMemberService {

    public List<YjsMemberVO> selectYjsMemberList(YjsMemberVO yjsMemberVO);

    public YjsMemberVO selectYjsMemberForm(YjsMemberVO yjsMemberVO);

    int insertYjsMemberTemp(YjsMemberVO yjsMemberVO);

    int insertYjsMember(YjsMemberVO yjsMemberVO);
}
