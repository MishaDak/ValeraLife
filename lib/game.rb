# frozen_string_literal: true

require 'yaml'
require_relative 'valera'
require_relative 'states/load_configs'
require_relative 'states/leave_game'

class Game
  def run
    state = GameStates::LoadConfigs.new

    until state.is_a? GameStates::LeaveGame
      state.render
      state = state.next
    end
  end
end
