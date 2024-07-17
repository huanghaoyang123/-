package com.spring.entity;

import com.spring.util.*;
import java.io.Serializable;
import java.util.Date;
import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Table(name = "yiqingshangbao")
public class Yiqingshangbao implements Serializable {

    private static final long serialVersionUID = 1L;

    @GeneratedValue(generator = "JDBC") // 自增的主键映射
    @Id
    @Column(name = "id", insertable = false)
    private Integer id;

    @Column(name = "xingming")
    private String xingming;

    @Column(name = "lianxidianhua")
    private String lianxidianhua;

    @Column(name = "shangbaoneirong")
    private String shangbaoneirong;

    @Column(name = "shangbaoyonghu")
    private String shangbaoyonghu;

    @Column(name = "huifuneirong")
    private String huifuneirong;

    @Column(name = "zhuangtai")
    private String zhuangtai;

    @Column(name = "addtime")
    private String addtime;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getXingming() {
        return xingming;
    }

    public void setXingming(String xingming) {
        this.xingming = xingming;
    }

    public String getLianxidianhua() {
        return lianxidianhua;
    }

    public void setLianxidianhua(String lianxidianhua) {
        this.lianxidianhua = lianxidianhua;
    }

    public String getShangbaoneirong() {
        return shangbaoneirong;
    }

    public void setShangbaoneirong(String shangbaoneirong) {
        this.shangbaoneirong = shangbaoneirong;
    }

    public String getShangbaoyonghu() {
        return shangbaoyonghu;
    }

    public void setShangbaoyonghu(String shangbaoyonghu) {
        this.shangbaoyonghu = shangbaoyonghu;
    }

    public String getHuifuneirong() {
        return huifuneirong;
    }

    public void setHuifuneirong(String huifuneirong) {
        this.huifuneirong = huifuneirong;
    }

    public String getZhuangtai() {
        return zhuangtai;
    }

    public void setZhuangtai(String zhuangtai) {
        this.zhuangtai = zhuangtai;
    }

    public String getAddtime() {
        return addtime;
    }

    public void setAddtime(String addtime) {
        this.addtime = addtime;
    }
}
