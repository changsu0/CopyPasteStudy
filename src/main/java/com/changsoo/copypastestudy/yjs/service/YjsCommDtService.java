package com.changsoo.copypastestudy.yjs.service;

import com.changsoo.copypastestudy.yjs.vo.YjsCategoryVO;
import com.changsoo.copypastestudy.yjs.vo.YjsCommDtVO;

import java.util.List;

public interface YjsCommDtService {

    public List<YjsCommDtVO> yjsCommCdList(YjsCommDtVO yjsCommDtVO);

    public YjsCommDtVO yjsCommCdForm(YjsCommDtVO yjsCommDtVO);

    public int insertCommCd(YjsCommDtVO yjsCommDtVO);

    public int updateCommCd(YjsCommDtVO yjsCommDtVO);

    public int deleteCommCd(YjsCommDtVO yjsCommDtVO);
    public int deleteCommCdMulti(YjsCommDtVO yjsCommDtVO);

    public List<YjsCommDtVO> yjsCommDtList(YjsCommDtVO yjsCommDtVO);

    public YjsCommDtVO yjsCommDtForm(YjsCommDtVO yjsCommDtVO);

    public int insertCommDt(YjsCommDtVO yjsCommDtVO);

    public int updateCommDt(YjsCommDtVO yjsCommDtVO);

    public int deleteCommDt(YjsCommDtVO yjsCommDtVO);

    public List<YjsCommDtVO> selectYjsCommCd(YjsCommDtVO yjsCommDtVO);

}
