<template>
    <div v-loading="loading">
        <div>
            <el-carousel indicator-position="outside" height="580px">
                <el-carousel-item v-for="item in bhtList" :key="item.id">
                    <div style="background-size: cover" @click="$goto(item.url)" :style="{'background-image': 'url('+item.image+')',width:'100%', height: '580px'}"></div>
                </el-carousel-item>
            </el-carousel>
        </div>
        <div>
            <e-container>
                <e-container>
                    <el-row :gutter="15">
                        <el-col :md="12">
                            <e-module-model-box title="国内疫情">
                                <div class="">
                                    <e-news-list
                                        v-for="r in xinwenxinxilist1"
                                        :key="r.id"
                                        :to="'/xinwenxinxidetail?id='+r.id"
                                        :title="r.biaoti"
                                        :description="r.neirong"
                                        :len="30"
                                        :image="r.tupian"
                                    >
                                        <span>分类: <e-select-view module="xinwenfenlei" :value="r.fenlei" select="id" show="fenleimingcheng"></e-select-view></span>
                                        <span>点击率:{{ r.dianjilv }}</span>
                                    </e-news-list>
                                </div>
                            </e-module-model-box>
                        </el-col>
                        <el-col :md="12">
                            <e-module-model-box title="国际疫情">
                                <div class="">
                                    <e-news-list
                                        v-for="r in xinwenxinxilist2"
                                        :key="r.id"
                                        :to="'/xinwenxinxidetail?id='+r.id"
                                        :title="r.biaoti"
                                        :description="r.neirong"
                                        :len="30"
                                        :image="r.tupian"
                                    >
                                        <span>分类: <e-select-view module="xinwenfenlei" :value="r.fenlei" select="id" show="fenleimingcheng"></e-select-view></span>
                                        <span>点击率:{{ r.dianjilv }}</span>
                                    </e-news-list>
                                </div>
                            </e-module-model-box>
                        </el-col>
                    </el-row>
                </e-container>
            </e-container>
        </div>
        <div>
            <e-container>
                <e-container>
                    <el-row :gutter="15">
                        <el-col :md="12">
                            <e-module-model-box title="疫情知识">
                                <div class="">
                                    <e-news-list
                                        v-for="r in xinwenxinxilist3"
                                        :key="r.id"
                                        :to="'/xinwenxinxidetail?id='+r.id"
                                        :title="r.biaoti"
                                        :description="r.neirong"
                                        :len="30"
                                        :image="r.tupian"
                                    >
                                        <span>分类: <e-select-view module="xinwenfenlei" :value="r.fenlei" select="id" show="fenleimingcheng"></e-select-view></span>
                                        <span>点击率:{{ r.dianjilv }}</span>
                                    </e-news-list>
                                </div>
                            </e-module-model-box>
                        </el-col>
                        <el-col :md="12">
                            <e-module-model-box title="就医流程">
                                <div class="">
                                    <e-news-list
                                        v-for="r in xinwenxinxilist4"
                                        :key="r.id"
                                        :to="'/xinwenxinxidetail?id='+r.id"
                                        :title="r.biaoti"
                                        :description="r.neirong"
                                        :len="30"
                                        :image="r.tupian"
                                    >
                                        <span>分类: <e-select-view module="xinwenfenlei" :value="r.fenlei" select="id" show="fenleimingcheng"></e-select-view></span>
                                        <span>点击率:{{ r.dianjilv }}</span>
                                    </e-news-list>
                                </div>
                            </e-module-model-box>
                        </el-col>
                    </el-row>
                </e-container>
            </e-container>
        </div>
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
                loading: false,
                bhtList: [],
                xinwenxinxilist1: [],
                xinwenxinxilist2: [],
                xinwenxinxilist3: [],
                xinwenxinxilist4: [],
            };
        },
        watch: {},
        computed: {},
        methods: {
            loadPageData() {
                if (this.loading) return;
                this.loading = true;
                this.$get("/index")
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
        },
        created() {
            this.loadPageData();
        },
        mounted() {},
        destroyed() {},
    };
</script>
