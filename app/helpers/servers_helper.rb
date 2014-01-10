require 'net/ping'
require 'net/http'
require 'uri'

  module ServersHelper


    def ping_server()
            url=URI.parse("http://www.google.com")
            start_time = Time.now
            response=Net::HTTP.get(url)
            end_time = Time.now - start_time
            if response==""
              return false
            else
              return end_time.to_s()
            end
            rescue Errno::ECONNREFUSED
            @text_var = "Server not responding"
            return false
          end
    end