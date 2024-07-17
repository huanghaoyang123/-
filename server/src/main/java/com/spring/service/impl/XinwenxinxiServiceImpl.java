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

@Service("XinwenxinxiService")
public class XinwenxinxiServiceImpl implements XinwenxinxiService {

    @Resource
    private XinwenxinxiMapper dao;

    /**
     * 获取所有数据
     * @return
     */
    public List<Xinwenxinxi> select() {
        return dao.select(null);
    }

    /**
     * 根据Xinwenxinxi类搜索数据
     * @param y
     * @return
     */
    public List<Xinwenxinxi> select(Xinwenxinxi y) {
        return dao.select(y);
    }

    /**
     * 根据主键获取新闻信息一行数据
     * @param id
     * @return
     */
    public Xinwenxinxi find(Object id) {
        return dao.selectByPrimaryKey(id);
    }

    /**
     * 根据新闻信息获取新闻信息类条件查询一行数据
     * @param id
     * @return
     */
    public Xinwenxinxi findEntity(Xinwenxinxi id) {
        return dao.selectOne(id);
    }

    /**
     * 搜索分页
     * @param obj
     * @param page
     * @param pageSize
     * @return
     */
    public List<Xinwenxinxi> selectPage(Xinwenxinxi obj, int page, int pageSize) {
        PageHelper.startPage(page, pageSize, true);
        List<Xinwenxinxi> list = select(obj);
        PageInfo<Xinwenxinxi> pageInfo = new PageInfo(list);
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
    public List<Xinwenxinxi> selectPageExample(Example obj, int page, int pageSize) {
        PageHelper.startPage(page, pageSize, true);
        List<Xinwenxinxi> list = dao.selectByExample(obj);
        PageInfo<Xinwenxinxi> pageInfo = new PageInfo(list);
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
     * 插入新闻信息     * @param y
     * @return
     */
    public int insert(Xinwenxinxi y) {
        return dao.insertSelective(y);
    }

    /**
     * 更新新闻信息     * @param y
     * @return
     */
    public int update(Xinwenxinxi y) {
        return dao.updateByPrimaryKeySelective(y);
    }
}
