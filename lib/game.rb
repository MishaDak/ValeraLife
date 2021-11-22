require 'yaml'
require_relative 'valera'
require_relative 'states/load_configs'

class Game
  def run
    state = GameStates::LoadConfigs.new

    loop do
      state.render
      state = state.next
    end
  end
end
