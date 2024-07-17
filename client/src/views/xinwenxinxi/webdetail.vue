<template>
    <div class="xinwenxinxi-detail" v-loading="loading">
        <div>
            <e-container>
                <div class="news-info">
                    <h3 class="title" v-text="map.biaoti"></h3>
                    <div class="descount">
                        <span class="title">
                            分类：
                            <e-select-view module="xinwenfenlei" :value="map.fenlei" select="id" show="fenleimingcheng"></e-select-view>
                        </span>
                        <span class="title"> 点击率： {{ map.dianjilv }} </span>
                        <span class="title"> 添加人： {{ map.tianjiaren }} </span>

                        <template v-if="$session.cx == '用户'">
                            <el-badge :value="shoucangCount" style="margin-right: 15px">
                                <el-button type="primary" v-if="!is_shoucang" @click="onShoucangChange" icon="el-icon-star-off"> 收藏 </el-button>
                                <el-button type="danger" v-else icon="el-icon-star-on" @click="onShoucangChange"> 取消收藏 </el-button>
                            </el-badge>
                        </template>

                    </div>
                    <div class="content" v-html="map.neirong"></div>
                </div>
            </e-container>
        </div>
        <template v-if="$session.cx == '用户'">
            <div>
                <e-container>
                    <e-module-model-box title="评论区">
                        <e-comments module="xinwenxinxi" :lists="comments" :biaoti="map.biaoti" user="yonghu" headimg="touxiang" :is-reply="true" name="yonghuming"> </e-comments>
                    </e-module-model-box>
                </e-container>
            </div>
        </template>

    </div>
</template>
<style type="text/scss" scoped lang="scss"></style>
<script>
    import api from "@/api";
    import { extend } from "@/utils/extend";
    import jdk from "@/utils/extend";
    export default {
        data() {
            return {
                loading: false, // 加载

                is_shoucang: false,
                shoucangCount: 0,

                map: {
                    biaoti: "",
                    fenlei: "",
                    tupian: "",
                    neirong: "",
                    dianjilv: "",
                    tianjiaren: "",
                    addtime: "",
                },
                comments: [],
            };
        },
        props: {
            id: {
                type: [String, Number],
                required: true,
            },
        },
        watch: {
            id: {
                handler() {
                    this.loadDetail();
                },
                immediate: true,
            },
        },
        computed: {},
        methods: {
            loadDetail() {
                if (this.loading) return;
                this.loading = true;
                this.$get(api.xinwenxinxi.webdetail, {
                    id: this.id,
                })
                    .then((res) => {
                        this.loading = false;
                        if (res.code == api.code.OK) {
                            extend(this, res.data);
                        } else {
                            this.$message.error(res.msg);
                        }
                    })
                    .catch((err) => {
                        this.loading = false;
                        this.$message.error(err.message);
                    });
            },
            onShoucangChange() {
                if (this.loading) return;
                this.loading = true;
                var map = this.map;
                this.$post("shoucanginsert.do", {
                    biao: "xinwenxinxi",
                    xwid: map.id,
                    biaoti: map.biaoti,
                })
                    .then((res) => {
                        if (res.code == 0) {
                            if (this.is_shoucang) {
                                this.$message.success("已取消收藏");
                                this.is_shoucang = false;
                                this.shoucangCount--;
                            } else {
                                this.$message.success("已收藏");
                                this.is_shoucang = true;
                                this.shoucangCount++;
                            }
                        } else {
                            this.$message.error(res.msg);
                        }
                        this.loading = false;
                    })
                    .catch((err) => {
                        this.loading = false;
                        this.$message.error(err.message);
                    });
            },
        },
        created() {},
        mounted() {},
        destroyed() {},
    };
</script>
