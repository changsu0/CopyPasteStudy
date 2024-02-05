<%--
  Created by IntelliJ IDEA.
  User: kimchangsu
  Date: 2021. 8. 23.
  Time: 오후 8:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-light" style="background-color: #e3f2fd;">
        <a class="navbar-brand" href="/">Home</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="nav1" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Sample
                    </a>
                    <div class="dropdown-menu" aria-labelledby="nav1">
                        <a class="dropdown-item" href="/syncSampleList">Sample리스트</a>
                        <a class="dropdown-item" href="/syncSampleForm">Sample등록</a>
                        <%--                        <a class="dropdown-item" href="/asyncSampleList">ASyncList</a>--%>
                        <a class="dropdown-item" href="/asyncSampleList">AsyncSampleList</a>
                    </div>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="ase" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        ASE
                    </a>
                    <div class="dropdown-menu" aria-labelledby="ase">
                        <a class="dropdown-item" href="/aseStudyList">ASE STUDY LIST</a>
                        <a class="dropdown-item" href="/aseMovieList">ASE MOVIE LIST</a>
                        <a class="dropdown-item" href="/aseMusicList">ASE MUSIC LIST</a>
                        <a class="dropdown-item" href="/aseMusicForm">ASE MUSIC LIST 등록</a>
                        <a class="dropdown-item" href="/aseCatgHdList">ASE CATG HD LIST</a>
                        <a class="dropdown-item" href="/aseCatgHdForm">ASE CATG HD LIST 등록</a>
                        <a class="dropdown-item" href="/aseCommCdList">ASE COMM LIST</a>
                        <a class="dropdown-item" href="/aseCommCdForm">ASE COMM LIST 등록</a>
                        <a class="dropdown-item" href="/aseCommDtList">ASE COMM DT LIST</a>
                        <a class="dropdown-item" href="/aseCommDtForm">ASE COMM DT LIST 등록</a>
                        <a class="dropdown-item" href="/aseMemberForm">회원가입</a>
                        <a class="dropdown-item" href="/aseMemberList">회원 목록</a>
                        <a class="dropdown-item" href="/aseJqDataForm">JqData</a>
                        <a class="dropdown-item" href="/aseAjaxList">Ajax</a>
                        <a class="dropdown-item" href="/aseAjaxLayer">aseAjaxLayer</a>
                        <a class="dropdown-item" href="/aseJavaScript">aseJavaScript</a>
                    </div>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="kcs" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        KCS
                    </a>
                    <div class="dropdown-menu" aria-labelledby="kcs">
                        <a class="dropdown-item" href="/kcsCommDtForm">공통상세코드 등록</a>
                        <a class="dropdown-item" href="/kcsMemForm">회원가입 등록</a>
                        <a class="dropdown-item" href="/selectKcsMemList">맴바리스트</a>
                        <a class="dropdown-item" href="/kcsDatatables01">Datatables01</a>
                    </div>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="yjs" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        YJS
                    </a>
                    <div class="dropdown-menu" aria-labelledby="yjs">
                        <a class="dropdown-item" href="/yjsWebtoonList">YJS Webtoon List</a>
                        <a class="dropdown-item" href="/yjsMusicalList">YJS Musical List</a>
                        <a class="dropdown-item" href="/yjsMusicalForm">YJS Musical List 등록</a>
                        <a class="dropdown-item" href="/yjsCategoryHDList">YJS Category List</a>
                        <a class="dropdown-item" href="/yjsCategoryHdForm">YJS Category List 등록</a>
                        <a class="dropdown-item" href="/yjsCommCdList">공통코드</a>
                        <a class="dropdown-item" href="/yjsCommCdForm">공통코드 등록</a>
                        <a class="dropdown-item" href="/yjsCommDtList">공통상세코드</a>
                        <a class="dropdown-item" href="/yjsCommDtForm">공통상세코드 등록</a>
                        <a class="dropdown-item" href="/yjsMemberForm">회원 등록</a>
                        <a class="dropdown-item" href="/yjsMemberList">회원 등록 승인 List</a>
                        <a class="dropdown-item" href="/yjsJqDataForm">JQ Multi Rows</a>
                        <a class="dropdown-item" href="/yjsAjax">ajax Common CD</a>
                        <a class="dropdown-item" href="/yjsAjaxLayerPop">layer popup</a>
                        <a class="dropdown-item" href="/yjsDataTables01">dataTables01</a>
                        <a class="dropdown-item" href="/yjsDataTables02">dataTables02</a>
                    </div>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="lwj" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        LWJ
                    </a>
                    <div class="dropdown-menu" aria-labelledby="lwj">
                        <a class="dropdown-item" href="/lwjCountryList">Lwj Country List</a>
                        <a class="dropdown-item" href="/lwjCountryForm">Lwj Country 등록</a>
                        <a class="dropdown-item" href="/lwjSubwayList">Lwj Subway List</a>
                        <a class="dropdown-item" href="/lwjSubwayForm">Lwj Subway 등록</a>
                        <a class="dropdown-item" href="/lwjCategoryHeaderList">Lwj CategoryHeader List</a>
                        <a class="dropdown-item" href="/lwjCategoryHeaderForm">Lwj CategoryHeader 등록</a>
                        <a class="dropdown-item" href="/lwjCommCdList">공통코드 조회</a>
                        <a class="dropdown-item" href="/lwjCommCdForm">공통코드 등록</a>
                        <a class="dropdown-item" href="/lwjCommDtList">공통상세코드 조회</a>
                        <a class="dropdown-item" href="/lwjCommDtForm">공통상세코드 등록</a>
                        <a class="dropdown-item" href="/lwjMemberList">회원가입 리스트</a>
                        <a class="dropdown-item" href="/lwjMemberForm">회원가입 신청</a>
                        <a class="dropdown-item" href="/lwjJQDataForm">JQ Multi Rows</a>
                        <a class="dropdown-item" href="/lwjAjaxList">Ajax Common CD</a>
                        <a class="dropdown-item" href="/lwjAjaxLayerPopUp">Ajax Layer PopUp</a>
                    </div>
                </li>
            </ul>
        </div>
    </nav>
    <hr />
</body>
</html>
