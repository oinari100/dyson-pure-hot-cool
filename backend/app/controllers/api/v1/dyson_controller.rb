module Api
  module V1
    class DysonController < ApplicationController

      # 電源ON
      def power_on
        begin
          payload = {
            msg: "STATE-SET",
            time: Time.now.getlocal('+09:00').strftime("%Y-%m-%dT%H:%M:%SZ"),
            data: {
              "fmod": "FAN"
            }
          }
          mqtt_service = MqttService.new
          mqtt_service.publish(payload.to_json)
          render json: { logs: 'starting dyson' }
        rescue => e
          render json: { logs: 'error： ' + e.message }
        end
      end

      # 電源OFF
      def power_off
        # TODO: 電源OFF時の処理
      end

      # 風量調整
      def air_volume
        begin
          payload = {
            msg: "STATE-SET",
            time: Time.now.getlocal('+09:00').strftime("%Y-%m-%dT%H:%M:%SZ"),
            data: {
              "fnsp": params[:vol]
            }
          }
          mqtt_service = MqttService.new
          mqtt_service.publish(payload.to_json)
          render json: { logs: 'air volume: ' + params[:vol] }
        rescue => e
          render json: { logs: 'error： ' + e.message }
        end
      end

      # 冷風ON
      def cold_on
        begin
          payload = {
            msg: "STATE-SET",
            time: Time.now.getlocal('+09:00').strftime("%Y-%m-%dT%H:%M:%SZ"),
            data: {
              "hmod": "OFF",
              "fnst": "FAN"
            }
          }
          mqtt_service = MqttService.new
          mqtt_service.publish(payload.to_json)
          render json: { logs: 'cold on' }
        rescue => e
          render json: { logs: 'error： ' + e.message }
        end
      end

      # 暖房ON
      def hot_on
        begin
          payload = {
            msg: "STATE-SET",
            time: Time.now.getlocal('+09:00').strftime("%Y-%m-%dT%H:%M:%SZ"),
            data: {
              "hmod": "HEAT",
              "fnst": "OFF"
            }
          }
          mqtt_service = MqttService.new
          mqtt_service.publish(payload.to_json)
          render json: { logs: 'hot on' }
        rescue => e
          render json: { logs: 'error： ' + e.message }
        end
      end

      # 暖房（温度調節）
      def hot_volume
        # TODO: 暖房の温度調節時の処理
      end

      # 首振りON
      def swing_on
        begin
          payload = {
            msg: "STATE-SET",
            time: Time.now.getlocal('+09:00').strftime("%Y-%m-%dT%H:%M:%SZ"),
            data: {
              "oson": "ON"
            }
          }
          mqtt_service = MqttService.new
          mqtt_service.publish(payload.to_json)
          render json: { logs: 'swing on' }
        rescue => e
          render json: { logs: 'error： ' + e.message }
        end
      end

      # 首振りOFF
      def swing_off
        # TODO: 首振りモードOFFの処理
      end

      # AUTOモードON
      def auto_on
        begin
          payload = {
            msg: "STATE-SET",
            time: Time.now.getlocal('+09:00').strftime("%Y-%m-%dT%H:%M:%SZ"),
            data: {
              "fnsp": "AUTO"
            }
          }
          mqtt_service = MqttService.new
          mqtt_service.publish(payload.to_json)
          render json: { logs: 'auto on' }
        rescue => e
          render json: { logs: 'error： ' + e.message }
        end
      end

      # AUTOモードOFF
      def auto_off
        # TODO: AUTOモードOFFの処理
      end
    end
  end
end