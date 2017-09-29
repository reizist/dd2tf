module Dd2tf
  class Config
    attr_reader :api_key, :app_key
    def initialize(api_key, app_key)
      @api_key = api_key
      @app_key = app_key
    end
  end
end
