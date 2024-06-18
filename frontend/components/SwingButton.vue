<template>
  <button class="button" @click="swingOn">
    <span class="triangle left-triangle"></span>
    <span class="triangle right-triangle"></span>
  </button>
</template>

<script>
export default {
  name: 'SwingButton',
  methods: {
    async swingOn() {
      this.$serverApi.swingOn()
    }
  },
}
</script>

<style lang="sass" scoped>
.button
  width: 36px
  height: 36px
  background-color: #d9d9d9
  border: 0.5px solid #4d4d4d
  border-radius: 50%
  cursor: pointer
  box-shadow: 0 2px 6px rgba(0, 0, 0, 0.4)
  transition: transform 0.1s ease
  display: flex
  justify-content: center
  align-items: center
  position: relative

  &:active
    transform: scale(1)
    box-shadow: 0 1px 2px rgba(0, 0, 0, 0.4)

.triangle
  position: absolute
  width: 0
  height: 0
  border-style: solid


.left-triangle
  border-width: 10px 6px 10px 0
  border-color: transparent #4d4d4d transparent transparent
  left: 7px


.right-triangle
  border-width: 10px 0 10px 6px
  border-color: transparent transparent transparent #4d4d4d
  right: 7px


</style>
