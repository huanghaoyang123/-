package com.spring.controller;

import com.alibaba.fastjson.*;
import com.spring.util.*;
import java.util.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 首页控制器
 */
@Controller
public class IndexController extends BaseController {

    // 首页
    @RequestMapping(value = { "/", "index" })
    public String Index() {
        List<Map> bhtList = Query.make("lunbotu").order("id desc").limit(5).select();
        assign("bhtList", bhtList);

        List<Map> xinwenxinxilist1 = Query.make("xinwenxinxi").where("fenlei='2'").limit(4).order("dianjilv desc").select();
        assign("xinwenxinxilist1", xinwenxinxilist1);

        List<Map> xinwenxinxilist2 = Query.make("xinwenxinxi").where("fenlei='4'").limit(4).order("dianjilv desc").select();
        assign("xinwenxinxilist2", xinwenxinxilist2);

        List<Map> xinwenxinxilist3 = Query.make("xinwenxinxi").where("fenlei='1'").limit(4).order("dianjilv desc").select();
        assign("xinwenxinxilist3", xinwenxinxilist3);

        List<Map> xinwenxinxilist4 = Query.make("xinwenxinxi").where("fenlei='3'").limit(4).order("dianjilv desc").select();
        assign("xinwenxinxilist4", xinwenxinxilist4);
        if (isAjax()) {
            return json();
        }
        return "index";
    }
}
