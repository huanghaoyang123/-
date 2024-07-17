package com.spring.service;

import com.spring.entity.Shoucang;
import java.util.*;
import tk.mybatis.mapper.entity.Example;

public interface ShoucangService {
    /**
     * 获取所有数据
     * @return
     */
    public List<Shoucang> select();

    /**
     * 根据Shoucang类搜索数据
     * @param y
     * @return
     */
    public List<Shoucang> select(Shoucang y);

    /**
     * 根据主键获取收藏一行数据
     * @param id
     * @return
     */
    public Shoucang find(Object id);

    /**
     * 根据收藏获取收藏类条件查询一行数据
     * @param id
     * @return
     */
    public Shoucang findEntity(Shoucang id);

    /**
     * 搜索分页
     * @param obj
     * @param page
     * @param pageSize
     * @return
     */
    public List<Shoucang> selectPage(Shoucang obj, int page, int pageSize);

    /**
     * 根据Example搜索分页
     * @param obj
     * @param page
     * @param pageSize
     * @return
     */
    public List<Shoucang> selectPageExample(Example obj, int page, int pageSize);

    /**
     * 根据主键删除一行数据
     * @param id
     * @return
     */
    public int delete(Object id);

    /**
     * 插入收藏     * @param y
     * @return
     */
    public int insert(Shoucang y);

    /**
     * 更新收藏     * @param y
     * @return
     */
    public int update(Shoucang y);
}
