class StationController < WebsocketRails::BaseController
  include ActionView::Helpers::SanitizeHelper

  def initialize_session
    puts "Session Initialized\n"
  end
  
  def response_to_board(ev,msg)
    puts "broadcasting message"
    send_message ev, { 
        response: msg
      }
  end

  def alarm_update
    puts "updating alarms"
    puts sanitize(message)
    response_to_board :alarm_update, ""
  end

  def status_update
    puts "updating status"
    puts sanitize(message)
  end
  

  
end
