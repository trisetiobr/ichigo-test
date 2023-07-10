<template>
  <div class="container" :class="{ 'desktop': isDesktop }">
    <div class="box" v-for="box in boxes" :key="box.id" :style="{ backgroundColor: box.color }" @click="shuffleColors">
      <h2>{{ box.id }}</h2>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      boxes: [
        { id: 1, color: '#bae4e5' },
        { id: 2, color: '#4a15ad' },
        { id: 3, color: '#eaf2d7' },
        { id: 4, color: '#0b7fab' },
        { id: 5, color: '#a37c82' },
        { id: 6, color: '#95a5a6' }
      ],
      colors: [
        '#bae4e5',
        '#4a15ad',
        '#eaf2d7',
        '#0b7fab',
        '#a37c82',
        '#95a5a6'
      ],
      isDesktop: false
    };
  },
  methods: {
    shuffleColors() {
      this.boxes.forEach(box => {
        const idx = Math.floor(Math.random() * this.colors.length);
        box.color = this.colors[idx];
      });
    },
    handleResize() {
      this.isDesktop = window.innerWidth > 600;
    }
  },
  mounted() {
    this.shuffleColors();
    this.handleResize();
    window.addEventListener('resize', this.handleResize);
  }
};
</script>

<style>
.container {
  display: flex;
  flex-wrap: wrap;
  justify-content: center;
  align-items: center;
}

.box {
  width: 100%;
  max-width: 300px;
  height: 200px;
  margin: 10px;
  display: flex;
  justify-content: center;
  align-items: center;
  cursor: pointer;
}

.desktop .box {
  width: 33%;
}

@media (min-width: 601px) {
  .container {
    justify-content: flex-start;
  }
}

@media (max-width: 600px) {
  .desktop .box {
    display: none;
  }
}
</style>
