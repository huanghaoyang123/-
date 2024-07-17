export default [
    {
        path: "yonghuadd",
        name: "IndexyonghuAdd",
        component: () => import("@/views/yonghu/webadd"),
        meta: { title: "用户添加" },
    },
    {
        path: "xinwenxinxi",
        name: "IndexxinwenxinxiList",
        component: () => import("@/views/xinwenxinxi/index"),
        meta: { title: "新闻信息列表" },
    },
    {
        path: "xinwenxinxidetail",
        name: "IndexxinwenxinxiDetail",
        props: (route) => ({ id: route.query.id }),
        component: () => import("@/views/xinwenxinxi/webdetail"),
        meta: { title: "新闻信息详情" },
    },
    {
        path: "yiqingshangbaoadd",
        name: "IndexyiqingshangbaoAdd",
        component: () => import("@/views/yiqingshangbao/webadd"),
        meta: { title: "疫情上报添加", authLogin: true, msg: true },
    },
    {
        path: "shoucangadd",
        name: "IndexshoucangAdd",
        component: () => import("@/views/shoucang/webadd"),
        meta: { title: "收藏添加", authLogin: true, msg: true },
    },
    {
        path: "pinglunadd",
        name: "IndexpinglunAdd",
        component: () => import("@/views/pinglun/webadd"),
        meta: { title: "评论添加", authLogin: true, msg: true },
    },
    {
        path: "pinglunhuifuadd",
        name: "IndexpinglunhuifuAdd",
        component: () => import("@/views/pinglunhuifu/webadd"),
        meta: { title: "评论回复添加", authLogin: true, msg: true },
    },
    {
        path: "fenbutu",
        name: "IndexfenbutuList",
        component: () => import("@/views/fenbutu/index"),
        meta: { title: "分布图列表" },
    },
];
