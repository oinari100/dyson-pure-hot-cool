<template>
  <div class="air-volume-button" @click="handleClick">
    <div class="button-half top-half">
      <div class="large-circle"></div>
    </div>
    <div class="button-half bottom-half">
      <div class="small-circle"></div>
    </div>
  </div>
</template>

<script>
export default {
  name: 'AirVolumeButton',
  methods: {
    handleClick(event) {
      const button = event.currentTarget;
      const rect = button.getBoundingClientRect();
      const y = event.clientY - rect.top;
      
      if (y < rect.height / 2) {
        this.topClick();
      } else {
        this.bottomClick();
      }
    },
    topClick() {
      // TODO: 温度調節
      this.$serverApi.coldModeOn()
    },
    bottomClick() {
      // TODO: 温度調節
      this.$serverApi.coldModeOn()
    }
  }
}
</script>

<style lang="sass" scoped>
.air-volume-button
  width: 36px
  height: 72px
  background-color: #d9d9d9
  border: 0.5px solid #4d4d4d
  border-radius: 50% / 25% /* 縦長の楕円形 */
  cursor: pointer
  box-shadow: 0 2px 6px rgba(0, 0, 0, 0.4)
  display: flex
  flex-direction: column
  transition: transform 0.1s ease
  overflow: hidden
  position: relative

  &:active
    transform: scale(1)
    box-shadow: 0 1px 2px rgba(0, 0, 0, 0.4)

.button-half
  flex: 1
  display: flex
  justify-content: center
  align-items: center
  width: 100%

.large-circle
  width: 18px
  height: 18px
  border: 0.5px solid #4d4d4d
  border-radius: 50%

.small-circle
  width: 12px
  height: 12px
  border: 0.5px solid #4d4d4d
  border-radius: 50%
</style>
