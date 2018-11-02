module Dd2tf
  class CLI < Thor
    class_option :state, type: :string, desc: "Path to the source state file. Default is \"terraform.tfstate\""
    class_option :"state-out", type: :string, desc: "Path to the destination state file to write to. If this isn't specified, the source state file will be used. This can be a new or existing path"
    class_option :tfstate, type: :boolean, desc: "Generate tfstate"

    desc "downtime", "downtime"
    def downtime
    end

    desc "monitor", "monitor"
    def monitor
    end

    desc "timeboard", "timeboard"
    def timeboard
    end

    desc "screenboard", "screenboard"
    def screenboard
    end

    desc "metric_metadata", "metric_metadata"
    def metric_metadata
    end

    desc "user", "user"
    def user
    end
  end
end
