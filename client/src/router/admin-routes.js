import store from "@/store";

export default [
    {
        path: "admins",
        name: "AdminadminsList",
        component: () => import("@/views/admins/list"),
        meta: { title: "管理员列表", authLogin: true },
    },
    {
        path: "adminsadd",
        name: "AdminadminsAdd",
        component: () => import("@/views/admins/add"),
        meta: { title: "添加管理员", authLogin: true },
    },
    {
        path: "adminsupdt",
        name: "AdminadminsUpdt",
        props: (route) => ({ id: route.query.id }),
        component: () => import("@/views/admins/updt"),
        meta: { title: "编辑管理员", authLogin: true },
    },
    {
        path: "adminsupdtself",
        name: "AdminadminsUpdtSelf",
        props: (route) => ({ id: store.state.user.session.id }),
        component: () => import("@/views/admins/updt"),
        meta: { title: "编辑管理员", authLogin: true },
    },
    {
        path: "yonghu",
        name: "AdminyonghuList",
        component: () => import("@/views/yonghu/list"),
        meta: { title: "用户列表", authLogin: true },
    },
    {
        path: "yonghuadd",
        name: "AdminyonghuAdd",
        component: () => import("@/views/yonghu/add"),
        meta: { title: "添加用户", authLogin: true },
    },
    {
        path: "yonghuupdt",
        name: "AdminyonghuUpdt",
        props: (route) => ({ id: route.query.id }),
        component: () => import("@/views/yonghu/updt"),
        meta: { title: "编辑用户", authLogin: true },
    },
    {
        path: "yonghuupdtself",
        name: "AdminyonghuUpdtSelf",
        props: (route) => ({ id: store.state.user.session.id }),
        component: () => import("@/views/yonghu/updt"),
        meta: { title: "编辑用户", authLogin: true },
    },
    {
        path: "yonghudetail",
        props: (route) => ({ id: route.query.id }),
        name: "AdminyonghuDetail",
        component: () => import("@/views/yonghu/detail"),
        meta: { title: "用户详情", authLogin: true },
    },
    {
        path: "xinwenfenlei",
        name: "AdminxinwenfenleiList",
        component: () => import("@/views/xinwenfenlei/list"),
        meta: { title: "新闻分类列表", authLogin: true },
    },
    {
        path: "xinwenfenleiadd",
        name: "AdminxinwenfenleiAdd",
        component: () => import("@/views/xinwenfenlei/add"),
        meta: { title: "添加新闻分类", authLogin: true },
    },
    {
        path: "xinwenfenleiupdt",
        name: "AdminxinwenfenleiUpdt",
        props: (route) => ({ id: route.query.id }),
        component: () => import("@/views/xinwenfenlei/updt"),
        meta: { title: "编辑新闻分类", authLogin: true },
    },
    {
        path: "xinwenxinxi",
        name: "AdminxinwenxinxiList",
        component: () => import("@/views/xinwenxinxi/list"),
        meta: { title: "新闻信息列表", authLogin: true },
    },
    {
        path: "xinwenxinxiadd",
        name: "AdminxinwenxinxiAdd",
        component: () => import("@/views/xinwenxinxi/add"),
        meta: { title: "添加新闻信息", authLogin: true },
    },
    {
        path: "xinwenxinxiupdt",
        name: "AdminxinwenxinxiUpdt",
        props: (route) => ({ id: route.query.id }),
        component: () => import("@/views/xinwenxinxi/updt"),
        meta: { title: "编辑新闻信息", authLogin: true },
    },
    {
        path: "xinwenxinxidetail",
        props: (route) => ({ id: route.query.id }),
        name: "AdminxinwenxinxiDetail",
        component: () => import("@/views/xinwenxinxi/detail"),
        meta: { title: "新闻信息详情", authLogin: true },
    },
    {
        path: "youqinglianjie",
        name: "AdminyouqinglianjieList",
        component: () => import("@/views/youqinglianjie/list"),
        meta: { title: "友情链接列表", authLogin: true },
    },
    {
        path: "youqinglianjieadd",
        name: "AdminyouqinglianjieAdd",
        component: () => import("@/views/youqinglianjie/add"),
        meta: { title: "添加友情链接", authLogin: true },
    },
    {
        path: "youqinglianjieupdt",
        name: "AdminyouqinglianjieUpdt",
        props: (route) => ({ id: route.query.id }),
        component: () => import("@/views/youqinglianjie/updt"),
        meta: { title: "编辑友情链接", authLogin: true },
    },
    {
        path: "yiqingshangbao",
        name: "AdminyiqingshangbaoList",
        component: () => import("@/views/yiqingshangbao/list"),
        meta: { title: "疫情上报列表", authLogin: true },
    },
    {
        path: "yiqingshangbao_shangbaoyonghu",
        name: "AdminyiqingshangbaoListshangbaoyonghu",
        component: () => import("@/views/yiqingshangbao/list-shangbaoyonghu"),
        meta: { title: "疫情上报列表", authLogin: true },
    },
    {
        path: "yiqingshangbaoadd",
        name: "AdminyiqingshangbaoAdd",
        component: () => import("@/views/yiqingshangbao/add"),
        meta: { title: "添加疫情上报", authLogin: true },
    },
    {
        path: "yiqingshangbaoupdt",
        name: "AdminyiqingshangbaoUpdt",
        props: (route) => ({ id: route.query.id }),
        component: () => import("@/views/yiqingshangbao/updt"),
        meta: { title: "编辑疫情上报", authLogin: true },
    },
    {
        path: "yiqingshangbaodetail",
        props: (route) => ({ id: route.query.id }),
        name: "AdminyiqingshangbaoDetail",
        component: () => import("@/views/yiqingshangbao/detail"),
        meta: { title: "疫情上报详情", authLogin: true },
    },
    {
        path: "lunbotu",
        name: "AdminlunbotuList",
        component: () => import("@/views/lunbotu/list"),
        meta: { title: "轮播图列表", authLogin: true },
    },
    {
        path: "lunbotuadd",
        name: "AdminlunbotuAdd",
        component: () => import("@/views/lunbotu/add"),
        meta: { title: "添加轮播图", authLogin: true },
    },
    {
        path: "lunbotuupdt",
        name: "AdminlunbotuUpdt",
        props: (route) => ({ id: route.query.id }),
        component: () => import("@/views/lunbotu/updt"),
        meta: { title: "编辑轮播图", authLogin: true },
    },
    {
        path: "shoucang",
        name: "AdminshoucangList",
        component: () => import("@/views/shoucang/list"),
        meta: { title: "收藏列表", authLogin: true },
    },
    {
        path: "shoucang_username",
        name: "AdminshoucangListusername",
        component: () => import("@/views/shoucang/list-username"),
        meta: { title: "收藏列表", authLogin: true },
    },
    {
        path: "pinglun",
        name: "AdminpinglunList",
        component: () => import("@/views/pinglun/list"),
        meta: { title: "评论列表", authLogin: true },
    },
    {
        path: "pinglun_pinglunren",
        name: "AdminpinglunListpinglunren",
        component: () => import("@/views/pinglun/list-pinglunren"),
        meta: { title: "评论列表", authLogin: true },
    },
    {
        path: "pinglunadd",
        name: "AdminpinglunAdd",
        component: () => import("@/views/pinglun/add"),
        meta: { title: "添加评论", authLogin: true },
    },
    {
        path: "pinglunupdt",
        name: "AdminpinglunUpdt",
        props: (route) => ({ id: route.query.id }),
        component: () => import("@/views/pinglun/updt"),
        meta: { title: "编辑评论", authLogin: true },
    },
    {
        path: "pinglunhuifu",
        name: "AdminpinglunhuifuList",
        component: () => import("@/views/pinglunhuifu/list"),
        meta: { title: "评论回复列表", authLogin: true },
    },
    {
        path: "pinglunhuifu_pinglunren",
        name: "AdminpinglunhuifuListpinglunren",
        component: () => import("@/views/pinglunhuifu/list-pinglunren"),
        meta: { title: "评论回复列表", authLogin: true },
    },
    {
        path: "pinglunhuifu_huifuren",
        name: "AdminpinglunhuifuListhuifuren",
        component: () => import("@/views/pinglunhuifu/list-huifuren"),
        meta: { title: "评论回复列表", authLogin: true },
    },
    {
        path: "pinglunhuifuadd",
        name: "AdminpinglunhuifuAdd",
        component: () => import("@/views/pinglunhuifu/add"),
        meta: { title: "添加评论回复", authLogin: true },
    },
    {
        path: "pinglunhuifuupdt",
        name: "AdminpinglunhuifuUpdt",
        props: (route) => ({ id: route.query.id }),
        component: () => import("@/views/pinglunhuifu/updt"),
        meta: { title: "编辑评论回复", authLogin: true },
    },
    {
        path: "fenbutu",
        name: "AdminfenbutuList",
        component: () => import("@/views/fenbutu/list"),
        meta: { title: "分布图列表", authLogin: true },
    },
    {
        path: "fenbutuadd",
        name: "AdminfenbutuAdd",
        component: () => import("@/views/fenbutu/add"),
        meta: { title: "添加分布图", authLogin: true },
    },
    {
        path: "fenbutuupdt",
        name: "AdminfenbutuUpdt",
        props: (route) => ({ id: route.query.id }),
        component: () => import("@/views/fenbutu/updt"),
        meta: { title: "编辑分布图", authLogin: true },
    },
    {
        path: "fenbutudetail",
        props: (route) => ({ id: route.query.id }),
        name: "AdminfenbutuDetail",
        component: () => import("@/views/fenbutu/detail"),
        meta: { title: "分布图详情", authLogin: true },
    },
];
