<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Anton&family=Jua&family=
    Nanum+Gothic+Coding&family=Noto+Sans+KR:wght@100..900&family=Rubik+Mono+One&display=
    swap" rel="stylesheet">

    <script src="https://code.jquery.com/jquery-3.7.1.js"></script>
    <script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
    <link href="<c:url value='/resources/css/shop/shop.css'/>" rel="stylesheet"/>
    <%--<script src="<c:url value="/resources/js/shop/shop.js"/>"></script>--%>
</head>

<body>

    <div class="header">
        <header><jsp:include page="../header.jsp"/></header>
    </div>
    <div class="board_wrap">
        <div class="search_title">
            <h1 class="title_txt">SHOP</h1>
        </div>
        <nav class="pc_shop_tab">
            <div class="tabs">
                <ul>
                    <li class="tabs_list"><a>전체</a></li>
                    <li class="tabs_list">아우터</li>
                    <li class="tabs_list">신발</li>
                    <li class="tabs_list">상의</li>
                    <li class="tabs_list">하의</li>
                    <li class="tabs_list">패션잡화</li>
                    <li class="tabs_list">뷰티</li>
                    <li class="tabs_list">테크</li>
                    <li class="tabs_list">캠핑</li>
                    <li class="tabs_list">가구/리빙</li>
                </ul>
            </div>
        </nav>
        <hr class="longHr"/>
        <div class="search_trend">
            <div class="trend_box">
                <div class="trend_item">
                    <div class="trend_imgBox"><img class="product_thumb" src="${pageContext.request.contextPath}/resources/trend_img/a_4168b7a1b76844929edf31be71940ad2.gif"></div>
                    <span class="trend_txt">실시간 차트</span>
                </div>
                <div class="trend_item">
                    <div class="trend_imgBox"><img class="product_thumb" src="${pageContext.request.contextPath}/resources/trend_img/tmxntl.png"></div>
                    <span class="trend_txt">스투시</span>
                </div>
                <div class="trend_item">
                    <div class="trend_imgBox"><img class="product_thumb" src="${pageContext.request.contextPath}/resources/trend_img/dkelektm.png"></div>
                    <span class="trend_txt">아디다스</span>
                </div>
                <div class="trend_item">
                    <div class="trend_imgBox"><img class="product_thumb" src="${pageContext.request.contextPath}/resources/trend_img/dkdldoq.png"></div>
                    <span class="trend_txt">아이앱</span>
                </div>
                <div class="trend_item">
                    <div class="trend_imgBox"><img class="product_thumb" src="${pageContext.request.contextPath}/resources/trend_img/sbqkffkstm.png"></div>
                    <span class="trend_txt">뉴발란스</span>
                </div>
                <div class="trend_item">
                    <div class="trend_imgBox"><img class="product_thumb" src="${pageContext.request.contextPath}/resources/trend_img/dktlrtm.png"></div>
                    <span class="trend_txt">아식스</span>
                </div>
            </div>
        </div>
        <hr class="shortHr"/>
        <div class="content_wrap">
            <aside class="filter_wrap">
                <div class="search_filter">
                    <div class="filter_status">
                        <span>필터</span>
                    </div>
                    <div class="filter_list">
                        <div class="filter_title">
                            <div class="filter_title_box">
                                <span class="main_title">카테고리</span>
                                <span class="filter_placeholder">모든 카테고리</span>
                            </div>
                            <div class="icon_box">
                                <span>+</span>
                            </div>
                        </div>
                        <div class="filter_menu">
                            <ul>
                                <li><label for="category_chk1"><input type="checkbox" class="category_chk" id="category_chk1" data-value="아우터"/>&nbsp;아우터</label></li>
                                <li><label for="category_chk2"><input type="checkbox" class="category_chk" id="category_chk2" data-value="신발"/>&nbsp;신발</label></li>
                                <li><label for="category_chk3"><input type="checkbox" class="category_chk" id="category_chk3" data-value="상의"/>&nbsp;상의</label></li>
                                <li><label for="category_chk4"><input type="checkbox" class="category_chk" id="category_chk4" data-value="하의"/>&nbsp;하의</label></li>
                                <li><label for="category_chk5"><input type="checkbox" class="category_chk" id="category_chk5" data-value="패션잡화"/>&nbsp;패션잡화</label></li>
                                <li><label for="category_chk6"><input type="checkbox" class="category_chk" id="category_chk6" data-value="뷰티"/>&nbsp;뷰티</label></li>
                                <li><label for="category_chk7"><input type="checkbox" class="category_chk" id="category_chk7" data-value="테크"/>&nbsp;테크</label></li>
                                <li><label for="category_chk8"><input type="checkbox" class="category_chk" id="category_chk8" data-value="캠핑"/>&nbsp;캠핑</label></li>
                                <li><label for="category_chk9"><input type="checkbox" class="category_chk" id="category_chk9" data-value="가구/리빙"/>&nbsp;가구/리빙</label></li>
                            </ul>
                        </div>
                    </div>
                    <hr class="filter_hr"/>
                    <div class="filter_list">
                        <div class="filter_title">
                            <div class="filter_title_box">
                                <span class="main_title">가격</span>
                                <span class="filter_placeholder">모든 가격</span>
                            </div>
                            <div class="icon_box">
                                <span>+</span>
                            </div>
                        </div>
                        <div class="filter_menu">
                            <ul>
                                <li><input type="checkbox"/>&nbsp;10만원 이하</li>
                                <li><input type="checkbox"/>&nbsp;10만원 - 30만원</li>
                                <li><input type="checkbox"/>&nbsp;30만원 - 50만원</li>
                                <li><input type="checkbox"/>&nbsp;50만원 이상</li>
                            </ul>
                        </div>
                    </div>
                    <hr class="filter_hr"/>
                    <div class="filter_list">
                        <div class="filter_title">
                            <div class="filter_title_box">
                                <span class="main_title">브랜드</span>
                                <span class="filter_placeholder">모든 브랜드</span>
                            </div>
                            <div class="icon_box" id="brand_icon_box">
                                <span>+</span>
                            </div>
                        </div>
                        <div class="filter_menu" style="overflow:scroll; overflow-x: hidden;  height:210px;">
                            <ul class="brand_menu" >

                            </ul>
                        </div>
                    </div>
                    <hr class="filter_hr"/>
                </div>
            </aside>

            <article class="product_wrap">
                <div class="shop_count">
                    <div class="product_count"><span>상품 234,545</span></div>
                    <div>
                        <button><a href="<c:url value='/shop/create'/>">상품 등록</a></button>
                    </div>
                </div>





                <div class="product_display">
                    <c:forEach items="${pList}" var="p" >
                        <div data-pseq="${p.p_seq}" class="product_items">

                            <%-- ${pageContext.request.contextPath}--%>
                            <div class="product_box">
                                <div class="product_img">
                                    <img src="${p.p_root}"/>
                                </div>
                                <div class="product_content">
                                    <p class="product_brand">${p.p_brand}</p>
                                    <p class="product_eng_name">${p.p_eng_name}</p>
                                    <p class="product_kr_name">${p.p_kr_name}</p>
                                </div>
                                <div class="product_content_price">57,000원</div>
                                <div class="product_content_heart"></div>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </article>
        </div>
    </div>

    <div class="footer">
        <footer><jsp:include page="../footer.jsp"/></footer>
    </div> <%--footer--%>

<script>



/*// 이미지 파일 불러오기 ajax 방식
$(document).ready(function() {
    $(".product_items").each(function(){
        let p_seq = $(this).data("pseq");
        let pi = $(this).find(".product_img")[0]; // Get the first matched element using [0]

        $.ajax({
            url : "<c:url value='/shop/productImgFind'/>",
            type : "POST",
            data : {
                p_seq : p_seq
            },
            dataType : "text",
            success : function (result){
                console.log(result);
                let src = "${pageContext.request.contextPath}/resources/product_img/";
                let img = document.createElement("img"); // Create a new <img> element
                img.id = "images";
                img.src = src + result;
                console.log(src);
                console.log(img);
                console.log(pi);
                pi.appendChild(img); // Append the img element to pi
            },
            error : function (res){
                alert(res.responseText);
            }
        });
    });
});*/


$('#brand_icon_box').click(function () {
    let bm = $('.brand_menu');


    $.ajax({
        type: "POST",
        url: "<c:url value='/shop/brandList'/>",
        data: {},
        dataType: "json", // 서버에서 JSON 반환
        success: function (result) {
            console.log(result); // 받은 데이터를 확인합니다.
            let str = "";
            $(result).each(function(index){
                str = "<li><label for='category_chk"+(index+1)+"'><input type='checkbox' data-value='"+result[index]+"' class='category_chk' id='brand_chk"+(index+1)+"'/> "+result[index]+"</label></li>";
                bm.append(str);
            });

        },
        error: function(res) {
            alert(res.responseText); // 오류 발생 시 경고창 표시
        }
    });
});






</script>
</body>
<script src="<c:url value="/js/shop/shop.js"/>"></script>
</html>
