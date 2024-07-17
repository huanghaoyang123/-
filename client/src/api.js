import http from "@/utils/ajax/http";
import { extend } from "@/utils/extend";

const api = {
    code: {
        OK: 0,
    },
    user: {
        login: "authLogin.do?ac=login",
        tokenLogin: "tokenLogin.do",
        logout: "logout.do",
    },
    checkUpdate: "sh.do",
    editorPassword: "editPassword",
    checkField: "checkno.do",
    dbQuery: "/db/query",
    dbSelect: "/db/select",

    captch() {
        var url = "captcha.do?rd=" + Math.floor(Math.random() * 100000);
        return new Promise((resolve, reject) => {
            http.get(url).then((res) => {
                var url = res.data;
                resolve(url);
            }, reject);
        });
    },
    search: {
        select: "selectUpdateSearch.do",
        table: "tableAjax.do?a=table",
        selectView: "selectView.do",
        all: "selectAll.do",
    },
    attachment: {
        uploadUrl: "upload_re.do",
        upload(file) {
            return new Promise((resolve, reject) => {
                var formdata = new FormData();
                formdata.append("fujian", file, file.name || "tmp.png");
                http.post(api.attachment.uploadUrl, formdata)
                    .then((res) => {
                        if (res.code == api.code.OK) {
                            resolve(res.data);
                        } else {
                            reject(res.msg);
                        }
                    })
                    .catch((err) => {
                        reject(err.message);
                    });
            });
        },
    },
    admins: {
        list: "admins_list.do",
        insert: "adminsinsert.do",
        update: "adminsupdate.do",
        delete: "admins_delete.do",
        detail: "admins_detail.do",
        create: "admins_add.do",
        edit: "admins_updt.do",
    },
    yonghu: {
        list: "yonghu_list.do",
        insert: "yonghuinsert.do",
        update: "yonghuupdate.do",
        delete: "yonghu_delete.do",
        detail: "yonghu_detail.do",
        create: "yonghu_add.do",
        edit: "yonghu_updt.do",
    },
    xinwenfenlei: {
        list: "xinwenfenlei_list.do",
        insert: "xinwenfenleiinsert.do",
        update: "xinwenfenleiupdate.do",
        delete: "xinwenfenlei_delete.do",
        detail: "xinwenfenlei_detail.do",
        create: "xinwenfenlei_add.do",
        edit: "xinwenfenlei_updt.do",
    },
    xinwenxinxi: {
        list: "xinwenxinxi_list.do",
        insert: "xinwenxinxiinsert.do",
        update: "xinwenxinxiupdate.do",
        delete: "xinwenxinxi_delete.do",
        detail: "xinwenxinxi_detail.do",
        create: "xinwenxinxi_add.do",
        edit: "xinwenxinxi_updt.do",
        weblist: "xinwenxinxilist.do",
        webdetail: "xinwenxinxidetail.do",
    },
    youqinglianjie: {
        list: "youqinglianjie_list.do",
        insert: "youqinglianjieinsert.do",
        update: "youqinglianjieupdate.do",
        delete: "youqinglianjie_delete.do",
        detail: "youqinglianjie_detail.do",
        create: "youqinglianjie_add.do",
        edit: "youqinglianjie_updt.do",
    },
    yiqingshangbao: {
        list: "yiqingshangbao_list.do",
        insert: "yiqingshangbaoinsert.do",
        update: "yiqingshangbaoupdate.do",
        delete: "yiqingshangbao_delete.do",
        detail: "yiqingshangbao_detail.do",
        create: "yiqingshangbao_add.do",
        edit: "yiqingshangbao_updt.do",
        listshangbaoyonghu: "yiqingshangbao_list_shangbaoyonghu.do",
    },
    lunbotu: {
        list: "lunbotu_list.do",
        insert: "lunbotuinsert.do",
        update: "lunbotuupdate.do",
        delete: "lunbotu_delete.do",
        detail: "lunbotu_detail.do",
        create: "lunbotu_add.do",
        edit: "lunbotu_updt.do",
    },
    shoucang: {
        list: "shoucang_list.do",
        insert: "shoucanginsert.do",
        update: "shoucangupdate.do",
        delete: "shoucang_delete.do",
        detail: "shoucang_detail.do",
        create: "shoucang_add.do",
        edit: "shoucang_updt.do",
        listusername: "shoucang_list_username.do",
        batch: "shoucang_batch.do",
    },
    pinglun: {
        list: "pinglun_list.do",
        insert: "pingluninsert.do",
        update: "pinglunupdate.do",
        delete: "pinglun_delete.do",
        detail: "pinglun_detail.do",
        create: "pinglun_add.do",
        edit: "pinglun_updt.do",
        listpinglunren: "pinglun_list_pinglunren.do",
    },
    pinglunhuifu: {
        list: "pinglunhuifu_list.do",
        insert: "pinglunhuifuinsert.do",
        update: "pinglunhuifuupdate.do",
        delete: "pinglunhuifu_delete.do",
        detail: "pinglunhuifu_detail.do",
        create: "pinglunhuifu_add.do",
        edit: "pinglunhuifu_updt.do",
        listpinglunren: "pinglunhuifu_list_pinglunren.do",
        listhuifuren: "pinglunhuifu_list_huifuren.do",
    },
    fenbutu: {
        list: "fenbutu_list.do",
        insert: "fenbutuinsert.do",
        update: "fenbutuupdate.do",
        delete: "fenbutu_delete.do",
        detail: "fenbutu_detail.do",
        create: "fenbutu_add.do",
        edit: "fenbutu_updt.do",
        weblist: "fenbutulist.do",
    },
};

export default api;
