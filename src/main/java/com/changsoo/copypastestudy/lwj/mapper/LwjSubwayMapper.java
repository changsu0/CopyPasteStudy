package com.changsoo.copypastestudy.lwj.mapper;

import com.changsoo.copypastestudy.lwj.vo.LwjSubwayVO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface LwjSubwayMapper {
    public List<LwjSubwayVO> selectLwjSubwayList(LwjSubwayVO lwjSubwayVO);
}
