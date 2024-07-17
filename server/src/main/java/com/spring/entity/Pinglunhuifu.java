package com.spring.entity;

import com.spring.util.*;
import java.io.Serializable;
import java.util.Date;
import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Table(name = "pinglunhuifu")
public class Pinglunhuifu implements Serializable {

    private static final long serialVersionUID = 1L;

    @GeneratedValue(generator = "JDBC") // 自增的主键映射
    @Id
    @Column(name = "id", insertable = false)
    private Integer id;

    @Column(name = "pinglunid")
    private Integer pinglunid;

    @Column(name = "biao")
    private String biao;

    @Column(name = "biaoid")
    private Integer biaoid;

    @Column(name = "biaoti")
    private String biaoti;

    @Column(name = "pinglunneirong")
    private String pinglunneirong;

    @Column(name = "pinglunren")
    private String pinglunren;

    @Column(name = "huifuneirong")
    private String huifuneirong;

    @Column(name = "huifuren")
    private String huifuren;

    @Column(name = "addtime")
    private String addtime;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getPinglunid() {
        return pinglunid;
    }

    public void setPinglunid(Integer pinglunid) {
        this.pinglunid = pinglunid;
    }

    public String getBiao() {
        return biao;
    }

    public void setBiao(String biao) {
        this.biao = biao;
    }

    public Integer getBiaoid() {
        return biaoid;
    }

    public void setBiaoid(Integer biaoid) {
        this.biaoid = biaoid;
    }

    public String getBiaoti() {
        return biaoti;
    }

    public void setBiaoti(String biaoti) {
        this.biaoti = biaoti;
    }

    public String getPinglunneirong() {
        return pinglunneirong;
    }

    public void setPinglunneirong(String pinglunneirong) {
        this.pinglunneirong = pinglunneirong;
    }

    public String getPinglunren() {
        return pinglunren;
    }

    public void setPinglunren(String pinglunren) {
        this.pinglunren = pinglunren;
    }

    public String getHuifuneirong() {
        return huifuneirong;
    }

    public void setHuifuneirong(String huifuneirong) {
        this.huifuneirong = huifuneirong;
    }

    public String getHuifuren() {
        return huifuren;
    }

    public void setHuifuren(String huifuren) {
        this.huifuren = huifuren;
    }

    public String getAddtime() {
        return addtime;
    }

    public void setAddtime(String addtime) {
        this.addtime = addtime;
    }
}
