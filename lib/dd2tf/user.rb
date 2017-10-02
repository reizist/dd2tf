module Dd2tf
  class User < Base

    def output
      users = @client.get_all_users[1]["users"]

      results = []
      users.each do |user|
        user_name = user["name"].to_s.underscore.gsub(" ", "_").gsub(UNALLOWED_RESOURCE_TITLE_REGEXP, '')
        renderer = renderer()
        results << renderer.result(binding)
      end

      results
    end
  end
end
