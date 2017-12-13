module Dd2tf
  module Import
    class Monitor < Base
      def resource_type
        "datadog_monitor"
      end

      def resources
        resources = []
        monitors = @client.get_all_monitors[1]

        monitors.each do |monitor|
          monitor_name = monitor["name"].underscore.gsub(" ", "_").gsub(UNALLOWED_RESOURCE_TITLE_REGEXP, '')
          resource_id = monitor["id"]
          resources << { resource_id: resource_id, resource_name: monitor_name }
        end

        resources
      end
    end
  end
end