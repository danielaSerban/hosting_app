require 'net/ping'
require 'net/http'
require 'uri'

  module ServersHelper


    def ping_server()
            @text_var = nil
            url=URI.parse("http://www.google.com")
            start_time = Time.now
            response=Net::HTTP.get(url)
            end_time = Time.now - start_time
            if response==""
              return false
            else
              @text_var = end_time.to_s()
              puts @text_var
              return true
            end
          rescue Errno::ECONNREFUSED
            return false
          end
    end