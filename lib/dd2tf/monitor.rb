module Dd2tf
  class Monitor < Base

    def output
      monitors = @client.get_all_monitors[1]

      results = []
      monitors.each do |monitor|
        monitor_name = monitor["name"].underscore.gsub(" ", "_").gsub(UNALLOWED_RESOURCE_TITLE_REGEXP, '')
        renderer = renderer()
        results << renderer.result(binding)
      end

      results
    end
  end
end
