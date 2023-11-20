package com.changsoo.copypastestudy.yjs.service;

import com.changsoo.copypastestudy.yjs.mapper.YjsCategoryMapper;
import com.changsoo.copypastestudy.yjs.vo.YjsCategoryVO;
import com.changsoo.copypastestudy.yjs.vo.YjsMusicalVO;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class YjsCategoryServiceImpl implements YjsCategoryService {
    public final YjsCategoryMapper yjsCategoryMapper;

    public YjsCategoryServiceImpl(YjsCategoryMapper yjsCategoryMapper) {
        this.yjsCategoryMapper = yjsCategoryMapper;
    }

    @Override
    public List<YjsCategoryVO> selectYjsCategoryHD(YjsCategoryVO yjsCategoryVO) {
        return yjsCategoryMapper.selectYjsCategoryHD(yjsCategoryVO);
    }

    @Override
    public List<YjsCategoryVO> selectYjsCategoryDT(YjsCategoryVO yjsCategoryVO){
        return yjsCategoryMapper.selectYjsCategoryDT(yjsCategoryVO);
    }

    @Override
    public YjsCategoryVO yjsCategoryHDOne(YjsCategoryVO yjsCategoryVO){
        return yjsCategoryMapper.yjsCategoryHDOne(yjsCategoryVO);
    }

    @Override
    public YjsCategoryVO yjsCategoryDTOne(YjsCategoryVO yjsCategoryVO){
        return yjsCategoryMapper.yjsCategoryDTOne(yjsCategoryVO);
    }

    @Override
    public int insertYjsCategoryHD(YjsCategoryVO yjsCategoryVO) {
        return yjsCategoryMapper.insertYjsCategoryHD(yjsCategoryVO);
    }

    @Override
    public int updateYjsCategoryHD(YjsCategoryVO yjsCategoryVO) {
        return yjsCategoryMapper.updateYjsCategoryHD(yjsCategoryVO);
    }

    @Override
    public int deleteYjsCategoryHD(YjsCategoryVO yjsCategoryVO) {
        return yjsCategoryMapper.deleteYjsCategoryHD(yjsCategoryVO);
    }

    @Override
    public int insertYjsCategoryDT(YjsCategoryVO yjsCategoryVO) {
        return yjsCategoryMapper.insertYjsCategoryDT(yjsCategoryVO);
    }

    @Override
    public int updateYjsCategoryDT(YjsCategoryVO yjsCategoryVO) {
        return yjsCategoryMapper.updateYjsCategoryDT(yjsCategoryVO);
    }

    @Override
    public int deleteYjsCategoryDT(YjsCategoryVO yjsCategoryVO) {
        return yjsCategoryMapper.deleteYjsCategoryDT(yjsCategoryVO);
    }

}
