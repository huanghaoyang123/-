package com.spring.service;

import com.spring.entity.Pinglunhuifu;
import java.util.*;
import tk.mybatis.mapper.entity.Example;

public interface PinglunhuifuService {
    /**
     * 获取所有数据
     * @return
     */
    public List<Pinglunhuifu> select();

    /**
     * 根据Pinglunhuifu类搜索数据
     * @param y
     * @return
     */
    public List<Pinglunhuifu> select(Pinglunhuifu y);

    /**
     * 根据主键获取评论回复一行数据
     * @param id
     * @return
     */
    public Pinglunhuifu find(Object id);

    /**
     * 根据评论回复获取评论回复类条件查询一行数据
     * @param id
     * @return
     */
    public Pinglunhuifu findEntity(Pinglunhuifu id);

    /**
     * 搜索分页
     * @param obj
     * @param page
     * @param pageSize
     * @return
     */
    public List<Pinglunhuifu> selectPage(Pinglunhuifu obj, int page, int pageSize);

    /**
     * 根据Example搜索分页
     * @param obj
     * @param page
     * @param pageSize
     * @return
     */
    public List<Pinglunhuifu> selectPageExample(Example obj, int page, int pageSize);

    /**
     * 根据主键删除一行数据
     * @param id
     * @return
     */
    public int delete(Object id);

    /**
     * 插入评论回复     * @param y
     * @return
     */
    public int insert(Pinglunhuifu y);

    /**
     * 更新评论回复     * @param y
     * @return
     */
    public int update(Pinglunhuifu y);
}
