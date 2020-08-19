package com.oracle.controller;

import cn.itcast.common.page.Pagination;
import com.oracle.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.lang.annotation.Annotation;
@Controller
public class ProductController{
    @Autowired
    private ProductService productService;
   @RequestMapping("/getProducts")
        public String getProducts(Model model,String pname,
                                  Integer pageNo){

       Pagination pager = productService.getAll(pname,pageNo,2);
       model.addAttribute("mainPage","list.jsp");
       model.addAttribute("pager",pager);

       return "dashboard";
   }




}
