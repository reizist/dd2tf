module Dd2tf
  module Import
    class User < Base
      def resource_type
        "datadog_user"
      end

      def resources
        resources = []
        users = @client.get_all_users[1]["users"]

        users.each do |user|
          user_name = user["name"].to_s.underscore.gsub(" ", "_").gsub(::Dd2tf::UNALLOWED_RESOURCE_TITLE_REGEXP, '')
          # resource_id is the email address
          # see: https://www.terraform.io/docs/providers/datadog/r/user.html#import
          resource_id = user["email"]
          resources << { resource_id: resource_id, resource_name: user_name }
        end
        resources
      end
    end
  end
end