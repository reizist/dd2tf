require 'active_support'
require 'active_support/core_ext'

module Dd2tf
  module Import
    class Base
      attr_reader :resources
      class NotImplementedError < StandardError; end

      def initialize(client)
        @client = client
      end

      def print
        resources.each do |resource|
          puts "terraform import #{resource_type}.#{resource[:resource_name]} #{resource[:resource_id]}"
        end
        nil
      end

      private

      def resources
        raise NotImplementedError
      end

      def resource_type
        raise NotImplementedError
      end
    end
  end
end