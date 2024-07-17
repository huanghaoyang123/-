<template>
    <div class="v-admin-sy" style="padding: 20px">
        <el-row>
            <el-col :span="16">
                <div id="main" ref="main" style="width: 100%;height:600px;"></div>
            </el-col>
            <el-col :span="8">
                <table width="100%" border="1" class="table table-list table-bordered table-hover">
                    <thead>
                    <tr align="center">
                        <th>地区</th>
                        <th>确诊人数</th>
                        <th>累计确诊</th>
                        <th>累计死亡</th>
                        <th>累计治愈</th>
                    </tr>
                    </thead>
                    <tbody>

                    <tr pid="" v-for="map in querenList">
                        <td>{{map.diqu}}</td>
                        <td>{{map.quezhenrenshu}}</td>
                        <td>{{map.leijiquezhen}}</td>
                        <td>{{map.leijisiwang}}</td>
                        <td>{{map.leijizhiyu}}</td>
                    </tr>
                    </tbody>
                </table>
            </el-col>
        </el-row>
    </div>
</template>
<style type="text/scss" lang="scss"></style>
<script>
    import DB from "@/utils/db";

    const setting = require("@/setting");

    function strToEcharts(name) {
        return name.replace(/(省|市)/ig, '')
    }
    import echarts from 'echarts'
    import 'echarts/map/js/china'
    export default {
        name: "v-admin-sy",
        data() {
            return {
                setting,
                querenList: []
            };
        },
        watch: {},
        computed: {},
        methods: {
            loadData() {
                DB.name("fenbutu").order("quezhenrenshu desc").select().then(res => {
                    this.querenList = res.data;
                    this.loadDitu(res.data);
                });
            },
            loadDitu(lists) {
                var myChart = echarts.init(this.$refs.main);
                myChart.setOption({
                    // 设置标题和副标题及副标题跳转链接
                    title: {
                        text: '新冠病毒疫情病毒(各省确诊病例)',
                    },
                    // 数据提示框
                    tooltip: {
                        trigger: 'item', // item放到数据区域触发
                        formatter: '{b}<br/>{c} (人)' // 提示数据格式br表示换行，地图 : {a}（系列名称），{b}（区域名称），{c}（合并数值）, {d}（无）
                    },
                    // 工具栏
                    toolbox: {
                        show: true,
                        orient: 'horizontal',
                        left: 'right',
                        feature: {
                            dataView: {readOnly: false},
                            restore: {},
                            saveAsImage: {}
                        }
                    },


                    // 连续映射方案
                    // 视觉映射,疫情颜色根据传染病疫情等级分类为4机：蓝色-黄色-橙色-红色
                    // 为了是视觉分布更好，可以添加更多的颜色范围，然后适当调小max的值，因为湖北和后面省份相差太大
                    // 湖北有几万确诊，其它较严重省份人数在1000多人，max值设置在1500，整个地图颜色变化相对均匀
                    visualMap: {
                        min: 1, // 颜色映射对应的最小值，即对应下面的lightskyblue
                        max: 1500, // 颜色映射对应的最大值，即对应下面的orangered
                        text: ['严重', '一般'], // 映射图上下标记文本
                        realtime: true, // 是否显示拖拽手柄，映射条可以拖拽调整要映射的范围
                        calculable: true, // 拖拽时，是否实时更新地图
                        inRange: {
                            color: ['lightblue', 'yellow', 'orange', 'darkorange', 'red', 'darkred'] // 颜色映射范围，最小值，过渡值，最大值
                        }
                    },


                    // 分段映射方案：
                    // visualMap默认是连续映射，我们也可以设置为分段型，对于分布范围广的数据
                    // 使用透明度来区分疫情严重情况
                    /*visualMap: {
                        type: 'piecewise',
                        pieces: [
                            {gt: 1500, color: 'darkred'},                        // (1500, Infinity]
                            {gt: 1000, lte: 1500, color: 'red', colorAlpha: 1},  // (1000, 1500]
                            {gt: 500, lte: 1000, color: 'red', colorAlpha: 0.8},
                            {gt: 300, lte: 500, color: 'red', colorAlpha: 0.6},
                            {gt: 100, lte: 300, color: 'red', colorAlpha: 0.4},
                            {gt: 50, lte: 100, color: 'red', colorAlpha: 0.3},
                            {lt: 50, color: 'red', colorAlpha: 0.2}          // (-Infinity, 100)
                        ],


                    },*/

                    // 具体数据
                    series: [
                        {
                            name: '各省确诊病例', // 系列名称
                            type: 'map', // 系列类型，地图
                            map: 'china', // 要使用的地图，即上面注册的地图名称
                            roam: true, // 开启鼠标缩放和平移漫游
                            label: { // 图形上的文本标签，地图默认显示数据名
                                show: true,
                                formatter: '{b}', // b是数据名，c是数据值
                                fontSize: 12
                            },
                            data: lists.map(s=>{
                                return {
                                    name:strToEcharts(s.diqu),
                                    value:parseInt(s.quezhenrenshu)
                                }
                            }),
                        }
                    ]
                });

            }
        },
        created() {
            this.loadData();
        },
        mounted() {
        },
        destroyed() {
        },
    };
</script>
