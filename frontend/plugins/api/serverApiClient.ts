import axios, { AxiosInstance } from 'axios'

export default class ServerApiClient {

  private axiosInstance: AxiosInstance
  constructor() {
    this.axiosInstance = axios.create({
      baseURL: process.env.API_URL + '/api/v1',
      headers: {
        'Content-Type': 'application/json'
      }
    })
  }

  // 電源ON
  async startDyson() {
    this.call('/power/on', {})
  }

  // 冷風
  async coldModeOn() {
    this.call('/cold/on', {})
  }

  // 風量調整
  async switchToAirVolume(vol :number) {
    this.call('/air/volume', {vol: vol})
  }

  // 温風（風量調整）
  async hotModeOn() {
    this.call('/hot/on', {})
  }

  // オート
  async autoOn() {
    this.call('/auto/on', {})
  }
  
  // 首振り
  async swingOn() {
    this.call('/swing/on', {})
  }

  private async call(path :string, data: {}) {
    try {
      const res = await this.axiosInstance.post(
        path,
        data
      )
    } catch(e) {
      console.log(e)
    }
  }
}