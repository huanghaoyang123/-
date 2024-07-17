export default [
    {
        label: "账号管理",
        to: "",
        children: [
            {
                label: "管理员账号管理",
                to: "/admin/admins",
            },
            {
                label: "管理员账号添加",
                to: "/admin/adminsadd",
            },
            {
                label: "用户管理",
                to: "/admin/yonghu",
            },
            {
                label: "添加新用户",
                to: "/admin/yonghuadd",
            },
            {
                label: "密码修改",
                to: "/admin/mod",
            },
        ],
    },
    {
        label: "分布图管理",
        to: "",
        children: [
            {
                label: "分布图添加",
                to: "/admin/fenbutuadd",
            },
            {
                label: "分布图查询",
                to: "/admin/fenbutu",
            },
        ],
    },
    {
        label: "新闻管理",
        to: "",
        children: [
            {
                label: "分类添加",
                to: "/admin/xinwenfenleiadd",
            },
            {
                label: "分类查询",
                to: "/admin/xinwenfenlei",
            },
            {
                label: "新闻添加",
                to: "/admin/xinwenxinxiadd",
            },
            {
                label: "新闻查询",
                to: "/admin/xinwenxinxi",
            },
        ],
    },
    {
        label: "系统管理",
        to: "",
        children: [
            {
                label: "友情链接添加",
                to: "/admin/youqinglianjieadd",
            },
            {
                label: "友情链接查询",
                to: "/admin/youqinglianjie",
            },
            {
                label: "轮播图添加",
                to: "/admin/lunbotuadd",
            },
            {
                label: "轮播图查询",
                to: "/admin/lunbotu",
            },
            {
                label: "疫情上报管理",
                to: "/admin/yiqingshangbao",
            },
            {
                label: "评论管理",
                to: "/admin/pinglun",
            },
            {
                label: "评论回复",
                to: "/admin/pinglunhuifu",
            },
        ],
    },
];
