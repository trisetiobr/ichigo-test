<template>
  <div class="wrapper" @click="shuffleColors">
    <div class="row hidden-md-down" :style="{ color: 'white' }">
      <div class="col-desktop-12">
      <div class="row">
        <div class="col-desktop-6">
          <div class="box">
            <div class="box-content box-height-4" :style="{ backgroundColor: colors[0] }">1</div>
          </div>
        </div>
        <div class="col-desktop-6">
          <div class="row">
            <div class="col-desktop-12">
              <div class="box">
                <div class="box-content box-height-2" :style="{ backgroundColor: colors[3] }">2</div>
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-desktop-6">
              <div class="box">
                <div class="box-content box-height-2" :style="{ backgroundColor: colors[1] }">3</div>
              </div>
            </div>
            <div class="col-desktop-6">          
              <div class="box">
                <div class="box-content box-height-2" :style="{ backgroundColor: colors[2] }">4</div>
              </div>
            </div>
          </div>
        </div>
      </div>

      <div class="row">
        <div class="col-desktop-4">
          <div class="row">
            <div class="col-desktop-12">          
              <div class="box">
                <div class="box-content box-height-1" :style="{ backgroundColor: colors[5] }">5</div>
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-desktop-12">
              <div class="box">
                <div class="box-content box-height-2" :style="{ backgroundColor: colors[7] }">6</div>
              </div>
            </div>
          </div>
        </div>
        <div class="col-desktop-4">
          <div class="box">
            <div class="box-content box-height-3" :style="{ backgroundColor: colors[4] }">7</div>
          </div>
        </div>
        <div class="col-desktop-4">
          <div class="row">
            <div class="col-desktop-12">
              <div class="box">
                <div class="box-content box-height-2" :style="{ backgroundColor: colors[6] }">8</div>
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-desktop-12 box">
              <div class="box">
                <div class="box-height-1 box-content" :style="{ backgroundColor: colors[8] }">9</div>
              </div>
            </div>
          </div>
        </div>
      </div>
      </div>
    </div>
    <div class="row hidden-md-up" :style="{ color: 'white' }">
      <div id="box-1" class="col-12 box">
        <div class="box-content box-height-4" :style="{ backgroundColor: colors[0] }">1</div>
      </div>
      <div id="box-3" class="col-6 box">
        <div class="box-content box-height-2" :style="{ backgroundColor: colors[1] }">3</div>
      </div>
      <div id="box-4" class="col-6 box">
        <div class="box-content box-height-2" :style="{ backgroundColor: colors[2] }">4</div>
      </div>
      <div id="box-2" class="col-12 box">
        <div class="box-content box-height-2" :style="{ backgroundColor: colors[3] }">2</div>
      </div>
      <div id="box-7" class="col-12 box">
        <div class="box-content box-height-3" :style="{ backgroundColor: colors[4] }">7</div>
      </div>
      <div id="box-5" class="col-6 box">
        <div class="box-content box-height-1" :style="{ backgroundColor: colors[5] }">5</div>
      </div>
      <div id="box-8" class="col-6 box">
        <div class="box-content box-height-2" :style="{ backgroundColor: colors[6] }">8</div>
      </div>
      <div id="box-6" class="col-6 box">
        <div class="box-content box-height-2" :style="{ backgroundColor: colors[7] }">6</div>
      </div>
      <div id="box-9" class="col-6 box">
        <div class="box-height-1 box-content" :style="{ backgroundColor: colors[8] }">9</div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      colors: [
        '#bae4e5',
        '#4a15ad',
        '#eaf2d7',
        '#0b7fab',
        '#a37c82',
        '#95a5a6',
        '#e67e22',
        '#27ae60',
        '#9b59b6'
      ],
      isDesktop: false
    };
  },
  methods: {
    shuffleColors() {
      [0,1,2,3,4,5,6,7,8].forEach(idx => {
        this.colors[idx] = '#'+(Math.random() * 0xFFFFFF << 0).toString(16).padStart(6, '0');
      });
    }
  },
  mounted() {
    this.shuffleColors();
  }
};
</script>

<style>
@-ms-viewport {
  width: device-width;
}

html {
  -webkit-box-sizing: border-box;
          box-sizing: border-box;
  -ms-overflow-style: scrollbar;
}

*,
*::before,
*::after {
  -webkit-box-sizing: inherit;
          box-sizing: inherit;
}

.wrapper .hidden-xs-up {
  display: none !important;
}

@media (max-width: 600.9px) {
  .wrapper .hidden-md-down {
    display: none !important;
  }
}
@media (min-width: 601px) {
  .wrapper .hidden-md-up {
    display: none !important;
  }
}

.wrapper .row {
  display: -webkit-box;
  display: -webkit-flex;
  display: -ms-flexbox;
  display: flex;
  -webkit-flex-wrap: wrap;
      -ms-flex-wrap: wrap;
          flex-wrap: wrap;
  margin-right: -15px;
  margin-left: -15px;
}

.wrapper .col-1, .wrapper .col-2, .wrapper .col-3, .wrapper .col-4, .wrapper .col-5, .wrapper .col-6, .wrapper .col-7, .wrapper .col-8, .wrapper .col-9, .wrapper .col-10, .wrapper .col-11, .wrapper .col-12, .wrapper .col,
.wrapper .col-desktop-1, .wrapper .col-desktop-2, .wrapper .col-desktop-3, .wrapper .col-desktop-4, .wrapper .col-desktop-5, .wrapper .col-desktop-6, .wrapper .col-desktop-7, .wrapper .col-desktop-8, .wrapper .col-desktop-9, .wrapper .col-desktop-10, .wrapper .col-desktop-11, .wrapper .col-desktop-12, .wrapper .col-desktop {
  position: relative;
  width: 100%;
  padding-right: 4px;
  padding-left: 4px;
}

.wrapper .col {
  -webkit-flex-basis: 0;
      -ms-flex-preferred-size: 0;
          flex-basis: 0;
  -webkit-box-flex: 1;
  -webkit-flex-grow: 1;
      -ms-flex-positive: 1;
          flex-grow: 1;
  max-width: 100%;
}

.wrapper .col-1 {
  -webkit-box-flex: 0;
  -webkit-flex: 0 0 8.3333333333%;
      -ms-flex: 0 0 8.3333333333%;
          flex: 0 0 8.3333333333%;
  max-width: 8.3333333333%;
}

.wrapper .col-2 {
  -webkit-box-flex: 0;
  -webkit-flex: 0 0 16.6666666667%;
      -ms-flex: 0 0 16.6666666667%;
          flex: 0 0 16.6666666667%;
  max-width: 16.6666666667%;
}

.wrapper .col-3 {
  -webkit-box-flex: 0;
  -webkit-flex: 0 0 25%;
      -ms-flex: 0 0 25%;
          flex: 0 0 25%;
  max-width: 25%;
}

.wrapper .col-4 {
  -webkit-box-flex: 0;
  -webkit-flex: 0 0 33.3333333333%;
      -ms-flex: 0 0 33.3333333333%;
          flex: 0 0 33.3333333333%;
  max-width: 33.3333333333%;
}

.wrapper .col-5 {
  -webkit-box-flex: 0;
  -webkit-flex: 0 0 41.6666666667%;
      -ms-flex: 0 0 41.6666666667%;
          flex: 0 0 41.6666666667%;
  max-width: 41.6666666667%;
}

.wrapper .col-6 {
  -webkit-box-flex: 0;
  -webkit-flex: 0 0 50%;
      -ms-flex: 0 0 50%;
          flex: 0 0 50%;
  max-width: 50%;
}

.wrapper .col-7 {
  -webkit-box-flex: 0;
  -webkit-flex: 0 0 58.3333333333%;
      -ms-flex: 0 0 58.3333333333%;
          flex: 0 0 58.3333333333%;
  max-width: 58.3333333333%;
}

.wrapper .col-8 {
  -webkit-box-flex: 0;
  -webkit-flex: 0 0 66.6666666667%;
      -ms-flex: 0 0 66.6666666667%;
          flex: 0 0 66.6666666667%;
  max-width: 66.6666666667%;
}

.wrapper .col-9 {
  -webkit-box-flex: 0;
  -webkit-flex: 0 0 75%;
      -ms-flex: 0 0 75%;
          flex: 0 0 75%;
  max-width: 75%;
}

.wrapper .col-10 {
  -webkit-box-flex: 0;
  -webkit-flex: 0 0 83.3333333333%;
      -ms-flex: 0 0 83.3333333333%;
          flex: 0 0 83.3333333333%;
  max-width: 83.3333333333%;
}

.wrapper .col-11 {
  -webkit-box-flex: 0;
  -webkit-flex: 0 0 91.6666666667%;
      -ms-flex: 0 0 91.6666666667%;
          flex: 0 0 91.6666666667%;
  max-width: 91.6666666667%;
}

.wrapper .col-12 {
  -webkit-box-flex: 0;
  -webkit-flex: 0 0 100%;
      -ms-flex: 0 0 100%;
          flex: 0 0 100%;
  max-width: 100%;
}


.box-height-1, .box-height-2, .box-height-3, .box-height-4 {
  min-height: 100px;
  max-height: 100px;
}

.box {
  padding: 4px;
}
.box-content {
  padding: 30px;
}
@media (min-width: 601px) {
  .box-height-1 {
    min-height: 92px;
    max-height: 92px;
  }
  .box-height-2 {
    min-height: 192px;
    max-height: 192px;
  }
  .box-height-3 {
    min-height: 292px;
    max-height: 292px;
  }
  .box-height-4 {
    min-height: 392px;
    max-height: 392px;
  }
  .wrapper .col-desktop {
    -webkit-flex-basis: 0;
        -ms-flex-preferred-size: 0;
            flex-basis: 0;
    -webkit-box-flex: 1;
    -webkit-flex-grow: 1;
        -ms-flex-positive: 1;
            flex-grow: 1;
    max-width: 100%;
  }
  .wrapper .col-desktop-1 {
    -webkit-box-flex: 0;
    -webkit-flex: 0 0 8.3333333333%;
        -ms-flex: 0 0 8.3333333333%;
            flex: 0 0 8.3333333333%;
    max-width: 8.3333333333%;
  }
  .wrapper .col-desktop-2 {
    -webkit-box-flex: 0;
    -webkit-flex: 0 0 16.6666666667%;
        -ms-flex: 0 0 16.6666666667%;
            flex: 0 0 16.6666666667%;
    max-width: 16.6666666667%;
  }
  .wrapper .col-desktop-3 {
    -webkit-box-flex: 0;
    -webkit-flex: 0 0 25%;
        -ms-flex: 0 0 25%;
            flex: 0 0 25%;
    max-width: 25%;
  }
  .wrapper .col-desktop-4 {
    -webkit-box-flex: 0;
    -webkit-flex: 0 0 33.3333333333%;
        -ms-flex: 0 0 33.3333333333%;
            flex: 0 0 33.3333333333%;
    max-width: 33.3333333333%;
  }
  .wrapper .col-desktop-5 {
    -webkit-box-flex: 0;
    -webkit-flex: 0 0 41.6666666667%;
        -ms-flex: 0 0 41.6666666667%;
            flex: 0 0 41.6666666667%;
    max-width: 41.6666666667%;
  }
  .wrapper .col-desktop-6 {
    -webkit-box-flex: 0;
    -webkit-flex: 0 0 50%;
        -ms-flex: 0 0 50%;
            flex: 0 0 50%;
    max-width: 50%;
  }
  .wrapper .col-desktop-7 {
    -webkit-box-flex: 0;
    -webkit-flex: 0 0 58.3333333333%;
        -ms-flex: 0 0 58.3333333333%;
            flex: 0 0 58.3333333333%;
    max-width: 58.3333333333%;
  }
  .wrapper .col-desktop-8 {
    -webkit-box-flex: 0;
    -webkit-flex: 0 0 66.6666666667%;
        -ms-flex: 0 0 66.6666666667%;
            flex: 0 0 66.6666666667%;
    max-width: 66.6666666667%;
  }
  .wrapper .col-desktop-9 {
    -webkit-box-flex: 0;
    -webkit-flex: 0 0 75%;
        -ms-flex: 0 0 75%;
            flex: 0 0 75%;
    max-width: 75%;
  }
  .wrapper .col-desktop-10 {
    -webkit-box-flex: 0;
    -webkit-flex: 0 0 83.3333333333%;
        -ms-flex: 0 0 83.3333333333%;
            flex: 0 0 83.3333333333%;
    max-width: 83.3333333333%;
  }
  .wrapper .col-desktop-11 {
    -webkit-box-flex: 0;
    -webkit-flex: 0 0 91.6666666667%;
        -ms-flex: 0 0 91.6666666667%;
            flex: 0 0 91.6666666667%;
    max-width: 91.6666666667%;
  }
  .wrapper .col-desktop-12 {
    -webkit-box-flex: 0;
    -webkit-flex: 0 0 100%;
        -ms-flex: 0 0 100%;
            flex: 0 0 100%;
    max-width: 100%;
  }
}
</style>
