package com.spring.service;

import com.spring.entity.Xinwenfenlei;
import java.util.*;
import tk.mybatis.mapper.entity.Example;

public interface XinwenfenleiService {
    /**
     * 获取所有数据
     * @return
     */
    public List<Xinwenfenlei> select();

    /**
     * 根据Xinwenfenlei类搜索数据
     * @param y
     * @return
     */
    public List<Xinwenfenlei> select(Xinwenfenlei y);

    /**
     * 根据主键获取新闻分类一行数据
     * @param id
     * @return
     */
    public Xinwenfenlei find(Object id);

    /**
     * 根据新闻分类获取新闻分类类条件查询一行数据
     * @param id
     * @return
     */
    public Xinwenfenlei findEntity(Xinwenfenlei id);

    /**
     * 搜索分页
     * @param obj
     * @param page
     * @param pageSize
     * @return
     */
    public List<Xinwenfenlei> selectPage(Xinwenfenlei obj, int page, int pageSize);

    /**
     * 根据Example搜索分页
     * @param obj
     * @param page
     * @param pageSize
     * @return
     */
    public List<Xinwenfenlei> selectPageExample(Example obj, int page, int pageSize);

    /**
     * 根据主键删除一行数据
     * @param id
     * @return
     */
    public int delete(Object id);

    /**
     * 插入新闻分类     * @param y
     * @return
     */
    public int insert(Xinwenfenlei y);

    /**
     * 更新新闻分类     * @param y
     * @return
     */
    public int update(Xinwenfenlei y);
}
