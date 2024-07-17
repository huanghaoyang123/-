<template>
    <div class="fenbutu-add" v-loading="loading">
        <el-card class="box-card">
            <div slot="header" class="clearfix">
                <span class="title"> 添加分布图</span>
            </div>
            <div class="form-database-form">
                <el-form :model="form" ref="formModel" label-width="130px" status-icon validate-on-rule-change>
                    <el-form-item label="地区" prop="diqu" required :rules="[{required:true, message:'请填写地区'}]">
                        <el-input type="text" placeholder="输入地区" style="width: 250px" v-model="form.diqu" />
                    </el-form-item>

                    <el-form-item
                        label="确诊人数"
                        prop="quezhenrenshu"
                        required
                        :rules="[{required:true, message:'请填写确诊人数'}, {validator:rule.checkNumber, message:'输入一个有效数字'}]"
                    >
                        <el-input type="number" placeholder="输入确诊人数" style="width: 250px" v-model.number="form.quezhenrenshu" />
                    </el-form-item>

                    <el-form-item
                        label="累计确诊"
                        prop="leijiquezhen"
                        required
                        :rules="[{required:true, message:'请填写累计确诊'}, {validator:rule.checkNumber, message:'输入一个有效数字'}]"
                    >
                        <el-input type="number" placeholder="输入累计确诊" style="width: 250px" v-model.number="form.leijiquezhen" />
                    </el-form-item>

                    <el-form-item
                        label="累计死亡"
                        prop="leijisiwang"
                        required
                        :rules="[{required:true, message:'请填写累计死亡'}, {validator:rule.checkNumber, message:'输入一个有效数字'}]"
                    >
                        <el-input type="number" placeholder="输入累计死亡" style="width: 250px" v-model.number="form.leijisiwang" />
                    </el-form-item>

                    <el-form-item
                        label="累计治愈"
                        prop="leijizhiyu"
                        required
                        :rules="[{required:true, message:'请填写累计治愈'}, {validator:rule.checkNumber, message:'输入一个有效数字'}]"
                    >
                        <el-input type="number" placeholder="输入累计治愈" style="width: 250px" v-model.number="form.leijizhiyu" />
                    </el-form-item>

                    <el-form-item v-if="btnText">
                        <el-button type="primary" @click="submit">{{ btnText }}</el-button>
                    </el-form-item>
                </el-form>
            </div>
        </el-card>
    </div>
</template>
<style type="text/scss" scoped lang="scss">
    .fenbutu-add {
    }
</style>
<script>
    import api from "@/api";
    import rule from "@/utils/rule";
    import { extend } from "@/utils/extend";

    export default {
        name: "fenbutu-add",
        data() {
            return {
                rule,
                loading: false,
                form: {
                    diqu: "",
                    quezhenrenshu: "",
                    leijiquezhen: "",
                    leijisiwang: "",
                    leijizhiyu: "",
                },
            };
        },
        watch: {},
        props: {
            isRead: {
                type: Boolean,
                default: true,
            },
            btnText: {
                type: String,
                default: "提交",
            },
        },

        computed: {},
        methods: {
            submit() {
                this.$refs.formModel
                    .validate()
                    .then((res) => {
                        if (this.loading) return;
                        this.loading = true;
                        var form = this.form;

                        this.$post(api.fenbutu.insert, form)
                            .then((res) => {
                                this.loading = false;
                                if (res.code == api.code.OK) {
                                    this.$message.success("添加成功");
                                    this.$emit("success", res.data);
                                    this.$refs.formModel.resetFields();
                                    this.loadInfo();
                                } else {
                                    this.$message.error(res.msg);
                                }
                            })
                            .catch((err) => {
                                this.loading = false;
                                this.$message.error(err.message);
                            });
                    })
                    .catch((err) => {
                        console.log(err.message);
                    });
            },
            loadInfo() {
                var form = this.form;
                // 获取模块得数据
                this.loading = true;
                this.$post(api.fenbutu.create, {
                    id: this.$route.query.id,
                })
                    .then((res) => {
                        this.loading = false;
                        if (res.code == api.code.OK) {
                            extend(this, res.data);
                        } else {
                            this.$message.error(res.msg);
                            this.$router.go(-1);
                        }
                    })
                    .catch((err) => {
                        this.$message.error(err.message);
                        this.$router.go(-1);
                    });
            },
        },
        created() {
            this.loadInfo();
        },
        mounted() {},
        destroyed() {},
    };
</script>
