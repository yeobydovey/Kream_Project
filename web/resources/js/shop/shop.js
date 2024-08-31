    // 필터 슬라이드 및 아이콘박스 변경
    $('.filter_list').click(function(event) {

        let clickElement = $(event.target);

        if(clickElement.is('input[type="checkbox"]') || clickElement.is('li') || clickElement.is('label')){
            return;
        }


        if($(this).children('.filter_menu').css("display") == 'none'){
            $(this).children('.filter_menu').slideDown();
            $(this).find('.filter_title').find('.icon_box').html("-");
            $(this).find('.icon_box').toggleClass('expanded');
            $(this).find('.filter_placeholder').hide();



        }else{
            $(this).children('.filter_menu').slideUp();
            $(this).find('.filter_title').find('.icon_box').html("+");
            $(this).find('.icon_box').removeClass('expanded');
            $(this).find('.filter_placeholder').show();
        }

    });


    // 다른 체크박시 선택시 기존 체크박스 해제 , 체크박스 모두 해제시 페이지 새로고침
    $('input[type="checkbox"][class="category_chk"]').click(function (){

        let fl = $(this).closest(".filter_list");

        // 체크된 체크박스의 라벨에 굵은 폰트 클래스를 추가
        $(this).closest('label').addClass('bold-font');

        // 다른 체크박스의 라벨에서 굵은 폰트 클래스를 제거
        $('input[type="checkbox"][class="category_chk"]').not(this).each(function() {

            $(this).closest('label').removeClass('bold-font');
        });


        if($(this).prop('checked')){

            $('input[type="checkbox"][class="category_chk"]').prop('checked', false);
            $(this).prop('checked', true);
            $(fl).find('.filter_placeholder').html($(this).attr("data-value"));
            $(fl).find('.filter_placeholder').show();
        }

        if($('input[type="checkbox"][class="category_chk"]:checked').length == 0){

            $(fl).find('.filter_placeholder').html('모든 카테고리');
            location.href = location.href;
        }
    })

