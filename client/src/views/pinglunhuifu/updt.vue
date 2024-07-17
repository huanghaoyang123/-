<template>
    <div class="pinglunhuifu-add" v-loading="loading">
        <el-card class="box-card">
            <div slot="header" class="clearfix updt">
                <el-page-header @back="$router.go(-1)" content="编辑评论回复"> </el-page-header>
            </div>
            <div class="form-database-form">
                <el-form :model="form" ref="formModel" label-width="130px" status-icon validate-on-rule-change>
                    <el-form-item v-if="isRead" label="表" prop="biao" required :rules="[{required:true, message:'请填写表'}]"> {{ form.biao }} </el-form-item>

                    <el-form-item
                        v-if="isRead"
                        label="表id"
                        prop="biaoid"
                        required
                        :rules="[{required:true, message:'请填写表id'}, {validator:rule.checkNumber, message:'输入一个有效数字'}]"
                    >
                        {{ form.biaoid }}
                    </el-form-item>

                    <el-form-item v-if="isRead" label="标题" prop="biaoti" required :rules="[{required:true, message:'请填写标题'}]"> {{ form.biaoti }} </el-form-item>

                    <el-form-item v-if="isRead" label="评论内容" prop="pinglunneirong"> {{ form.pinglunneirong }} </el-form-item>

                    <el-form-item label="回复内容" prop="huifuneirong"> <el-input type="textarea" v-model="form.huifuneirong"></el-input> </el-form-item>

                    <el-form-item v-if="btnText">
                        <el-button type="primary" @click="submit">{{ btnText }}</el-button>
                    </el-form-item>
                </el-form>
            </div>
        </el-card>
    </div>
</template>
<style type="text/scss" scoped lang="scss">
    .pinglunhuifu-add {
    }
</style>
<script>
    import api from "@/api";
    import rule from "@/utils/rule";
    import { extend } from "@/utils/extend";

    export default {
        name: "pinglunhuifu-add",
        data() {
            return {
                rule,
                loading: false,
                form: {
                    biao: "",
                    biaoid: "",
                    biaoti: "",
                    pinglunneirong: "",
                    huifuneirong: "",

                    pinglunid: 0,
                },
            };
        },
        watch: {
            id: {
                handler() {
                    this.loadInfo();
                },
            },
        },
        props: {
            isRead: {
                type: Boolean,
                default: true,
            },
            btnText: {
                type: String,
                default: "提交",
            },
            id: {
                type: [String, Number],
                required: true,
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

                        this.$post(api.pinglunhuifu.update, form)
                            .then((res) => {
                                this.loading = false;
                                if (res.code == api.code.OK) {
                                    this.$message.success("添加成功");
                                    this.$emit("success", res.data);
                                    this.$refs.formModel.resetFields();
                                    this.$router.go(-1);
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
                // 更新数据,获取数据
                this.loading = true;
                var form = this.form;
                this.$post(api.pinglunhuifu.edit, {
                    id: this.id,
                })
                    .then((res) => {
                        this.loading = false;
                        if (res.code == api.code.OK) {
                            extend(this, res.data);
                            this.form = res.data.mmm;
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
