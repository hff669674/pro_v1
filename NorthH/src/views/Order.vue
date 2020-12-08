<template>
  <div class="order">
    <!--1.导航 -->
    <van-nav-bar title="我的订单">
      <van-button round type="danger" slot="left">返回</van-button>
    </van-nav-bar>
    <!-- 2.历史订单和当前订单切换 -->
    <van-goods-action>
      <van-goods-action-button type="warning" text="历史订单" @click="older" />
      <van-goods-action-button
        color="#c12432"
        type="danger"
        text="当前订单"
        @click="present"
      />
    </van-goods-action>
    <!-- 3.订单详情 -->
    <van-row  type="flex" justify="center">
      <van-col span="3">序号</van-col>
      <van-col span="3">菜名</van-col>
      <van-col span="3">数量</van-col>
      <van-col span="3">下单时间</van-col>
      <van-col span="3">价格</van-col>
      <van-col span="3">备注</van-col>
    </van-row>
  </div>
</template>
<style >
.order .van-nav-bar__title {
  font-size: 24px;
}
.order .van-button--round {
  border-radius: 12px;
  font-size: 20px;
}
.order .van-button--danger {
  background-color: #c12432;
  border: 1px solid #c12432;
}
.order .van-goods-action {
  position: fixed;
  top: 150px;
  width: 25%;
  margin: 0 auto;
}
.order .van-goods-action-button--warning {
  border: 2px solid #c12432;
  background: #fff;
  color: #000;
}
.order .van-goods-action-button--first {
  margin-left: 0;
}
.order .van-goods-action-button--last {
  margin-right: 0;
}
.order .van-row{
    position:relative;
    top: 100px;
    font-size: 20px;
    text-align: center;
}
</style>
<script>
export default {
  methods: {
    older() {},
  },
};
</script>