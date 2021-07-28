/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.piano.controller.user;


import com.piano.entity.Product;
import com.piano.service.user.ShopService;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author Administrator
 */
@Controller
public class ShopController {

    @Autowired
    private ShopService shopService;

    @RequestMapping("shop")
    public String shop(
            Model model,
            HttpServletRequest request,
            @RequestParam(name = "cateid", defaultValue = "0") Integer cateid,
            @RequestParam(name = "sortby", required = false) String sortby,
            @RequestParam(name = "price_filter", required = false) String price_filter,
            @RequestParam(name = "pagesize",defaultValue = "6") Integer pagesize,
            @RequestParam(name = "page", defaultValue = "1") Integer page
    ) throws UnsupportedEncodingException {

        request.setCharacterEncoding("UTF-8");
        String txt_search = request.getParameter("txt_search");

        List<Product> listP = new ArrayList<>();
        int count = 0;

        if (txt_search == null && cateid == 0 && sortby == null) {
            count = shopService.AllProducts().size();
            listP = shopService.AllProducts();
        }
        if (cateid != 0) {
            count = shopService.SearchProductsByCategory(cateid).size();
            listP = shopService.SearchProductsByCategory(cateid);
            model.addAttribute("value", "&cateid=" + cateid);
        }
        if (txt_search != null) {
            count = shopService.SearchProductsByName(txt_search).size();
            listP = shopService.SearchProductsByName(txt_search);
            model.addAttribute("value", "&txt_search=" + txt_search);
        }
        if (sortby != null) {
            count = shopService.SortProducts(sortby).size();
            listP = shopService.SortProducts(sortby);
            model.addAttribute("value", "&sortby=" + sortby);
        }
        if(price_filter!=null){
            count = shopService.SearchProductsByPriceRange(price_filter).size();
            listP = shopService.SearchProductsByPriceRange(price_filter);
            model.addAttribute("value", "&price_filter=" + price_filter);
        }
        ///
        int endpage = count / pagesize;
        if (count % pagesize != 0) {
            endpage++;
        }
        int begin = pagesize * (page - 1);
        int end = begin + pagesize - 1;
        ///

        model.addAttribute("page", page);
        model.addAttribute("pagesize", "&pagesize="+pagesize);
        model.addAttribute("endpage", endpage);
        model.addAttribute("begin", begin);
        model.addAttribute("end", end);
        model.addAttribute("listP", listP);
        model.addAttribute("listBestSeller", shopService.BestSeller());
        return "user/shop-page";
    }
}
