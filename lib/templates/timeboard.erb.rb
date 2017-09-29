resource "datadog_timeboard" "<%= board_name %>" {
  title       = "<%= board["title"] %>"
  description = "<%= board["description"] %>"
  read_only   = <%= board["read_only"] %>

  <%- if !board["template_variables"].nil? && board["template_variables"].count > 0 -%>
    <%- board["template_variables"].each do |template_variable| -%>
    template_variable {
      name    = "<%= template_variable["name"] %>"
      prefix  = "<%= template_variable["prefix"] %>"
      default = "<%= template_variable["default"] %>"
    }
    <%- end -%>
  <%- end -%>

  <%- if board["graphs"].count > 0 -%>
    <%- board["graphs"].each do |graph| -%>
    graph {
      title = "<%= graph["title"] %>"
      viz   = "<%= graph["definition"]["viz"] %>"
      <%- if !graph["definition"]["autoscale"].nil? -%>
      autoscale = "<%= graph["definition"]["autoscale"] %>"
      <%- end -%>

      <%- graph["definition"]["requests"].each do |request| -%>
      request {
        q  = "<%= request["q"] %>"
        <%- unless request["aggregator"].nil? -%>
        aggregator = "<%= request["aggregator"] %>"
        <%- end -%>
        <%- unless request["stacked"].nil? -%>
        stacked = "<%= request["stacked"] %>"
        <%- end -%>
        <%- unless request["type"].nil? -%>
        type = "<%= request["type"] %>"
        <%- end -%>
        <%- unless request["style"].nil? -%>
        style = {
          <%- unless request["style"]["width"].nil? -%>
          width = "<%= request["style"]["width"] %>"
          <%- end -%>
          <%- unless request["style"]["type"].nil? -%>
          type = "<%= request["style"]["type"] %>"
          <%- end -%>
          <%- unless request["style"]["palette"].nil? -%>
          palette = "<%= request["style"]["palette"] %>"
          <%- end -%>
        }
        <%- end -%>
      }
      <%- end -%>
      <%- if !graph["definition"]["events"].nil? -%>
      events = "<%= graph["definition"]["events"] %>"
      <%- end -%>
      <%- if !graph["definition"]["precision"].nil? -%>
      precision = "<%= graph["definition"]["precision"] %>"
      <%- end -%>
      <%- if !graph["definition"]["custom_unit"].nil? -%>
      custom_unit = "<%= graph["definition"]["custom_unit"] %>"
      <%- end -%>
      <%- if !graph["definition"]["text_align"].nil? -%>
      text_align = "<%= graph["definition"]["text_align"] %>"
      <%- end -%>
      <%- unless graph["definition"]["style"].nil? -%>
      style = {
        <%- unless graph["definition"]["style"]["palette"].nil? -%>
        palette = "<%= graph["definition"]["style"]["palette"] %>"
        <%- end -%>
        <%- unless graph["definition"]["style"]["palette_flip"].nil? -%>
        palette_flip = "<%= graph["definition"]["style"]["palette_flip"] %>"
        <%- end -%>
      }
      <%- end -%>
      <%- unless graph["definition"]["group"].nil? -%>
      group = "<%= graph["definition"]["group"] %>"
      <%- end -%>
      <%- unless graph["definition"]["include_no_metric_hosts"].nil? -%>
      include_no_metric_hosts = "<%= graph["definition"]["include_no_metric_hosts"] %>"
      <%- end -%>
      <%- unless graph["definition"]["include_ungrouped_hosts"].nil? -%>
      include_ungrouped_hosts = "<%= graph["definition"]["include_ungrouped_hosts"] %>"
      <%- end -%>
      <%- unless graph["definition"]["scope"].nil? -%>
      scope = "<%= graph["definition"]["scope"] %>"
      <%- end -%>
      <%- unless graph["definition"]["yaxis"].nil? -%>
      yaxis = {
        <%- unless graph["definition"]["yaxis"]["min"].nil? -%>
        min = "<%= graph["definition"]["yaxis"]["min"] %>"
        <%- end -%>
        <%- unless graph["definition"]["yaxis"]["max"].nil? -%>
        max = "<%= graph["definition"]["yaxis"]["max"] %>"
        <%- end -%>
        <%- unless graph["definition"]["yaxis"]["scale"].nil? -%>
        scale = "<%= graph["definition"]["yaxis"]["scale"] %>"
        <%- end -%>
      }
      <%- end -%>
      <%- unless graph["definition"]["marker"].nil? -%>
      marker = {
        <%- unless graph["definition"]["marker"]["type"].nil? -%>
        type = "<%= graph["definition"]["marker"]["type"] %>"
        <%- end -%>
        <%- unless graph["definition"]["marker"]["value"].nil? -%>
        value = "<%= graph["definition"]["marker"]["value"] %>"
        <%- end -%>
        <%- unless graph["definition"]["marker"]["label"].nil? -%>
        label = "<%= graph["definition"]["marker"]["label"] %>"
        <%- end -%>
      }
      <%- end -%>
    }
    <%- end -%>
  <%- end -%>
}