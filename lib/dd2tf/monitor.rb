require 'active_support'
require 'active_support/core_ext'

module Dd2tf
  class Monitor < Base

    def output
      monitors = @client.get_all_monitors[1]

      results = []
      monitors.each do |monitor|
        monitor_name = monitor["name"].underscore.gsub(" ", "_")
        renderer = renderer()
        results << renderer.result(binding)
      end

      results
    end
  end
end
