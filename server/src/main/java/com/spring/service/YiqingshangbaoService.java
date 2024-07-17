package com.spring.service;

import com.spring.entity.Yiqingshangbao;
import java.util.*;
import tk.mybatis.mapper.entity.Example;

public interface YiqingshangbaoService {
    /**
     * 获取所有数据
     * @return
     */
    public List<Yiqingshangbao> select();

    /**
     * 根据Yiqingshangbao类搜索数据
     * @param y
     * @return
     */
    public List<Yiqingshangbao> select(Yiqingshangbao y);

    /**
     * 根据主键获取疫情上报一行数据
     * @param id
     * @return
     */
    public Yiqingshangbao find(Object id);

    /**
     * 根据疫情上报获取疫情上报类条件查询一行数据
     * @param id
     * @return
     */
    public Yiqingshangbao findEntity(Yiqingshangbao id);

    /**
     * 搜索分页
     * @param obj
     * @param page
     * @param pageSize
     * @return
     */
    public List<Yiqingshangbao> selectPage(Yiqingshangbao obj, int page, int pageSize);

    /**
     * 根据Example搜索分页
     * @param obj
     * @param page
     * @param pageSize
     * @return
     */
    public List<Yiqingshangbao> selectPageExample(Example obj, int page, int pageSize);

    /**
     * 根据主键删除一行数据
     * @param id
     * @return
     */
    public int delete(Object id);

    /**
     * 插入疫情上报     * @param y
     * @return
     */
    public int insert(Yiqingshangbao y);

    /**
     * 更新疫情上报     * @param y
     * @return
     */
    public int update(Yiqingshangbao y);
}
