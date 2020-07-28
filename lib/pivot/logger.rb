require 'logger'

module Pivot
  class Logger
    # Code here!
    def initialize(arg)
    end
  end
  
end
p Pivot::Logger.new($stdout).class.superclass