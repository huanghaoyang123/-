package com.spring.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.spring.dao.*;
import com.spring.entity.*;
import com.spring.service.*;
import com.spring.util.*;
import java.util.*;
import java.util.*;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import tk.mybatis.mapper.entity.Example;

@Service("ShoucangService")
public class ShoucangServiceImpl implements ShoucangService {

    @Resource
    private ShoucangMapper dao;

    /**
     * 获取所有数据
     * @return
     */
    public List<Shoucang> select() {
        return dao.select(null);
    }

    /**
     * 根据Shoucang类搜索数据
     * @param y
     * @return
     */
    public List<Shoucang> select(Shoucang y) {
        return dao.select(y);
    }

    /**
     * 根据主键获取收藏一行数据
     * @param id
     * @return
     */
    public Shoucang find(Object id) {
        return dao.selectByPrimaryKey(id);
    }

    /**
     * 根据收藏获取收藏类条件查询一行数据
     * @param id
     * @return
     */
    public Shoucang findEntity(Shoucang id) {
        return dao.selectOne(id);
    }

    /**
     * 搜索分页
     * @param obj
     * @param page
     * @param pageSize
     * @return
     */
    public List<Shoucang> selectPage(Shoucang obj, int page, int pageSize) {
        PageHelper.startPage(page, pageSize, true);
        List<Shoucang> list = select(obj);
        PageInfo<Shoucang> pageInfo = new PageInfo(list);
        PageInfoUtil pageInfoUtil = new PageInfoUtil(page);
        pageInfoUtil.setPageInfo(Request.getRequest(), pageInfo.getTotal(), pageSize);
        return list;
    }

    /**
     * 根据Example搜索分页
     * @param obj
     * @param page
     * @param pageSize
     * @return
     */
    public List<Shoucang> selectPageExample(Example obj, int page, int pageSize) {
        PageHelper.startPage(page, pageSize, true);
        List<Shoucang> list = dao.selectByExample(obj);
        PageInfo<Shoucang> pageInfo = new PageInfo(list);
        PageInfoUtil pageInfoUtil = new PageInfoUtil(page);
        pageInfoUtil.setPageInfo(Request.getRequest(), pageInfo.getTotal(), pageSize);
        return list;
    }

    /**
     * 根据主键删除一行数据
     * @param id
     * @return
     */
    public int delete(Object id) {
        return dao.deleteByPrimaryKey(id);
    }

    /**
     * 插入收藏     * @param y
     * @return
     */
    public int insert(Shoucang y) {
        return dao.insertSelective(y);
    }

    /**
     * 更新收藏     * @param y
     * @return
     */
    public int update(Shoucang y) {
        return dao.updateByPrimaryKeySelective(y);
    }
}
