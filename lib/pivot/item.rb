module Pivot
  class Item
    attr_reader :name, :assignee, :points
    def initialize(name: '', assignee: '', points: nil)
      @name = name
      @assignee = assignee
      @points = points
    end

    def + 
    end

    def project_code
    end

    def valid?
    end
    
  end

end
# c = Pivot::Item.new(name: "EREC-10", assignee: "smith@example.com", points: 2)
# p c.name