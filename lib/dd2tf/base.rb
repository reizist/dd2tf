require 'erb'
require 'active_support'
require 'active_support/core_ext'

module Dd2tf
  class Base
    class NotImplementedError < StandardError; end

    def initialize(client)
      @client = client
    end

    def output
      raise NotImplementedError
    end

    private

    def template_file
      File.read("./lib/templates/#{self.class.name.split(":").last.underscore}.erb.rb")
    end

    def renderer
      ERB.new(template_file, nil, "-")
    end
  end
end