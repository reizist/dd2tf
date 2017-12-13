module Dd2tf
  module Import
    class Downtime < Base
      def resource_type
        "datadog_downtime"
      end

      def resources
        resources = []
        downtimes = @client.get_all_downtimes[1]

        downtimes.each do |downtime|
          downtime_name = downtime["id"]
          resource_id = downtime["id"]
          resources << { resource_id: resource_id, resource_name: downtime_name }
        end
        resources
      end
    end
  end
end