module Pivot
  class Item
    attr_reader :name, :assignee, :points
    def initialize(name: '', assignee: '', points: 0)
      @name = name
      @assignee = assignee
      @points = points
    end

    def + 
  
    end

    def project_code
      code_list = @name.split('-')
      code_list[0]
    end

    def valid?
    end
    
  end

end
