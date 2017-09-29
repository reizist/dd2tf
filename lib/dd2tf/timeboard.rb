module Dd2tf
  class Timeboard < Base
    def output
      results = []
      board_ids = @client.get_dashboards[1]["dashes"].map{|board| board["id"]}
      board_ids.each do |board_id|
        board = @client.get_dashboard(board_id)[1]["dash"]
        board_name = board["title"].underscore.gsub(' ', '_')
        renderer = renderer()
        results << renderer.result(binding)
      end

      results
    end
  end
end