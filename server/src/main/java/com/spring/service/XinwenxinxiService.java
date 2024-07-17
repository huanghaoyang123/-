package com.spring.service;

import com.spring.entity.Xinwenxinxi;
import java.util.*;
import tk.mybatis.mapper.entity.Example;

public interface XinwenxinxiService {
    /**
     * 获取所有数据
     * @return
     */
    public List<Xinwenxinxi> select();

    /**
     * 根据Xinwenxinxi类搜索数据
     * @param y
     * @return
     */
    public List<Xinwenxinxi> select(Xinwenxinxi y);

    /**
     * 根据主键获取新闻信息一行数据
     * @param id
     * @return
     */
    public Xinwenxinxi find(Object id);

    /**
     * 根据新闻信息获取新闻信息类条件查询一行数据
     * @param id
     * @return
     */
    public Xinwenxinxi findEntity(Xinwenxinxi id);

    /**
     * 搜索分页
     * @param obj
     * @param page
     * @param pageSize
     * @return
     */
    public List<Xinwenxinxi> selectPage(Xinwenxinxi obj, int page, int pageSize);

    /**
     * 根据Example搜索分页
     * @param obj
     * @param page
     * @param pageSize
     * @return
     */
    public List<Xinwenxinxi> selectPageExample(Example obj, int page, int pageSize);

    /**
     * 根据主键删除一行数据
     * @param id
     * @return
     */
    public int delete(Object id);

    /**
     * 插入新闻信息     * @param y
     * @return
     */
    public int insert(Xinwenxinxi y);

    /**
     * 更新新闻信息     * @param y
     * @return
     */
    public int update(Xinwenxinxi y);
}
