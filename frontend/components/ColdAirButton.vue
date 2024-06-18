<template>
  <button class="button" @click="switchToColdMode">
    <div class="inner-circle"></div>
  </button>
</template>

<script>
export default {
  name: 'ColdAirButton',
  methods: {
    async switchToColdMode() {
      this.$serverApi.coldModeOn()
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

  &:active
    transform: scale(1)
    box-shadow: 0 1px 2px rgba(0, 0, 0, 0.4)

.inner-circle
  width: 18px
  height: 18px
  background-color: #009CDE
  border-radius: 50%
</style>