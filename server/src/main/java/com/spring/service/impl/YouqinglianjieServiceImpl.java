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

@Service("YouqinglianjieService")
public class YouqinglianjieServiceImpl implements YouqinglianjieService {

    @Resource
    private YouqinglianjieMapper dao;

    /**
     * 获取所有数据
     * @return
     */
    public List<Youqinglianjie> select() {
        return dao.select(null);
    }

    /**
     * 根据Youqinglianjie类搜索数据
     * @param y
     * @return
     */
    public List<Youqinglianjie> select(Youqinglianjie y) {
        return dao.select(y);
    }

    /**
     * 根据主键获取友情链接一行数据
     * @param id
     * @return
     */
    public Youqinglianjie find(Object id) {
        return dao.selectByPrimaryKey(id);
    }

    /**
     * 根据友情链接获取友情链接类条件查询一行数据
     * @param id
     * @return
     */
    public Youqinglianjie findEntity(Youqinglianjie id) {
        return dao.selectOne(id);
    }

    /**
     * 搜索分页
     * @param obj
     * @param page
     * @param pageSize
     * @return
     */
    public List<Youqinglianjie> selectPage(Youqinglianjie obj, int page, int pageSize) {
        PageHelper.startPage(page, pageSize, true);
        List<Youqinglianjie> list = select(obj);
        PageInfo<Youqinglianjie> pageInfo = new PageInfo(list);
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
    public List<Youqinglianjie> selectPageExample(Example obj, int page, int pageSize) {
        PageHelper.startPage(page, pageSize, true);
        List<Youqinglianjie> list = dao.selectByExample(obj);
        PageInfo<Youqinglianjie> pageInfo = new PageInfo(list);
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
     * 插入友情链接     * @param y
     * @return
     */
    public int insert(Youqinglianjie y) {
        return dao.insertSelective(y);
    }

    /**
     * 更新友情链接     * @param y
     * @return
     */
    public int update(Youqinglianjie y) {
        return dao.updateByPrimaryKeySelective(y);
    }
}
