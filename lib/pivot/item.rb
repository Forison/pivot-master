module Pivot
  class Item
    attr_reader :name, :assignee, :points
    def initialize(name: '', assignee: '', points: 0)
      @name = name
      @assignee = assignee
      @points = points
    end

    def +(object) 
      @points + (object.points)
    end

    def project_code
      code_list = @name.split('-')
      code_list[0]
    end

    def valid?
      return true if project_code == 'EREC'
      return true if project_code == 'AZR'
      false
    end
    
  end
end