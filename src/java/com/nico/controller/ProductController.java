
package com.nico.controller;

import com.nico.dao.ProductService;
import com.nico.model.Product;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/product")
public class ProductController {
    @Autowired
    ProductService ps;
    
    CartBean cartBean = new CartBean();
    int pertambahan;
    int iterator;
    int no=1;
    
    @RequestMapping(value = "/all")
    public String showAllProduct(Model model){
        List<Product>products=ps.findAll();
        model.addAttribute("products", products);
        return "product";
    }
    @RequestMapping(value ="/cat/{kategori}")
    public String showkategori(@PathVariable String kategori, Model model){
        List<Product> prodByCat=ps.findByKategori(kategori);
        model.addAttribute("kateg",prodByCat);
        return  "kategori";
    }
    @RequestMapping(value="/{productId}")
    public String showOneProduct(@PathVariable Integer productId, Model model){
        Product product=ps.findById(productId);
        model.addAttribute("product", product);
        
        return "productdetail";
    }
    @RequestMapping(value="/addcart/{id}")
    public String addCart(HttpSession session,@PathVariable Integer id, Model model){
        double hargaTotal=0.0;
try {
            Product prod = ps.findById(id);
            if (prod == null) {
                model.addAttribute("errMsg", "Belom ada barang yg dipilih");
                return "welcome";
            }
            cartBean.getCartList().put(no++, prod);
            int count = cartBean.getCartList().size();
            Map<Integer, Product> products = cartBean.getCartList();
        for (Map.Entry<Integer, Product> entry : products.entrySet()) {
            hargaTotal+= entry.getValue().getCost();
        }
            model.addAttribute("carts", count);
            session.setAttribute("cart", cartBean);
            session.setAttribute("hargaTotal", hargaTotal);

        } catch (Exception e) {
            e.printStackTrace();
        }
        return "redirect:/welcome" ;
    }
    @RequestMapping(value="/cart")
    public String showCart(HttpSession session, Model model){
          
        return "cart";
    }
    
    @RequestMapping(value = "/remove/{key}")
    public String removeCart(@PathVariable Integer key, Model model, HttpSession session) {
        double hargaTotal=0.0;
        try {
           
            cartBean.getCartList().remove(key);
            
        Map<Integer, Product> products = cartBean.getCartList();
        for (Map.Entry<Integer, Product> entry : products.entrySet()) {
            hargaTotal+= entry.getValue().getCost();
        }
        session.setAttribute("hargaTotal", hargaTotal);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "redirect:/product/cart";
    }
    @RequestMapping(value="/checkout")
    public String checkout(HttpSession session){
        double hargaTotal=(double) session.getAttribute("hargaTotal");
        session.setAttribute("hargaTotalx", hargaTotal);
        session.setAttribute("carts", 0);
        session.removeAttribute("cart");
        session.removeAttribute("hargaTotal");
        return "checkout";
    }
}
