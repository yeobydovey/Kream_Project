<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
    <script src="https://code.jquery.com/jquery-3.7.1.js"></script>
    <script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
    <link href="<c:url value='/resources/css/shop/shopCreate.css?after'/>" rel="stylesheet"/>
</head>
<body>
    <div class="header">
        <header><jsp:include page="../header.jsp"/></header>
    </div> <%--header--%>

    <div class="create_area"> <%--1--%>
        <div class="create_box">
            <div class="create_titleBox">
                <h2 class="create_title">상품등록</h2>
            </div>

            <div class="form_box">
                <form class="p_create" name="p_create" id="p_create" action="<c:url value='/shop/create'/>" enctype="multipart/form-data" method="post">
                    <table class="create_table">
                       <tr>
                            <th>카테고리*</th>
                        </tr>
                        <tr>
                            <td>
                                <div  class="category_box">
                                    <input type="text" name="p_category" id="p_category" class="p_category" value="" placeholder="예) 신발">
                                    <hr/>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <th>브랜드*</th>
                        </tr>
                        <tr>
                            <td>
                                <div  class="brand_box">
                                    <input type="text" name="p_brand" id="p_brand" class="p_brand" value="" placeholder="예) KreamPeople">
                                    <hr/>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <th>영어 이름*</th>
                        </tr>
                        <tr>
                            <td>
                                <div  class="eng_box">
                                    <input type="text" name="p_eng_name" class="p_eng_name" value="" placeholder="예) KreamPeople">
                                    <hr/>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <th>한글 이름*</th>
                        </tr>
                        <tr>
                            <td>
                                <div  class="kr_box">
                                    <input type="text" name="p_kr_name" class="p_kr_name" value="" placeholder="예) nickName">
                                    <hr/>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <th>모델 번호*</th>
                        </tr>
                        <tr>
                            <td>
                                <div  class="model_box">
                                    <input type="text" name="p_model_no" class="p_model_no" value="" placeholder="예) nickName">
                                    <hr/>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <th>출시 일자*</th>
                        </tr>
                        <tr>
                            <td>
                                <div  class="release_box">
                                    <input type="text" name="p_release_date" class="p_release_date" value="" placeholder="예) 2019-12-02">
                                    <hr/>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <th>상품 이미지*</th>
                        </tr>
                        <tr>
                            <td>
                                <div  class="img_box">
                                    <input type="file" name="p_img" class="p_img">
                                    <hr/>
                                </div>
                            </td>
                        </tr>

                        <tr>
                            <td>
                                <button type="submit" class="create_button"  id="create_Btn">등록</button>
                            </td>
                        </tr>
                    </table>
                </form>


            </div>
        </div>
    </div>
    <hr/>


    <div class="footer">
        <footer><jsp:include page="../footer.jsp"/></footer>
    </div> <%--footer--%>
</body>
</html>
