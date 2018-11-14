
<template>
<div style="width: 400px">
<el-time-select
  v-model="value1"
  :picker-options="{
    start: '08:30',
    step: '00:15',
    end: '18:30'
  }"
  placeholder="选择时间">
</el-time-select>
<div >

<el-progress :text-inside="true" :stroke-width="18" :percentage="0"></el-progress>
<el-progress :text-inside="true" :stroke-width="18" :percentage="70"></el-progress>
<el-progress :text-inside="true" :stroke-width="18" :percentage="80" color="rgba(142, 113, 199, 0.7)"></el-progress>
<el-progress :text-inside="true" :stroke-width="18" :percentage="100" status="success"></el-progress>
<el-progress :text-inside="true" :stroke-width="18" :percentage="50" status="exception"></el-progress>
</div>


<div>
    <el-button @click="show3 = !show3">Click Me</el-button>

    <div style="margin-top: 20px; height: 200px;">
      <el-collapse-transition>
        <div v-show="show3">
          <div class="transition-box">el-collapse-transition</div>
          <div class="transition-box">el-collapse-transition</div>
        </div>
      </el-collapse-transition>
    </div>
  </div>

<div class="demo-input-suffix">
  属性方式：
  <el-input
    placeholder="请选择日期"
    suffix-icon="el-icon-date"
    v-model="input2">
  </el-input>
  <el-input
    placeholder="请输入内容"
    prefix-icon="el-icon-search"
    v-model="input21">
  </el-input>
<div class="demo-input-suffix">
  slot 方式：
  <el-input
    placeholder="请选择日期"
    v-model="input22">
    <i slot="suffix" class="el-input__icon el-icon-date"></i>
  </el-input>
  <el-input
    placeholder="请输入内容"
    v-model="input23">
    <i slot="prefix" class="el-input__icon el-icon-search"></i>
  </el-input>
</div>
</div>
</div>
</template>

<script>
export default {
  data() {
    return {
      value1: '',
      input2: '',
      input21: '',
      input22: '',
      input23: ''
    }
  },
  data: () => ({
      show3: true
  })
}
</script>

<style>
  .transition-box {
    margin-bottom: 10px;
    width: 200px;
    height: 100px;
    border-radius: 4px;
    background-color: #409EFF;
    text-align: center;
    color: #fff;
    padding: 40px 20px;
    box-sizing: border-box;
    margin-right: 20px;
  }
</style>
