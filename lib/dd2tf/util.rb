module Dd2tf
  module Util

    def template_name
      self.class.name.underscore
    end

    def template_file_path(template_name)
      File.expand_path("../../templates/#{template_name}.erb", __FILE__)
    end

    def render
      ERB.new(open(template_file_path(template_name)).read, nil, "-").result(binding)
    end

    def normalize_resource_name(resource_name)
      resource_name.gsub(" ", "-").gsub(/[^a-zA-Z0-9 ]/, '')
    end
  end
end