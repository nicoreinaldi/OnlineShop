/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.nico.model;

import java.io.Serializable;
import java.util.List;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

/**
 *
 * @author user
 */
@Entity
@Table(name = "TBL_PRODUCT")
public class Product implements Serializable {

    private static long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "PRODUCT_ID")
    private Integer productID;
    @Column(name = "PRODUCT_NAME")
    private String productName;
    @Column(name = "DESCRIPTION")
    private String description;
    @Column(name = "STOCK")
    private int stock;
    @Column(name = "PRICE")
    private double price;
    @Column(name = "PRODUCT_IMAGE")
    private String productImage;
    @JoinColumn(name = "BRAND_CODE", referencedColumnName = "BRAND_ID")
    @ManyToOne(optional = false)
    private Brand brandCode;
    
    @ManyToMany(cascade = CascadeType.ALL, mappedBy = "productId")
    private List<Order> orderList;

    public Integer getProductID() {
        return productID;
    }

    public void setProductID(Integer productID) {
        this.productID = productID;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (int) productID;
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the productID fields are not set
        if (!(object instanceof Product)) {
            return false;
        }
        Product other = (Product) object;
        if (this.productID != other.productID) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.muqorrobin.model.Product[ id=" + productID + " ]";
    }

    /**
     * @return the serialVersionUID
     */
    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    /**
     * @param aSerialVersionUID the serialVersionUID to set
     */
    public static void setSerialVersionUID(long aSerialVersionUID) {
        serialVersionUID = aSerialVersionUID;
    }

    /**
     * @return the productName
     */
    public String getProductName() {
        return productName;
    }

    /**
     * @param productName the productName to set
     */
    public void setProductName(String productName) {
        this.productName = productName;
    }

    /**
     * @return the description
     */
    public String getDescription() {
        return description;
    }

    /**
     * @param description the description to set
     */
    public void setDescription(String description) {
        this.description = description;
    }

    /**
     * @return the stock
     */
    public int getStock() {
        return stock;
    }

    /**
     * @param stock the stock to set
     */
    public void setStock(int stock) {
        this.stock = stock;
    }

    /**
     * @return the productImage
     */
    public String getProductImage() {
        return productImage;
    }

    /**
     * @param productImage the productImage to set
     */
    public void setProductImage(String productImage) {
        this.productImage = productImage;
    }

      /**
     * @return the price
     */
    public double getPrice() {
        return price;
    }

    /**
     * @param price the price to set
     */
    public void setPrice(double price) {
        this.price = price;
    }

    /**
     * @return the orderList
     */
    public List<Order> getOrderList() {
        return orderList;
    }

    /**
     * @param orderList the orderList to set
     */
    public void setOrderList(List<Order> orderList) {
        this.orderList = orderList;
    }

    /**
     * @return the brandCode
     */
    public Brand getBrandCode() {
        return brandCode;
    }

    /**
     * @param brandCode the brandCode to set
     */
    public void setBrandCode(Brand brandCode) {
        this.brandCode = brandCode;
    }
    
}
