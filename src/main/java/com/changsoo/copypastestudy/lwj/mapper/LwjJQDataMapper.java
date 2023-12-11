package com.changsoo.copypastestudy.lwj.mapper;

import com.changsoo.copypastestudy.lwj.vo.LwjJQDataVO;
import org.apache.ibatis.annotations.Mapper;


@Mapper
public interface LwjJQDataMapper {
    int insertLwjJqMultiRows(LwjJQDataVO lwjJQDataVO);

}
