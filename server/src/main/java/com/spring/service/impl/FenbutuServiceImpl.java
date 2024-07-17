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

@Service("FenbutuService")
public class FenbutuServiceImpl implements FenbutuService {

    @Resource
    private FenbutuMapper dao;

    /**
     * 获取所有数据
     * @return
     */
    public List<Fenbutu> select() {
        return dao.select(null);
    }

    /**
     * 根据Fenbutu类搜索数据
     * @param y
     * @return
     */
    public List<Fenbutu> select(Fenbutu y) {
        return dao.select(y);
    }

    /**
     * 根据主键获取分布图一行数据
     * @param id
     * @return
     */
    public Fenbutu find(Object id) {
        return dao.selectByPrimaryKey(id);
    }

    /**
     * 根据分布图获取分布图类条件查询一行数据
     * @param id
     * @return
     */
    public Fenbutu findEntity(Fenbutu id) {
        return dao.selectOne(id);
    }

    /**
     * 搜索分页
     * @param obj
     * @param page
     * @param pageSize
     * @return
     */
    public List<Fenbutu> selectPage(Fenbutu obj, int page, int pageSize) {
        PageHelper.startPage(page, pageSize, true);
        List<Fenbutu> list = select(obj);
        PageInfo<Fenbutu> pageInfo = new PageInfo(list);
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
    public List<Fenbutu> selectPageExample(Example obj, int page, int pageSize) {
        PageHelper.startPage(page, pageSize, true);
        List<Fenbutu> list = dao.selectByExample(obj);
        PageInfo<Fenbutu> pageInfo = new PageInfo(list);
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
     * 插入分布图     * @param y
     * @return
     */
    public int insert(Fenbutu y) {
        return dao.insertSelective(y);
    }

    /**
     * 更新分布图     * @param y
     * @return
     */
    public int update(Fenbutu y) {
        return dao.updateByPrimaryKeySelective(y);
    }
}
