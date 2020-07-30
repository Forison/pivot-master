require 'logger'

module Pivot
  class Logger < Logger
    # Code here!
    def initialize(argument)
      @messager = argument
    end
  
    def info(message)
      
    end
  end
end
