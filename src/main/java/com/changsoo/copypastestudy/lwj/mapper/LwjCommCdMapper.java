package com.changsoo.copypastestudy.lwj.mapper;

import com.changsoo.copypastestudy.lwj.vo.LwjCategoryVO;
import com.changsoo.copypastestudy.lwj.vo.LwjCommDtVO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface LwjCommCdMapper {

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
