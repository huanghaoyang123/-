package com.spring.entity;

import com.spring.util.*;
import java.io.Serializable;
import java.util.Date;
import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Table(name = "fenbutu")
public class Fenbutu implements Serializable {

    private static final long serialVersionUID = 1L;

    @GeneratedValue(generator = "JDBC") // 自增的主键映射
    @Id
    @Column(name = "id", insertable = false)
    private Integer id;

    @Column(name = "diqu")
    private String diqu;

    @Column(name = "quezhenrenshu")
    private Integer quezhenrenshu;

    @Column(name = "leijiquezhen")
    private Integer leijiquezhen;

    @Column(name = "leijisiwang")
    private Integer leijisiwang;

    @Column(name = "leijizhiyu")
    private Integer leijizhiyu;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getDiqu() {
        return diqu;
    }

    public void setDiqu(String diqu) {
        this.diqu = diqu;
    }

    public Integer getQuezhenrenshu() {
        return quezhenrenshu;
    }

    public void setQuezhenrenshu(Integer quezhenrenshu) {
        this.quezhenrenshu = quezhenrenshu;
    }

    public Integer getLeijiquezhen() {
        return leijiquezhen;
    }

    public void setLeijiquezhen(Integer leijiquezhen) {
        this.leijiquezhen = leijiquezhen;
    }

    public Integer getLeijisiwang() {
        return leijisiwang;
    }

    public void setLeijisiwang(Integer leijisiwang) {
        this.leijisiwang = leijisiwang;
    }

    public Integer getLeijizhiyu() {
        return leijizhiyu;
    }

    public void setLeijizhiyu(Integer leijizhiyu) {
        this.leijizhiyu = leijizhiyu;
    }
}
