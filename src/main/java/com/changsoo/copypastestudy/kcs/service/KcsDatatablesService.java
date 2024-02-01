package com.changsoo.copypastestudy.kcs.service;

import com.changsoo.copypastestudy.kcs.vo.KcsDtVO;
import com.changsoo.copypastestudy.kcs.vo.KcsMemVO;

import java.util.List;

public interface KcsDatatablesService {
    List<KcsDtVO> selectDatatablesList(KcsDtVO kcsDtVO);
    int insertDatatables(KcsDtVO kcsDtVO);
    int updateDatatables(KcsDtVO kcsDtVO);
}
