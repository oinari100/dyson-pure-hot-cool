<template>
  <div class="remote">
    <div class="grid-button">
      <PowerButton />
      <ColdAirButton />
      <AirVolumeButton />
      <HotAirVolumeButton />
      <AutoButton />
      <SwingButton />
    </div>
  </div>
</template>

<script>
import PowerButton from '~/components/PowerButton.vue';
import ColdAirButton from '~/components/ColdAirButton.vue';
import AirVolumeButton from '~/components/AirVolumeButton.vue';
import HotAirVolumeButton from '~/components/HotAirVolumeButton.vue';
import AutoButton from '~/components/AutoButton.vue';
import SwingButton from '~/components/SwingButton.vue';
export default {
  name: 'RemoteControl',
  components: {
    PowerButton,
    ColdAirButton,
    AirVolumeButton,
    HotAirVolumeButton,
    AutoButton,
    SwingButton,
  },
}
</script>

<style lang="sass" scoped>
.remote 
  width: 120px
  height: 340px
  background: linear-gradient(to right, #4d4d4d, #d9d9d9 10%, #d9d9d9 90%, #4d4d4d)
  border-radius: 20px
  box-shadow: inset 0 0 10px rgba(0, 0, 0, 0.5), 0 4px 8px rgba(0, 0, 0, 0.3)
  display: flex
  justify-content: center
  align-items: start
  padding-top: 20px
  margin: 50px auto

.grid-button
  display: grid
  grid-template-columns: repeat(2, 1fr)
  gap: 10px
  justify-items: center
  align-items: center
</style>