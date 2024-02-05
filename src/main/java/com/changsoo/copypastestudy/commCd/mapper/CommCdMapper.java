package com.changsoo.copypastestudy.commCd.mapper;

import com.changsoo.copypastestudy.ase.vo.AseJqDataVO;
import com.changsoo.copypastestudy.ase.vo.AseMemberVO;
import com.changsoo.copypastestudy.commCd.vo.CommCdVO;
import com.changsoo.copypastestudy.commCd.vo.CommDtlCdVO;
import com.changsoo.copypastestudy.yjs.vo.YjsCommDtVO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface CommCdMapper {
    public List<CommCdVO> selectCommCdListYjs(CommCdVO commCdVO);
    public CommCdVO selectCommCdOneYjs(CommCdVO commCdVO);
    public int insertCommCdYjs(CommCdVO commCdVO);
    public int updateCommCdYjs(CommCdVO commCdVO);
    public int deleteCommCdYjs(CommCdVO commCdVO);
    public List<CommDtlCdVO> selectCommDtListYjs(CommDtlCdVO commDtlCdVO);
    public CommDtlCdVO selectCommDtOneYjs(CommDtlCdVO commDtlCdVO);
    public int insertCommDtYjs(CommDtlCdVO commDtlCdVO);
    public int updateCommDtYjs(CommDtlCdVO commDtlCdVO);
    public int deleteCommDtYjs(CommDtlCdVO commDtlCdVO);
}
