package com.changsoo.copypastestudy.ase.mapper;

import com.changsoo.copypastestudy.ase.vo.AseCatgVO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface AseCatgMapper {

    public AseCatgVO selectAseCatgHdOne(AseCatgVO aseCatgVO);

    public List<AseCatgVO> selectAseCatgHdList(AseCatgVO aseCatgVO);

    public int insertAseCatgHd(AseCatgVO aseCatgVO);

    public int updateAseCatgHd(AseCatgVO aseCatgVO);

    public int deleteAseCatgHd(AseCatgVO aseCatgVO);

    public AseCatgVO selectAseCatgDtOne(AseCatgVO aseCatgVO);

    public List<AseCatgVO> selectAseCatgDtList(AseCatgVO aseCatgVO);

    public int insertAseCatgDt(AseCatgVO aseCatgVO);

    public int updateAseCatgDt(AseCatgVO aseCatgVO);

    public int deleteAseCatgDt(AseCatgVO aseCatgVO);
}
