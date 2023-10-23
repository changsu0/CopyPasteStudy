package com.changsoo.copypastestudy.sample.vo;

import lombok.Data;
import org.apache.ibatis.type.Alias;

@Data
@Alias("commonVO")
public class CommonVO {
    /*
    mst_cd          :   마스터 코드 아이디
    mst_nm          :   마스터 코드명
    dtl_cd          :   상세 코드 아이디
    dtl_nm          :   상세 코드명
    use_yn          :   코드 사용여부
    code_grp        :   코드 그룹
    create_system   :   코드 생성 서비스
    creator         :   코드 생성자
    create_dt       :   코드 생성일
    update_system   :   코드 수정 서비스
    updater         :   코드 수정자
    update_dt       :   코드 수정일
    etc1            :   예비 컬럼1
    etc2            :   예비 컬럼2
    etc3            :   예비 컬럼3
    etc4            :   예비 컬럼4
    etc5            :   예비 컬럼5
    */
    private String mstCd;
    private String mstNm;
    private String dtlCd;
    private String dtlNm;
    private String useYn;
    private String codeGrp;
    private String createSystem;
    private String creator;
    private String createDt;
    private String updateSystem;
    private String updater;
    private String updateDt;
    private String etc1;
    private String etc2;
    private String etc3;
    private String etc4;
    private String etc5;
}
