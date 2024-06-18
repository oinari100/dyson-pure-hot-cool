require 'mqtt'

MQTT_SETTINGS = {
  host: ENV['MQTT_HOST'],
  port: ENV['MQTT_PORT'],
  username: ENV['MQTT_USERNAME'],
  password: ENV['MQTT_PASSWORD'],
  topic: ENV['MQTT_TOPIC']
}