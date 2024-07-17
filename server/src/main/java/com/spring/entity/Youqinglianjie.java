package com.spring.entity;

import com.spring.util.*;
import java.io.Serializable;
import java.util.Date;
import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Table(name = "youqinglianjie")
public class Youqinglianjie implements Serializable {

    private static final long serialVersionUID = 1L;

    @GeneratedValue(generator = "JDBC") // 自增的主键映射
    @Id
    @Column(name = "id", insertable = false)
    private Integer id;

    @Column(name = "wangzhanmingcheng")
    private String wangzhanmingcheng;

    @Column(name = "wangzhi")
    private String wangzhi;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getWangzhanmingcheng() {
        return wangzhanmingcheng;
    }

    public void setWangzhanmingcheng(String wangzhanmingcheng) {
        this.wangzhanmingcheng = wangzhanmingcheng;
    }

    public String getWangzhi() {
        return wangzhi;
    }

    public void setWangzhi(String wangzhi) {
        this.wangzhi = wangzhi;
    }
}
