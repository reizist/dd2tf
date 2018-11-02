module Dd2tf
  module Resources
    class Monitor
      include Dd2tf::Util

      def tf
        monitors = @client.get_all_monitors[1]
        render()
      end

      private

      def monitor_name(monitor)
        normalize_resource_name(monitor["name"])
      end
    end
  end
end
