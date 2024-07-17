package com.spring.service;

import com.spring.entity.Fenbutu;
import java.util.*;
import tk.mybatis.mapper.entity.Example;

public interface FenbutuService {
    /**
     * 获取所有数据
     * @return
     */
    public List<Fenbutu> select();

    /**
     * 根据Fenbutu类搜索数据
     * @param y
     * @return
     */
    public List<Fenbutu> select(Fenbutu y);

    /**
     * 根据主键获取分布图一行数据
     * @param id
     * @return
     */
    public Fenbutu find(Object id);

    /**
     * 根据分布图获取分布图类条件查询一行数据
     * @param id
     * @return
     */
    public Fenbutu findEntity(Fenbutu id);

    /**
     * 搜索分页
     * @param obj
     * @param page
     * @param pageSize
     * @return
     */
    public List<Fenbutu> selectPage(Fenbutu obj, int page, int pageSize);

    /**
     * 根据Example搜索分页
     * @param obj
     * @param page
     * @param pageSize
     * @return
     */
    public List<Fenbutu> selectPageExample(Example obj, int page, int pageSize);

    /**
     * 根据主键删除一行数据
     * @param id
     * @return
     */
    public int delete(Object id);

    /**
     * 插入分布图     * @param y
     * @return
     */
    public int insert(Fenbutu y);

    /**
     * 更新分布图     * @param y
     * @return
     */
    public int update(Fenbutu y);
}
