package com.spring.entity;

import com.spring.util.*;
import java.io.Serializable;
import java.util.Date;
import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Table(name = "xinwenfenlei")
public class Xinwenfenlei implements Serializable {

    private static final long serialVersionUID = 1L;

    @GeneratedValue(generator = "JDBC") // 自增的主键映射
    @Id
    @Column(name = "id", insertable = false)
    private Integer id;

    @Column(name = "fenleimingcheng")
    private String fenleimingcheng;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getFenleimingcheng() {
        return fenleimingcheng;
    }

    public void setFenleimingcheng(String fenleimingcheng) {
        this.fenleimingcheng = fenleimingcheng;
    }
}
