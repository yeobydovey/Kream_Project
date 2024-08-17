<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>

        .just_dropped{

            padding: 20px 40px;
            overflow-x: auto;

        }

        .just_wrap{
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(180px, 1fr)); /* Set minimum width for each column */

            padding-bottom: 20px;
            /*grid-template-columns: repeat(auto-fit, minmax(20%, auto));*/

        }


        .product_box{

            border-radius: 8px;
            /*padding: 20px;*/
            min-width: 180px;



        }
        .thumb_box{
            border-radius: 8px;
            overflow: hidden;


        }
        .product_thumb{
            width: 100%; /* Make the image fill its container */
            max-width: 180px; /* Set maximum width for the image */
            max-height: 180px; /* Set maximum height for the image */
            border-radius: 8px;
            /*max-width: 240px;
            max-height: 240px;
            border-radius: 8px;*/
        }

        .product_info{
            max-width: 180px;

        }

        .product_info > p{
            overflow: hidden;
            text-overflow: ellipsis;
            max-width: 100%;
        }

        .product_brand, .product_price{
            font-weight: bold;
            font-size: 14px;
        }

        .product_name,  .product_now{
            font-size: 14px;
        }


        @media screen and (max-width: 768px) {
            .just_wrap {
                grid-template-columns: repeat(auto-fit, minmax(120px, 1fr)); /* Display only three columns */
            }
            .product_box {
                min-width: auto;
            }
            .product_box:nth-child(n+4) {
                display: none; /* Hide the fourth and fifth product boxes */
            }

        }








    </style>
</head>
<body>
<div class="just_dropped">
    <div class="just_wrap">
        <div class="product_box">
            <div class="thumb_box"><img class="product_thumb" src="resources/product_thumbnail/nike_t.jpg"></div> <%--상품 이미지--%>
            <div class="product_info">
                <div class="product_brand">Nike</div> <%--브랜드--%>
                <div class="product_name"><p>Nike x Stussy Reversible Jacket Black (FJ9153-010)</p></div> <%--상품 이름--%>
                <div class="product_price"><p>516,000원</p></div> <%--상품 금액--%>
                <div class="product_now"><p>즉시 구매가</p></div> <%--즉시 구매가--%>
            </div> <%--상품 정보--%>
        </div>
        <div class="product_box">
            <div class="thumb_box"><img class="product_thumb" style="background-color: antiquewhite" src="resources/product_thumbnail/jodern_shoes.png"></div> <%--상품 이미지--%>
            <div class="product_info">
                <div class="product_brand">Jordan</div> <%--브랜드--%>
                <div class="product_name"><p>Jordan 11 Retro Gratitude</p></div> <%--상품 이름--%>
                <div class="product_price"><p>280,000원</p></div> <%--상품 금액--%>
                <div class="product_now"><p>즉시 구매가</p></div> <%--즉시 구매가--%>
            </div> <%--상품 정보--%>
        </div>
        <div class="product_box">
            <div class="thumb_box" ><img class="product_thumb" src="resources/product_thumbnail/Supreme 4D Model Human Skull Natural.jpg"></div> <%--상품 이미지--%>
            <div class="product_info">
                <div class="product_brand">Supreme</div> <%--브랜드--%>
                <div class="product_name"><p>Supreme 4D Model Human Skull Natural - 23FW</p></div> <%--상품 이름--%>
                <div class="product_price"><p>114,000원</p></div> <%--상품 금액--%>
                <div class="product_now"><p>즉시 구매가</p></div> <%--즉시 구매가--%>
            </div> <%--상품 정보--%>
        </div>
        <div class="product_box">
            <div class="thumb_box"><img class="product_thumb" src="resources/product_thumbnail/IAB Studio Sweatshirt Light Gray - 23FW.jpg"></div> <%--상품 이미지--%>
            <div class="product_info">
                <div class="product_brand">IAB Studio</div> <%--브랜드--%>
                <div class="product_name"><p>IAB Studio Sweatshirt Light Gray - 23FW</p></div> <%--상품 이름--%>
                <div class="product_price"><p>114,000원</p></div> <%--상품 금액--%>
                <div class="product_now"><p>즉시 구매가</p></div> <%--즉시 구매가--%>
            </div> <%--상품 정보--%>
        </div>
        <div class="product_box">
            <div class="thumb_box"><img class="product_thumb" src="resources/product_thumbnail/Converse x Liverpool FC Woven Varsity Jacket Tomato.jpg"></div> <%--상품 이미지--%>
            <div class="product_info">
                <div class="product_brand">Converse</div> <%--브랜드--%>
                <div class="product_name"><p>Converse x Liverpool FC Woven Varsity Jacket Tomato</p></div> <%--상품 이름--%>
                <div class="product_price"><p>233,000원</p></div> <%--상품 금액--%>
                <div class="product_now"><p>즉시 구매가</p></div> <%--즉시 구매가--%>
            </div> <%--상품 정보--%>
        </div>









    </div>





</div>
</body>
</html>
