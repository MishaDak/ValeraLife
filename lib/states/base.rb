module GameStates
  class Base
    attr_reader :context

    def initialize(context = {})
      @context = context
    end
  end
end
