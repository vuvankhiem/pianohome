/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.piano.controller.admin;

import com.piano.entity.Category;
import com.piano.entity.Product;
import com.piano.service.admin.ManageProductService;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

/**
 *
 * @author Administrator
 */
@Controller
public class ManageProductController {

    @Autowired
    ManageProductService manageProductService;

    @RequestMapping("admin/manage-product")
    public String manageProduct(
            @RequestParam(name = "search",required = false) String search,
            @RequestParam(name = "page", defaultValue = "1", required = false) int page,
            Model model) {

        List<Product> listP = new ArrayList<>();
        int endPage = 0;
        if (search==null) {
            listP = manageProductService.getProductbyPage(page);
            endPage = manageProductService.endpage(manageProductService.countProduct());

            model.addAttribute("page", page);
            model.addAttribute("active", 2);
        } else {
            listP = manageProductService.findProductsByName(search);
        }
        model.addAttribute("endPage", endPage);
        model.addAttribute("listP", listP);
        return "admin/admin-view-product";
    }

    @RequestMapping("admin/delete-product")
    public String deleteProduct(@RequestParam(name = "id", required = false) int id, HttpServletRequest request) {
        manageProductService.deleteProduct(id);
        return "redirect:" + request.getHeader("Referer");
    }

    @RequestMapping("admin/save-or-update")
    public String saveOrupdate(@RequestParam(name = "p_id", required = false, defaultValue = "0") int p_id, Model model, HttpSession httpSession
    ) {
        if (p_id == 0) {
            httpSession.invalidate();
            model.addAttribute("option", "Thêm sản phẩm");
            model.addAttribute("uri", "save-product");
        } else {
            model.addAttribute("option", "Cập nhật sản phẩm");
            model.addAttribute("uri", "update-product");
            Product p = manageProductService.getProductbyId(p_id);
            httpSession.setAttribute("p", p);
        }
        return "admin/admin-manage-product";
    }

    @RequestMapping("admin/save-product")
    public String saveProduct(Model model,
            @RequestParam(name = "productName", required = false) String productName,
            @RequestParam(name = "cateID", required = false) int cateID,
            @RequestParam(name = "image1", required = false) MultipartFile image1,
            @RequestParam(name = "image2", required = false) MultipartFile image2,
            @RequestParam(name = "image3", required = false) MultipartFile image3,
            @RequestParam(name = "price", required = false) double price,
            @RequestParam(name = "sale", required = false, defaultValue = "0") int sale,
            @RequestParam(name = "dateSale", required = false) String saleTime,
            @RequestParam(name = "status", required = false) int status,
            @RequestParam(name = "short_des", required = false) String short_des,
            @RequestParam(name = "long_des", required = false) String long_des,
            @RequestParam(name = "spec", required = false) String spec,
            HttpServletRequest request) throws IOException {

        Product product = new Product();
        Category category = manageProductService.findCategoryByID(cateID);
        product.setProductName(productName);
        product.setCategory(category);
        product.setImage1(request.getContextPath() + "/image/" + saveFile(image1));
        product.setImage2(request.getContextPath() + "/image/" + saveFile(image2));
        product.setImage3(request.getContextPath() + "/image/" + saveFile(image3));
        product.setPrice(price);
        if (sale != 0) {
            product.setSale(sale);
        }
        product.setStatus(status);
        if (!saleTime.equals("")) {
            product.setSaleTime(saleTime);
        }
        product.setDescription(short_des);
        product.setFulldescription(long_des);
        product.setSpec(spec);
        manageProductService.saveProduct(product);
        return "redirect:manage-product";
    }

    @RequestMapping("admin/update-product")
    public String updateProduct(Model model,
            HttpSession session,
            @RequestParam(name = "productName", required = false) String productName,
            @RequestParam(name = "cateID", required = false) int cateID,
            @RequestParam(name = "image1", required = false) MultipartFile image1,
            @RequestParam(name = "image2", required = false) MultipartFile image2,
            @RequestParam(name = "image3", required = false) MultipartFile image3,
            @RequestParam(name = "price", required = false) double price,
            @RequestParam(name = "sale", required = false, defaultValue = "0") int sale,
            @RequestParam(name = "dateSale", required = false) String saleTime,
            @RequestParam(name = "status", required = false) int status,
            @RequestParam(name = "short_des", required = false) String short_des,
            @RequestParam(name = "long_des", required = false) String long_des,
            @RequestParam(name = "spec", required = false) String spec,
            HttpServletRequest request) throws IOException {

        Product product = (Product) session.getAttribute("p");
        if (!product.getProductName().equals(productName)) {
            product.setProductName(productName);
        }
        if (product.getCategory().getCategoryID() != cateID) {
            Category category = manageProductService.findCategoryByID(cateID);
            product.setCategory(category);
        }
        if (!image1.isEmpty()) {
            product.setImage1(request.getContextPath() + "/image/" + saveFile(image1));
        }
        if (!image2.isEmpty()) {
            product.setImage2(request.getContextPath() + "/image/" + saveFile(image2));
        }
        if (!image3.isEmpty()) {
            product.setImage3(request.getContextPath() + "/image/" + saveFile(image3));
        }
        if (product.getPrice() != price) {
            product.setPrice(price);
        }
        if (product.getSale() != sale) {
            product.setSale(sale);
        }
        if (product.getStatus() != status) {
            product.setStatus(status);
        }

        if (!saleTime.equals("")) {
            product.setSaleTime(saleTime);
        }
        if (!product.getDescription().equals(short_des)) {
            product.setDescription(short_des);
        }
        if (!product.getFulldescription().equals(long_des)) {
            product.setFulldescription(long_des);
        }
        if (!product.getSpec().equals(spec)) {
            product.setSpec(spec);
        }
        manageProductService.updateProduct(product);

        session.removeAttribute("p");
        return "redirect:manage-product";
    }

    
    private static String saveFile(MultipartFile multipartFile) throws IOException {
        if (multipartFile != null || !multipartFile.isEmpty()) {
            byte[] bytes = multipartFile.getBytes();
            String rootPath = System.getProperty("catalina.home");
            File dir = new File(rootPath + File.separator + "/Upload/images");
            Path p = Paths.get(rootPath + File.separator + "/Upload/images");
            if (!Files.exists(p)) {
                try {
                    Files.createDirectories(p);
                } catch (IOException e) {
                }
            } else {
                String fileName = multipartFile.getOriginalFilename() + ".png";
                File fileServer = new File(dir.getAbsoluteFile() + File.separator + fileName);
                try (BufferedOutputStream outputStream = new BufferedOutputStream(new FileOutputStream(fileServer))) {
                    outputStream.write(bytes);
                }
                return fileName;
            }

        }
        return null;
    }
}
