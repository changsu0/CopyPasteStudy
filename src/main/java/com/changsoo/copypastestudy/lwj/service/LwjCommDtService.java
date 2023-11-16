package com.changsoo.copypastestudy.lwj.service;

import com.changsoo.copypastestudy.lwj.vo.LwjCategoryVO;
import com.changsoo.copypastestudy.lwj.vo.LwjCommDtVO;

import java.util.List;

public interface LwjCommDtService {

    public LwjCommDtVO selectLwjCommCdOne(LwjCommDtVO lwjCommDtVO);

    public List<LwjCommDtVO> selectLwjCommCdList(LwjCommDtVO lwjCommDtVO);

    public int insertLwjCommCd(LwjCommDtVO lwjCommDtVO);

    public int updateLwjCommCd(LwjCommDtVO lwjCommDtVO);

    public int deleteLwjCommCd(LwjCommDtVO lwjCommDtVO);


    public LwjCommDtVO selectLwjCommDtOne(LwjCommDtVO lwjCommDtVO);

    public List<LwjCommDtVO> selectLwjCommDtList(LwjCommDtVO lwjCommDtVO);

    public int insertLwjCommDt(LwjCommDtVO lwjCommDtVO);

    public int updateLwjCommDt(LwjCommDtVO lwjCommDtVO);

    public int deleteLwjCommDt(LwjCommDtVO lwjCommDtVO);
}
