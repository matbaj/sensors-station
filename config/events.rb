WebsocketRails::EventMap.describe do
  config.log_internal_events = true
  config.standalone = false
  config.synchronize = false
end
WebsocketRails::EventMap.describe do
  subscribe :status_update, to: StationController, with_method: :status_update
  subscribe :alarm_update, to: StationController, with_method: :alarm_update
end
