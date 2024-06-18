require 'mqtt'

class MqttService
  def publish(payload)
    MQTT::Client.connect(host: MQTT_SETTINGS[:host], port: MQTT_SETTINGS[:port], username: MQTT_SETTINGS[:username], password: MQTT_SETTINGS[:password]) do |client|
    client.publish(MQTT_SETTINGS[:topic] + '/command', payload)
    end
  end
end