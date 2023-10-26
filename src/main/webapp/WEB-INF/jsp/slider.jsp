<%--
  Created by IntelliJ IDEA.
  User: kimchangsu
  Date: 2021. 8. 23.
  Time: 오후 8:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="slider/css/reset.css"> <!-- CSS reset -->
    <link rel="stylesheet" href="slider/css/style.css"> <!-- Resource style -->
    <script src="slider/js/modernizr.js"></script> <!-- Modernizr -->
    <script src="slider/js/snap.svg-min.js"></script>
    <script src="slider/js/main.js"></script> <!-- Resource jQuery -->
    <style>
        .cd-slider-wrapper{
            width: 100%;
            height: 100%;
        }
        .cd-slider{
            width: 100%;
            height: 100%;
        }
        .cd-slider li{
            width: 100%;
            height: 100%;
        }
    </style>
</head>
<body>
<table border="1" width="700px" height="600px" id="sliderTB">
    <tr height="100">
        <td colspan="2">
            제목
        </td>
        <td>
            첨부파일
        </td>
    </tr>
    <tr height="250">
        <td rowspan="2" width="300">
            <div class="cd-slider-wrapper">
                <ul class="cd-slider" data-step1="M300,500h-2V0h1c0.6,0,1,0.4,1,1V800z" data-step2="M300,500H379L771.2,0H1399c0.6,0,1,0.4,1,1V800z" data-step3="M300,500H0V0h1399c0.6,0,1,0.4,1,1V800z" data-step4="M-2,800h2V0h-1c-0.6,0-1,0.4-1,1V800z" data-step5="M0,800h1021L628.8,0L1,0C0.4,0,0,0.4,0,1L0,800z" data-step6="M0,800h1400V0L1,0C0.4,0,0,0.4,0,1L0,800z">
                    <li class="visible">
                        <div class="cd-svg-wrapper">
                            <svg viewBox="0 0 300 500">
                                <title>Aimated SVG</title>
                                <defs>
                                    <clipPath id="clipPath_testA_1">
                                        <path id="chargingPath_testA_1" d="M300,500H0V0h1399c0.6,0,1,0.4,1,1V800z"/>
                                    </clipPath>
                                </defs>

                                <image width="300px" height="500px" clip-path="url(#clipPath_testA_1)" xlink:href="slider/img/img-1.jpg"></image>
                            </svg>
                        </div> <!-- .cd-svg-wrapper -->
                    </li>

                    <li>
                        <div class="cd-svg-wrapper">
                            <svg viewBox="0 0 300 500">
                                <title>Aimated SVG</title>
                                <defs>
                                    <clipPath id="clipPath_testA_2">
                                        <path id="chargingPath_testA_2" d="M300,500H0V0h1399c0.6,0,1,0.4,1,1V800z"/>
                                    </clipPath>
                                </defs>

                                <image width="300px" height="500px" clip-path="url(#clipPath_testA_2)" xlink:href="slider/img/img-2.jpg"></image>
                            </svg>
                        </div> <!-- .cd-svg-wrapper -->
                    </li>

                    <li>
                        <div class="cd-svg-wrapper">
                            <svg viewBox="0 0 300 500">
                                <title>Aimated SVG</title>
                                <defs>
                                    <clipPath id="clipPath_testA_3">
                                        <path id="chargingPath_testA_3" d="M300,500H0V0h1399c0.6,0,1,0.4,1,1V800z"/>
                                    </clipPath>
                                </defs>

                                <image width="300px" height="500px" clip-path="url(#clipPath_testA_3)" xlink:href="slider/img/img-3.jpg"></image>
                            </svg>
                        </div> <!-- .cd-svg-wrapper -->
                    </li>

                    <li>
                        <div class="cd-svg-wrapper">
                            <svg viewBox="0 0 300 500">
                                <title>Aimated SVG</title>
                                <defs>
                                    <clipPath id="clipPath_testA_4">
                                        <path id="chargingPath_testA_4" d="M300,500H0V0h1399c0.6,0,1,0.4,1,1V800z"/>
                                    </clipPath>
                                </defs>

                                <image width="300px" height="500px" clip-path="url(#clipPath_testA_4)" xlink:href="slider/img/img-4.jpg"></image>
                            </svg>
                        </div> <!-- .cd-svg-wrapper -->
                    </li>

                </ul> <!-- .cd-slider -->

                <ul class="cd-slider-navigation">
                    <li><a href="#0" class="next-slide">Next</a></li>
                    <li><a href="#0" class="prev-slide">Prev</a></li>
                </ul> <!-- .cd-slider-navigation -->

                <ol class="cd-slider-controls">
                    <li class="selected"><a href="#0"><em>Item 1</em></a></li>
                    <li><a href="#0"><em>Item 2</em></a></li>
                    <li><a href="#0"><em>Item 3</em></a></li>
                    <li><a href="#0"><em>Item 4</em></a></li>
                </ol> <!-- .cd-slider-controls -->
            </div> <!-- .cd-slider-wrapper -->
        </td>
        <td rowspan="2" width="300">
            <div class="cd-slider-wrapper">
                <ul class="cd-slider" data-step1="M300,500h-2V0h1c0.6,0,1,0.4,1,1V800z" data-step2="M300,500H379L771.2,0H1399c0.6,0,1,0.4,1,1V800z" data-step3="M300,500H0V0h1399c0.6,0,1,0.4,1,1V800z" data-step4="M-2,800h2V0h-1c-0.6,0-1,0.4-1,1V800z" data-step5="M0,800h1021L628.8,0L1,0C0.4,0,0,0.4,0,1L0,800z" data-step6="M0,800h1400V0L1,0C0.4,0,0,0.4,0,1L0,800z">
                    <li class="visible">
                        <div class="cd-svg-wrapper">
                            <svg viewBox="0 0 300 500">
                                <title>Aimated SVG</title>
                                <defs>
                                    <clipPath id="clipPath_testB_1">
                                        <path id="chargingPath_testB_1" d="M300,500H0V0h1399c0.6,0,1,0.4,1,1V800z"/>
                                    </clipPath>
                                </defs>

                                <image width="300px" height="500px" clip-path="url(#clipPath_testB_1)" xlink:href="slider/img/img-1.jpg"></image>
                            </svg>
                        </div> <!-- .cd-svg-wrapper -->
                    </li>

                    <li>
                        <div class="cd-svg-wrapper">
                            <svg viewBox="0 0 300 500">
                                <title>Aimated SVG</title>
                                <defs>
                                    <clipPath id="clipPath_testB_2">
                                        <path id="chargingPath_testB_2" d="M300,500H0V0h1399c0.6,0,1,0.4,1,1V800z"/>
                                    </clipPath>
                                </defs>

                                <image width="300px" height="500px" clip-path="url(#clipPath_testB_2)" xlink:href="slider/img/img-2.jpg"></image>
                            </svg>
                        </div> <!-- .cd-svg-wrapper -->
                    </li>

                    <li>
                        <div class="cd-svg-wrapper">
                            <svg viewBox="0 0 300 500">
                                <title>Aimated SVG</title>
                                <defs>
                                    <clipPath id="clipPath_testB_3">
                                        <path id="chargingPath_testB_3" d="M300,500H0V0h1399c0.6,0,1,0.4,1,1V800z"/>
                                    </clipPath>
                                </defs>

                                <image width="300px" height="500px" clip-path="url(#clipPath_testB_3)" xlink:href="slider/img/img-3.jpg"></image>
                            </svg>
                        </div> <!-- .cd-svg-wrapper -->
                    </li>

                    <li>
                        <div class="cd-svg-wrapper">
                            <svg viewBox="0 0 300 500">
                                <title>Aimated SVG</title>
                                <defs>
                                    <clipPath id="clipPath_testB_4">
                                        <path id="chargingPath_testB_4" d="M300,500H0V0h1399c0.6,0,1,0.4,1,1V800z"/>
                                    </clipPath>
                                </defs>

                                <image width="300px" height="500px" clip-path="url(#clipPath_testB_4)" xlink:href="slider/img/img-4.jpg"></image>
                            </svg>
                        </div> <!-- .cd-svg-wrapper -->
                    </li>

                </ul> <!-- .cd-slider -->

                <ul class="cd-slider-navigation">
                    <li><a href="#0" class="next-slide">Next</a></li>
                    <li><a href="#0" class="prev-slide">Prev</a></li>
                </ul> <!-- .cd-slider-navigation -->

                <ol class="cd-slider-controls">
                    <li class="selected"><a href="#0"><em>Item 1</em></a></li>
                    <li><a href="#0"><em>Item 2</em></a></li>
                    <li><a href="#0"><em>Item 3</em></a></li>
                    <li><a href="#0"><em>Item 4</em></a></li>
                </ol> <!-- .cd-slider-controls -->
            </div> <!-- .cd-slider-wrapper -->
        </td>
        <td width="100">
            하자 설명
        </td>
    </tr>
    <tr>
        <td>
            조치 설명
        </td>
    </tr>
</table>

</body>

</html>
