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
                        <%--                        <a class="dropdown-item" href="/gridSampleList">GridList</a>--%>
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
                    </div>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="kcs" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        KCS
                    </a>
                    <div class="dropdown-menu" aria-labelledby="kcs">
                        <a class="dropdown-item" href="/selectKcsFirstList">KCS List</a>
                    </div>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="yjs" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        YJS List
                    </a>
                    <div class="dropdown-menu" aria-labelledby="yjs">
                        <a class="dropdown-item" href="/selectYjsWebtoonList">YJS List</a>
                    </div>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="yjs_Musical" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        YJS Musical List
                    </a>
                    <div class="dropdown-menu" aria-labelledby="yjs_Musical">
                        <a class="dropdown-item" href="/selectYjsMusicalList">YJS Musical List</a>
                    </div>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="lwj" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        LWJ
                    </a>
                    <div class="dropdown-menu" aria-labelledby="lwj">
                        <a class="dropdown-item" href="/selectLwjSubwayList">LwjSubwayList</a>
                        <a class="dropdown-item" href="/selectLwjSubwayForm">LwjSubway등록</a>
                        <a class="dropdown-item" href="/selectLwjCountryList">LwjCountryList</a>
                    </div>
                </li>
            </ul>
        </div>
    </nav>
    <hr />
</body>
</html>
