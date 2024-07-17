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

@Service("PinglunhuifuService")
public class PinglunhuifuServiceImpl implements PinglunhuifuService {

    @Resource
    private PinglunhuifuMapper dao;

    /**
     * 获取所有数据
     * @return
     */
    public List<Pinglunhuifu> select() {
        return dao.select(null);
    }

    /**
     * 根据Pinglunhuifu类搜索数据
     * @param y
     * @return
     */
    public List<Pinglunhuifu> select(Pinglunhuifu y) {
        return dao.select(y);
    }

    /**
     * 根据主键获取评论回复一行数据
     * @param id
     * @return
     */
    public Pinglunhuifu find(Object id) {
        return dao.selectByPrimaryKey(id);
    }

    /**
     * 根据评论回复获取评论回复类条件查询一行数据
     * @param id
     * @return
     */
    public Pinglunhuifu findEntity(Pinglunhuifu id) {
        return dao.selectOne(id);
    }

    /**
     * 搜索分页
     * @param obj
     * @param page
     * @param pageSize
     * @return
     */
    public List<Pinglunhuifu> selectPage(Pinglunhuifu obj, int page, int pageSize) {
        PageHelper.startPage(page, pageSize, true);
        List<Pinglunhuifu> list = select(obj);
        PageInfo<Pinglunhuifu> pageInfo = new PageInfo(list);
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
    public List<Pinglunhuifu> selectPageExample(Example obj, int page, int pageSize) {
        PageHelper.startPage(page, pageSize, true);
        List<Pinglunhuifu> list = dao.selectByExample(obj);
        PageInfo<Pinglunhuifu> pageInfo = new PageInfo(list);
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
     * 插入评论回复     * @param y
     * @return
     */
    public int insert(Pinglunhuifu y) {
        return dao.insertSelective(y);
    }

    /**
     * 更新评论回复     * @param y
     * @return
     */
    public int update(Pinglunhuifu y) {
        return dao.updateByPrimaryKeySelective(y);
    }
}
