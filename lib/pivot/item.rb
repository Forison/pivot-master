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
      return true if project_code == 'EREC'
      return true if project_code == 'AZR'
      false
    end
    
  end

end
c = Pivot::Item.new(name: "qwert-10", assignee: "smith@example.com", points: 2)
# p c.+
p c.valid?
# d = Pivot::Item.new(name: "EREC-22", assignee: "johndough@example.com", points: 5)
# p d.+