module Dd2tf
  module Import
    class Timeboard < Base
      def resource_type
        "datadog_timeboard"
      end

      def resources
        resources = []
        boards = @client.get_dashboards[1]["dashes"]

        boards.each do |board|
          board_name = board["title"].underscore.gsub(" ", "_").gsub(UNALLOWED_RESOURCE_TITLE_REGEXP, '')
          resource_id = board["id"]
          resources << { resource_id: resource_id, resource_name: board_name }
        end

        resources
      end
    end
  end
end