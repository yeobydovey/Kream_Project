package com.yeobydovey.kream.shop.controller;

import com.yeobydovey.kream.shop.dao.ProductDto;
import com.yeobydovey.kream.shop.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/shop")
public class ShopController {

    @Autowired
    ProductService productService;


    @GetMapping("/shop")
    public String listPage(Model model) {

        System.out.println("리스트 페이지 호출");
        try {
            List<ProductDto> pList = productService.listPage();
            System.out.println(pList);

            model.addAttribute("pList", pList);

        }catch (Exception e){
            e.printStackTrace();
        }

        return "shop/shop";
    }

    // 이미지 파일 불러오기 ajax 방식 현재 사용 X
    @PostMapping("/productImgFind")
    public ResponseEntity<String> productImgFind(int p_seq) throws  Exception{


        System.out.println("이미지이름 찾기 메소드 실행");
        String productImgName;

        productImgName = productService.productImgFind(p_seq);
        System.out.println(productImgName);



        return new ResponseEntity<>(productImgName, HttpStatus.OK);
    }

    @GetMapping("/create")
    public String createPage(){

        return "shop/shopCreate";
    }


    @PostMapping("/create")
    public String productCreate(
            @RequestParam String p_brand,
            @RequestParam String p_eng_name,
            @RequestParam String p_kr_name,
            @RequestParam String p_model_no,
            @RequestParam String p_release_date,
            @RequestParam("p_img") MultipartFile p_img,
            RedirectAttributes redirectAttributes) throws Exception {

        String fileName = p_img.getOriginalFilename();

        System.out.println(p_brand+"."+p_eng_name+"."+p_kr_name+"."
                +p_model_no+"."+p_release_date+"."+fileName);

        String uploadPath = "D:\\myApp\\kream\\web\\resources\\product_img";

        File uploadDir = new File(uploadPath);
        if(!uploadDir.exists()){
            uploadDir.mkdirs();
        }

        File file = new File(uploadDir, fileName);

        try{
        p_img.transferTo(file);
            System.out.println("성공");
        }catch (Exception e){
            e.printStackTrace();
        }


        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
        Date releaseDate = simpleDateFormat.parse(p_release_date);

        ProductDto productDto = new ProductDto();
        productDto.setP_brand(p_brand);
        productDto.setP_eng_name(p_eng_name);
        productDto.setP_kr_name(p_kr_name);
        productDto.setP_model_no(p_model_no);
        productDto.setP_release_date(releaseDate);
        String productImgPath = "/kream/resources/product_img/"+fileName;
        System.out.println(productImgPath);
        productDto.setP_root(productImgPath);


        try{
            if(productService.productCreate(productDto) != 1){
                throw new Exception("craete failed");
            }
            redirectAttributes.addFlashAttribute("message","성공");

        }catch (Exception e){
            e.printStackTrace();
            return "shop/shop";
        }



        return "shop/shop";
    }







}
