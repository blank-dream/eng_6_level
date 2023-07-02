<template>
  <div class="home">
    <div class="background"></div>
    <div class="content">
      <h1 class="title">英语六级报考系统</h1>
      <p class="description">欢迎各位学子参加英语考试</p>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {};
  },
};
</script>

<style scoped lang="scss">
/* 样式表 */
.home {
  position: relative;
}

.background {
  position: fixed;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background-image: url("../assets/images/w.jpg"); /* 替换为你的背景图片路径 */
  background-size: cover;
  z-index: -1;
}

.content {
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  text-align: center;
}

.title {
  font-size: 36px;
  font-weight: bold;
  color: white;
  margin-bottom: 20px;
}

.description {
  font-size: 18px;
  color: white;
}
</style>
