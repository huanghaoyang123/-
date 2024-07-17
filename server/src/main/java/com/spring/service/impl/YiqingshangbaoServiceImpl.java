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

@Service("YiqingshangbaoService")
public class YiqingshangbaoServiceImpl implements YiqingshangbaoService {

    @Resource
    private YiqingshangbaoMapper dao;

    /**
     * 获取所有数据
     * @return
     */
    public List<Yiqingshangbao> select() {
        return dao.select(null);
    }

    /**
     * 根据Yiqingshangbao类搜索数据
     * @param y
     * @return
     */
    public List<Yiqingshangbao> select(Yiqingshangbao y) {
        return dao.select(y);
    }

    /**
     * 根据主键获取疫情上报一行数据
     * @param id
     * @return
     */
    public Yiqingshangbao find(Object id) {
        return dao.selectByPrimaryKey(id);
    }

    /**
     * 根据疫情上报获取疫情上报类条件查询一行数据
     * @param id
     * @return
     */
    public Yiqingshangbao findEntity(Yiqingshangbao id) {
        return dao.selectOne(id);
    }

    /**
     * 搜索分页
     * @param obj
     * @param page
     * @param pageSize
     * @return
     */
    public List<Yiqingshangbao> selectPage(Yiqingshangbao obj, int page, int pageSize) {
        PageHelper.startPage(page, pageSize, true);
        List<Yiqingshangbao> list = select(obj);
        PageInfo<Yiqingshangbao> pageInfo = new PageInfo(list);
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
    public List<Yiqingshangbao> selectPageExample(Example obj, int page, int pageSize) {
        PageHelper.startPage(page, pageSize, true);
        List<Yiqingshangbao> list = dao.selectByExample(obj);
        PageInfo<Yiqingshangbao> pageInfo = new PageInfo(list);
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
     * 插入疫情上报     * @param y
     * @return
     */
    public int insert(Yiqingshangbao y) {
        return dao.insertSelective(y);
    }

    /**
     * 更新疫情上报     * @param y
     * @return
     */
    public int update(Yiqingshangbao y) {
        return dao.updateByPrimaryKeySelective(y);
    }
}
