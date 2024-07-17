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

@Service("XinwenfenleiService")
public class XinwenfenleiServiceImpl implements XinwenfenleiService {

    @Resource
    private XinwenfenleiMapper dao;

    /**
     * 获取所有数据
     * @return
     */
    public List<Xinwenfenlei> select() {
        return dao.select(null);
    }

    /**
     * 根据Xinwenfenlei类搜索数据
     * @param y
     * @return
     */
    public List<Xinwenfenlei> select(Xinwenfenlei y) {
        return dao.select(y);
    }

    /**
     * 根据主键获取新闻分类一行数据
     * @param id
     * @return
     */
    public Xinwenfenlei find(Object id) {
        return dao.selectByPrimaryKey(id);
    }

    /**
     * 根据新闻分类获取新闻分类类条件查询一行数据
     * @param id
     * @return
     */
    public Xinwenfenlei findEntity(Xinwenfenlei id) {
        return dao.selectOne(id);
    }

    /**
     * 搜索分页
     * @param obj
     * @param page
     * @param pageSize
     * @return
     */
    public List<Xinwenfenlei> selectPage(Xinwenfenlei obj, int page, int pageSize) {
        PageHelper.startPage(page, pageSize, true);
        List<Xinwenfenlei> list = select(obj);
        PageInfo<Xinwenfenlei> pageInfo = new PageInfo(list);
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
    public List<Xinwenfenlei> selectPageExample(Example obj, int page, int pageSize) {
        PageHelper.startPage(page, pageSize, true);
        List<Xinwenfenlei> list = dao.selectByExample(obj);
        PageInfo<Xinwenfenlei> pageInfo = new PageInfo(list);
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
     * 插入新闻分类     * @param y
     * @return
     */
    public int insert(Xinwenfenlei y) {
        return dao.insertSelective(y);
    }

    /**
     * 更新新闻分类     * @param y
     * @return
     */
    public int update(Xinwenfenlei y) {
        return dao.updateByPrimaryKeySelective(y);
    }
}
