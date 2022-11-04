
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<html>
<head>
    <title>Farm</title>

    <!-- 스타일시트 & 스크립트 연결 -->
    <script src="http://code.jquery.com/jquery-latest.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <link rel="stylesheet" href="${contextPath}/resources/CSS/Farm.css" type="text/css" />

    <%-- 차트 --%>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>

    <script src="${contextPath}/resources/JSON/Farm2.json"></script>
    <script src="${contextPath}/resources/JS/Farm.js"></script>

</head>
<body>

<%--몸통--%>
<section>
    <article>
        <main>

            <div class="p-5 mb-4 bg-light rounded-3">
                <div class="container-fluid py-0">
                    <h1 class="display-5 fw-bold">작물 선택</h1>
                    <p class="col-md-8 fs-4"> 자신의 여건과 적성, 기술수준, 자본능력 등에 적합한 작물을 신중하게 선택해야 합니다. <br/>
                        지역 특산물을 우선 (지역의 자금 지원,기술 지원)<br/>
                        지역 환경 고려<br/>
                        귀농에 따른 생각에 따라 달라질수 있다.<br/>
                        교육 기관에서 어떤 작목을 배웠느냐도 결정요소가 된다.
                    </p>

                    <form>
                        <div style="width: 20%">
                            지역
                            <select class="form-select form-select-lg mb-3" aria-label=".form-select-lg example">
                                <option selected>전체</option>
                                <option value="1">경상북도</option>
                                <option value="2">경상남도</option>
                                <option value="3">전라도</option>
                            </select>
                            기술수준
                            <select class="form-select form-select-lg mb-3" aria-label=".form-select-lg example">
                                <option selected>없음</option>
                                <option value="1">초보자</option>
                                <option value="2">중수</option>
                                <option value="3">고수</option>
                            </select>
                        </div>
                    </form>

                    <button class="btn btn-primary btn-lg" type="button" id="flip">작물 골라보기</button>
                </div>
            </div>

            <div id="window" style="display: none">

                <div id="Main_Box" align="center">
                    <div class="d-flex justify-content-center" style="margin-bottom: 30px">
                        <c:forEach var="i" begin="0" end="6">
                            <!-- Button trigger modal -->
                            <button id="Fbtn" onclick="fn_click(${i})" data-bs-toggle="modal" data-bs-target="#exampleModal">
                                <img src="${contextPath}/resources/image/과일/과일${i+1}.jpg" alt="과일${i+1}" width="100"
                                     height="100" class="rounded-circle">
                            </button>
                        </c:forEach>
                    </div>

                    <!-- Modal -->
                    <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel"
                         aria-hidden="true">
                        <div class="modal-dialog modal-xl">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h1 class="modal-title fs-5" id="exampleModalLabel">스마트 팜</h1>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal"
                                            aria-label="Close"></button>
                                </div>
                                <div class="modal-body">
                                    <div id="Information" style="background: #ffaa00">

                                        <div style="margin-top: 20px; padding: 10px">
                                            <button type="button" class="btn btn-outline-primary" id="menu1">기본 정보
                                            </button>
                                            <button type="button" class="btn btn-outline-success" id="menu2">재배 기술
                                            </button>
                                            <button type="button" class="btn btn-outline-secondary" id="menu3">시세 정보
                                            </button>
                                            <button type="button" class="btn btn-outline-danger" id="menu4">동영상
                                            </button>
                                            <button type="button" class="btn btn-outline-dark" id="menu5"> 갤러리
                                            </button>
                                        </div>

                                        <!-- START THE FEATURETTES -->
                                        <hr class="featurette-divider">

                                        <div id="Info_menu1" style="display: none">
                                            <h1> 과일 정보 </h1>
                                            <div class="row featurette">
                                                <div class="col-md-7">
                                                    <h2 class="featurette-heading fw-normal lh-1" id="Fruit_Title"> 제목
                                                        A </h2>
                                                    <p class="lead" id="SmallInfo" style="color: #f0f0f0"> 부가 설명
                                                        입니다. </p>
                                                    <div class="InfoBox">
                                                        <p id="content1" style="width: 80%;"></p>
                                                    </div>
                                                </div>
                                                <div class="col-md-5">
                                                    <div id="FruitPic"></div>
                                                </div>
                                            </div>

                                            <hr class="featurette-divider">
                                            <h1> 종류 </h1>
                                            <div id="carouselExampleControls" class="carousel slide"
                                                 data-bs-ride="carousel">

                                                <div class="carousel-inner">
                                                    <div class="carousel-item">
                                                        <svg class="bd-placeholder-img bd-placeholder-img-lg d-block w-100"
                                                             width="800"
                                                             height="400" xmlns="http://www.w3.org/2000/svg" role="img"
                                                             aria-label="Placeholder: First slide"
                                                             preserveAspectRatio="xMidYMid slice"
                                                             focusable="false"><title>Placeholder</title>

                                                            <rect width="100%" height="100%" fill="#ffaa00"></rect>
                                                        </svg>
                                                        <div class="carousel-caption text-start">

                                                            <h1>동양계자두(P.salicina)</h1>
                                                            <p>동양자두의 대표적인 품종은 과피가 빨갛고 과육이 노란색인 것과 껍질이 녹색이고 과육이 새빨간 것이
                                                                있다. 모든 품종이 과즙이 많으며 새콤달콤하므로 날것으로 먹기에 적합하다.</p>
                                                            <p><a class="btn btn-lg btn-primary" href="#">상세보기</a></p>
                                                        </div>

                                                    </div>

                                                    <div class="carousel-item active">
                                                        <svg class="bd-placeholder-img bd-placeholder-img-lg d-block w-100"
                                                             width="800"
                                                             height="400" xmlns="http://www.w3.org/2000/svg" role="img"
                                                             aria-label="Placeholder: Second slide"
                                                             preserveAspectRatio="xMidYMid slice"
                                                             focusable="false"><title>Placeholder</title>

                                                            <rect width="100%" height="100%" fill="#ffaa00"></rect>
                                                        </svg>

                                                        <div class="carousel-caption text-start">

                                                            <h1>유럽계자두(P.domestica)</h1>
                                                            <p>서양자두는 풍만한 타원형이나 계란형이 많으며 껍질은 보라색이 많다. 과육은 보통 노란색이며 향기가
                                                                좋다. 신맛이 강해서 날것으로 먹는 것 보다는 말리거나, 잼. 젤리. 통조림 등으로 가공된다.
                                                                서양자두 중에서 가장 향기가 좋고 프랑스에서 파이와 같은 과자 재료로 사용되는 품종에 미라벨이라고
                                                                하는 품종이 있다. 이것은 매실보다는 조금 작고 노란색으로 표피가 거의 투명하다.
                                                            </p>
                                                            <p><a class="btn btn-lg btn-primary" href="#">상세보기</a></p>
                                                        </div>

                                                    </div>

                                                    <div class="carousel-item">
                                                        <svg class="bd-placeholder-img bd-placeholder-img-lg d-block w-100"
                                                             width="800"
                                                             height="400" xmlns="http://www.w3.org/2000/svg" role="img"
                                                             aria-label="Placeholder: third slide"
                                                             preserveAspectRatio="xMidYMid slice"
                                                             focusable="false"><title>Placeholder</title>

                                                            <rect width="100%" height="100%" fill="#ffaa00"></rect>
                                                        </svg>

                                                        <div class="carousel-caption text-start">

                                                            <h1>미국자두(P.americana)</h1>
                                                            <p>미국자두는 껍질이 빨갛거나 오렌지색으로 과육은 노랗고 즙이 많으며 신맛이 강하다.</p>
                                                            <p><a class="btn btn-lg btn-primary" href="#">상세보기</a></p>
                                                        </div>
                                                    </div>
                                                </div>

                                                <%-- 버튼 --%>
                                                <button class="carousel-control-prev" type="button"
                                                        data-bs-target="#carouselExampleControls" data-bs-slide="prev">
                                                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                                    <span class="visually-hidden">Previous</span>
                                                </button>
                                                <button class="carousel-control-next" type="button"
                                                        data-bs-target="#carouselExampleControls" data-bs-slide="next">
                                                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                                    <span class="visually-hidden">Next</span>
                                                </button>
                                            </div>

                                            <hr class="featurette-divider">
                                            <h1> 품종 </h1>

                                            <div class="d-flex justify-content-center" style="width: 90%">
                                                <div class="card">
                                                    <img width="200" height="200"
                                                         src="http://atis.rda.go.kr/rdais/commonModule/fileDownloadToApp.vw?file_name=%2Fatis%2Fspciesoutput%2Fspcies%2F20181217%2F%EC%9B%90%EA%B5%90%EB%A7%88-22%ED%98%B8.jpg"
                                                         alt="젤리하트(Jelly Heart)">
                                                    <div class="card-body">
                                                        <h5 class="card-title">Card 제목</h5>
                                                        <p class="card-text">내용.</p>
                                                    </div>
                                                </div>
                                                <div class="card">
                                                    <img width="200" height="200"
                                                         src="http://atis.rda.go.kr/rdais/commonModule/fileDownloadToApp.vw?file_name=%2Fatis%2Fspciesoutput%2Fspcies%2F20170113%2F20160804_141709_004.jpg"
                                                         alt="썸머스타(Summer Star)">
                                                    <div class="card-body">
                                                        <h5 class="card-title">Card 제목</h5>
                                                        <p class="card-text">내용.</p>
                                                    </div>
                                                </div>
                                                <div class="card">
                                                    <img width="200" height="200"
                                                         src="http://atis.rda.go.kr/rdais/commonModule/fileDownloadToApp.vw?file_name=%2Fatis%2Fspciesoutput%2Fspcies%2F20180723%2F%EC%9E%90%EB%91%90-%EC%8D%A8%EB%8B%88%ED%80%B81.jpg"
                                                         alt="써니퀸(Sunny Queen)">
                                                    <div class="card-body">
                                                        <h5 class="card-title">Card 제목</h5>
                                                        <p class="card-text">내용.</p>
                                                    </div>
                                                </div>
                                                <div class="card">
                                                    <img width="200" height="200"
                                                         src="http://atis.rda.go.kr/rdais/commonModule/fileDownloadToApp.vw?file_name=%2Fatis%2Ftctspciesinfo%2F97046.jpg"
                                                         alt="플럼코트 심포니(원교사-08호">
                                                    <div class="card-body">
                                                        <h5 class="card-title">Card 제목</h5>
                                                        <p class="card-text">내용.</p>
                                                    </div>
                                                </div>
                                                <div class="card">
                                                    <img width="200" height="200"
                                                         src="http://atis.rda.go.kr/rdais/commonModule/fileDownloadToApp.vw?file_name=%2Fatis%2Ftctspciesinfo%2F97031.jpg"
                                                         alt="썸머 판타지아(원교마-07호)">
                                                    <div class="card-body">
                                                        <h5 class="card-title">Card 제목</h5>
                                                        <p class="card-text">내용.</p>
                                                    </div>
                                                </div>
                                            </div>

                                        </div>

                                        <div id="Info_menu2" style="display: none">
                                            <h1> 농업기술 길잡이 </h1>
                                            <div class="row featurette">
                                                <div class="col-md-7 order-md-2">
                                                    <h2 class="featurette-heading fw-normal lh-1" id="Fruit_Title2"> 제목
                                                        B </h2>
                                                    <p class="lead" id="content2"> 부가 설명 입니다. </p>
                                                    <div class="InfoBox">
                                                        <div id="level"></div>
                                                    </div>
                                                </div>
                                                <div class="col-md-5 order-md-1">
                                                    <div id="FruitPic2" onclick="PDF_popup()"></div>
                                                </div>
                                            </div>

                                            <hr class="featurette-divider">
                                            <h1> 최신 영농활용 기술 </h1>
                                            <div class="d-flex justify-content-center"
                                                 style="width: 80%; height: 300px; text-align: center; overflow: auto">
                                                <table class="table table-striped table-hover"
                                                       style="margin-top: 10px; background: #f0f0f0">
                                                    <thead>
                                                    <tr class="table-success">
                                                        <th scope="col" style="width: 5%">번호</th>
                                                        <th scope="col" style="width: 60%">제목</th>
                                                        <th scope="col" style="width: 10%">작성자</th>
                                                        <th scope="col" style="width: 15%">등록일</th>
                                                        <th scope="col" style="width: 10%">조회수</th>
                                                    </tr>
                                                    </thead>
                                                    <tbody class="table-group-divider">
                                                    <c:forEach var="i" begin="1" end="15">
                                                        <tr>
                                                            <th scope="row">${i}</th>
                                                            <td>제목 ${i}</td>
                                                            <td>작성자 ${i}</td>
                                                            <td>2022.10.24</td>
                                                            <td>100</td>
                                                        </tr>
                                                    </c:forEach>
                                                    </tbody>
                                                </table>
                                            </div>

                                        </div>

                                        <div id="Info_menu3" style="display: none">
                                            <h1> 과일 시세 </h1>
                                            <div class="row featurette">
                                                <div class="col-md-7">
                                                    <h2 class="featurette-heading fw-normal lh-1"> 제목 C </h2>
                                                    <p class="lead"> 부가 설명 입니다. </p>
                                                    <div class="InfoBox">
                                                        <div id="content3"></div>
                                                    </div>

                                                </div>
                                                <div class="col-md-5">
                                                </div>
                                            </div>
                                            <hr class="featurette-divider">
                                            <h1> 최신 시세 현황 </h1>
                                            <hr class="featurette-divider">
                                            <h1> 거래량 </h1>
                                            <div id="myChart" style="width:100%; max-width:600px; height:500px;"></div>
                                        </div>

                                        <div id="Info_menu4" style="display: none">
                                            <h1> 동영상 </h1>
                                            <div class="d-flex p-2">
                                                <video width="50%" height="30%" controls>
                                                    <source src="${contextPath}/resources/Video/자두/자두재배.mp4" type="video/mp4">
                                                    Your browser does not support the video tag.
                                                </video>
                                                <div>
                                                    <h2>새콤달콤 자두 재배하기</h2>
                                                    <p style="width: 80%">
                                                        자두는 6~7월에 복숭아보다 조금 일찍 생산된다. 마땅한 다른 과일이 없는 시기에 생산되어 입맛을 돋게 하는 과일이다.
                                                        자두의 재배면적이 증가하고 있지만 수분수에 대한 인식이 낮아 결실이 불안정한 문제점이 있다.
                                                        자두 품종에 대한 특성을 알아보고 결실관리기술에 대해 자세히 소개한다.
                                                    </p>
                                                </div>
                                            </div>
                                            <hr class="featurette-divider">
                                            <div class="d-flex p-2">
                                                <video width="50%" height="30%" controls>
                                                    <source src="${contextPath}/resources/Video/자두/품종과재배기술.mp4" type="video/mp4">
                                                    Your browser does not support the video tag.
                                                </video>
                                                <div>
                                                    <h2>자두의 주요품종과 재배기술</h2>
                                                    <p style="width: 80%">
                                                        자두의 재배면적이 증가하고 있지만 수분수에 대한 인식이 낮아 결실이 불안정한 문제점이 있다.
                                                        자두 품종에 대한 특성을 알아보고 수분수의 식재, 토양관리, 적과 및 낙과방지 등 재배기술에 대해 자세히 소개한다.
                                                    </p>
                                                </div>
                                            </div>
                                        </div>

                                        <div id="Info_menu5" style="display: none">
                                            <h1> 갤러리 </h1>
                                        </div>

                                        <!-- /END THE FEATURETTES -->
                                        <hr class="featurette-divider">
                                        <div style="width: 90%">
                                            <div class="form-floating">
                                                <h1>운영 팁</h1>
                                                <div class="d-flex">
                                                    <div class="p-2 w-100">
                                    <textarea class="form-control" placeholder="Leave a comment here"
                                              id="floatingTextarea2" style="height: 100px"></textarea>
                                                        <%--                                    <label for="floatingTextarea2">Comments</label>--%>
                                                    </div>
                                                    <div class="p-2 flex-shrink-0">
                                                        <button class="button2">등록</button>
                                                    </div>
                                                </div>
                                            </div>
                                            <div style="padding: 10px">
                                                <table class="table table-sm" style="padding: 10px">
                                                    <c:forEach var="i" begin="0" end="5">
                                                    <tr class="table-secondary">
                                                        <td class="table-secondary" style="height: 100px">
                                                            댓글 입니다.
                                                        </td>
                                                    </tr>
                                                    </c:forEach>
                                                </table>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <%--                                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>--%>
                                <%--                                    <button type="button" class="btn btn-primary">Save changes</button>--%>
                            </div>
                        </div>
                    </div>
                </div>


                <div id="Main_Box2" align="center" style="margin-bottom: 30px">
                    <div class="d-flex justify-content-center" style="margin-bottom: 30px; margin-top: 30px">
                        <c:forEach var="i" begin="0" end="5">
                            <button id="Fbtn" onclick="fn_clcik2(${i})">
                                <img src="${contextPath}/resources/image/채소/채소${i+1}.jpg" alt="과일${i+1}" width="100"
                                     height="100" class="rounded-circle">
                            </button>
                        </c:forEach>
                    </div>

                </div>
            </div>

            <div class="b-example-divider"></div>

        </main>
    </article>
</section>

</body>
</html>
