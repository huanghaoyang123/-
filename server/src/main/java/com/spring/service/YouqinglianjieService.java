package com.spring.service;

import com.spring.entity.Youqinglianjie;
import java.util.*;
import tk.mybatis.mapper.entity.Example;

public interface YouqinglianjieService {
    /**
     * 获取所有数据
     * @return
     */
    public List<Youqinglianjie> select();

    /**
     * 根据Youqinglianjie类搜索数据
     * @param y
     * @return
     */
    public List<Youqinglianjie> select(Youqinglianjie y);

    /**
     * 根据主键获取友情链接一行数据
     * @param id
     * @return
     */
    public Youqinglianjie find(Object id);

    /**
     * 根据友情链接获取友情链接类条件查询一行数据
     * @param id
     * @return
     */
    public Youqinglianjie findEntity(Youqinglianjie id);

    /**
     * 搜索分页
     * @param obj
     * @param page
     * @param pageSize
     * @return
     */
    public List<Youqinglianjie> selectPage(Youqinglianjie obj, int page, int pageSize);

    /**
     * 根据Example搜索分页
     * @param obj
     * @param page
     * @param pageSize
     * @return
     */
    public List<Youqinglianjie> selectPageExample(Example obj, int page, int pageSize);

    /**
     * 根据主键删除一行数据
     * @param id
     * @return
     */
    public int delete(Object id);

    /**
     * 插入友情链接     * @param y
     * @return
     */
    public int insert(Youqinglianjie y);

    /**
     * 更新友情链接     * @param y
     * @return
     */
    public int update(Youqinglianjie y);
}
