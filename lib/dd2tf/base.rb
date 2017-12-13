require 'erb'
require 'active_support'
require 'active_support/core_ext'

module Dd2tf
  UNALLOWED_RESOURCE_TITLE_REGEXP = /\(|\)|'|,|\.|\[|\]|:/
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
      File.read(File.expand_path("../../templates/#{self.class.name.split(":").last.underscore}.erb.rb", __FILE__))
    end

    def renderer
      ERB.new(template_file, nil, "-")
    end
  end
end