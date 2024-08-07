package com.spring.controller;

import com.jntoo.db.*;
import com.jntoo.db.utils.*;
import com.spring.dao.*;
import com.spring.entity.*;
import com.spring.service.*;
import com.spring.util.*;
import com.spring.util.Info;
import java.util.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import tk.mybatis.mapper.entity.Example;

/**
 * 疫情上报 */
@Controller
public class YiqingshangbaoController extends BaseController {

    @Autowired
    private YiqingshangbaoMapper dao;

    @Autowired
    private YiqingshangbaoService service;

    /**
     *  后台列表页
     *
     */
    @RequestMapping("/yiqingshangbao_list")
    public String list() {
        // 检测是否有登录，没登录则跳转到登录页面
        if (!checkLogin()) {
            return showError("尚未登录", "./login.do");
        }

        String order = Request.get("order", "id"); // 获取前台提交的URL参数 order  如果没有则设置为id
        String sort = Request.get("sort", "desc"); // 获取前台提交的URL参数 sort  如果没有则设置为desc
        int pagesize = Request.getInt("pagesize", 12); // 获取前台一页多少行数据
        Example example = new Example(Yiqingshangbao.class); //  创建一个扩展搜索类
        Example.Criteria criteria = example.createCriteria(); // 创建一个扩展搜索条件类
        String where = " 1=1 "; // 创建初始条件为：1=1
        where += getWhere(); // 从方法中获取url 上的参数，并写成 sql条件语句
        criteria.andCondition(where); // 将条件写进上面的扩展条件类中
        if (sort.equals("desc")) { // 判断前台提交的sort 参数是否等于  desc倒序  是则使用倒序，否则使用正序
            example.orderBy(order).desc(); // 把sql 语句设置成倒序
        } else {
            example.orderBy(order).asc(); // 把 sql 设置成正序
        }
        int page = request.getParameter("page") == null ? 1 : Integer.valueOf(request.getParameter("page")); // 获取前台提交的URL参数 page  如果没有则设置为1
        page = Math.max(1, page); // 取两个数的最大值，防止page 小于1
        List<Yiqingshangbao> list = service.selectPageExample(example, page, pagesize); // 获取当前页的行数

        // 将列表写给界面使用
        assign("totalCount", request.getAttribute("totalCount"));
        assign("list", list);
        assign("orderby", order); // 把当前排序结果写进前台
        assign("sort", sort); // 把当前排序结果写进前台
        return json(); // 将数据写给前端
    }

    public String getWhere() {
        _var = new LinkedHashMap(); // 重置数据
        String where = " ";
        // 以下也是一样的操作，判断是否符合条件，符合则写入sql 语句
        return where;
    }

    /**
     * 上报用户列表
     */
    @RequestMapping("/yiqingshangbao_list_shangbaoyonghu")
    public String listshangbaoyonghu() {
        // 检测是否有登录，没登录则跳转到登录页面
        if (!checkLogin()) {
            return showError("尚未登录", "./login.do");
        }
        String order = Request.get("order", "id"); // 获取前台提交的URL参数 order  如果没有则设置为id
        String sort = Request.get("sort", "desc"); // 获取前台提交的URL参数 sort  如果没有则设置为desc
        int pagesize = Request.getInt("pagesize", 12); // 获取前台一页多少行数据

        Example example = new Example(Yiqingshangbao.class); //  创建一个扩展搜索类
        Example.Criteria criteria = example.createCriteria(); // 创建一个扩展搜索条件类
        // 初始化一个条件，条件为：上报用户=当前登录用户
        String where = " shangbaoyonghu='" + request.getSession().getAttribute("username") + "' ";
        where += getWhere();

        criteria.andCondition(where); // 将条件写入
        if (sort.equals("desc")) { // 注释同list
            example.orderBy(order).desc(); // 注释同list
        } else {
            example.orderBy(order).asc(); // 注释同list
        }

        int page = request.getParameter("page") == null ? 1 : Integer.valueOf(request.getParameter("page")); // 注释同list
        page = Math.max(1, page); // 注释同list

        List<Yiqingshangbao> list = service.selectPageExample(example, page, pagesize);
        assign("totalCount", request.getAttribute("totalCount"));
        assign("list", list);
        assign("orderby", order);
        assign("sort", sort);
        return json(); // 将数据写给前端
    }

    @RequestMapping("/yiqingshangbao_add")
    public String add() {
        _var = new LinkedHashMap(); // 重置数据

        return json(); // 将数据写给前端
    }

    @RequestMapping("/yiqingshangbao_updt")
    public String updt() {
        _var = new LinkedHashMap(); // 重置数据
        int id = Request.getInt("id");
        // 获取行数据，并赋值给前台jsp页面
        Yiqingshangbao mmm = service.find(id);
        assign("mmm", mmm);
        assign("updtself", 0);

        return json(); // 将数据写给前端
    }

    /**
     * 添加内容
     * @return
     */
    @RequestMapping("/yiqingshangbaoinsert")
    public String insert() {
        _var = new LinkedHashMap(); // 重置数据
        String tmp = "";
        Yiqingshangbao post = new Yiqingshangbao(); // 创建实体类
        // 设置前台提交上来的数据到实体类中
        post.setXingming(Request.get("xingming"));

        post.setLianxidianhua(Request.get("lianxidianhua"));

        post.setShangbaoneirong(Request.get("shangbaoneirong"));

        post.setShangbaoyonghu(Request.get("shangbaoyonghu"));

        post.setHuifuneirong(Request.get("huifuneirong"));

        post.setZhuangtai(Request.get("zhuangtai"));

        post.setAddtime(Info.getDateStr());

        service.insert(post); // 插入数据
        int charuid = post.getId().intValue();

        if (isAjax()) {
            return jsonResult(post);
        }
        return showSuccess("保存成功", Request.get("referer").equals("") ? request.getHeader("referer") : Request.get("referer"));
    }

    /**
     * 更新内容
     * @return
     */
    @RequestMapping("/yiqingshangbaoupdate")
    public String update() {
        _var = new LinkedHashMap(); // 重置数据
        // 创建实体类
        Yiqingshangbao post = new Yiqingshangbao();
        // 将前台表单数据填充到实体类
        if (!Request.get("xingming").equals("")) post.setXingming(Request.get("xingming"));
        if (!Request.get("lianxidianhua").equals("")) post.setLianxidianhua(Request.get("lianxidianhua"));
        if (!Request.get("shangbaoneirong").equals("")) post.setShangbaoneirong(Request.get("shangbaoneirong"));
        if (!Request.get("shangbaoyonghu").equals("")) post.setShangbaoyonghu(Request.get("shangbaoyonghu"));
        if (!Request.get("huifuneirong").equals("")) post.setHuifuneirong(Request.get("huifuneirong"));
        if (!Request.get("zhuangtai").equals("")) post.setZhuangtai(Request.get("zhuangtai"));
        if (!Request.get("addtime").equals("")) post.setAddtime(Request.get("addtime"));

        post.setId(Request.getInt("id"));
        service.update(post); // 更新数据
        int charuid = post.getId().intValue();
        Query.execute("update yiqingshangbao set zhuangtai='已回复' where id='" + charuid + "'");

        if (isAjax()) {
            return jsonResult(post);
        }

        return showSuccess("保存成功", Request.get("referer")); // 弹出保存成功，并跳转到前台提交的 referer 页面
    }

    /**
     *  后台详情
     */
    @RequestMapping("/yiqingshangbao_detail")
    public String detail() {
        _var = new LinkedHashMap(); // 重置数据
        int id = Request.getInt("id");
        Yiqingshangbao map = service.find(id); // 根据前台url 参数中的id获取行数据
        assign("map", map); // 把数据写到前台
        return json(); // 将数据写给前端
    }

    /**
     *  删除
     */
    @RequestMapping("/yiqingshangbao_delete")
    public String delete() {
        _var = new LinkedHashMap(); // 重置数据
        if (!checkLogin()) {
            return showError("尚未登录");
        }
        int id = Request.getInt("id"); // 根据id 删除某行数据
        Map map = Query.make("yiqingshangbao").find(id);

        service.delete(id); // 根据id 删除某行数据
        return showSuccess("删除成功", request.getHeader("referer")); //弹出删除成功，并跳回上一页
    }
}
