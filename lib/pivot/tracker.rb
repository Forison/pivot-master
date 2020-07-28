module Pivot
  class Tracker

    def self.count(item)
      item.size
    end

    def self.item_for(item, arg)
      result = ''
      item.each do |hash|
        if (hash[:assignee]==arg)
          result = hash
        end
      end
      result
    end

    def self.pivoted?(item, arg)
      item.each do |hash|
        return true if (hash[:assignee]==arg)
      end
      false
    end
    def self.total_points
    end
    def self.unique_assignees
    end
  end
end
items = [
  { name: "EREC-10", assignee: 'smith@example.com', points: 2 },
  { name: "EREC-21", assignee: 'johndough@example.com',  points: 4},
  { name: "EREC-32", assignee: 'cesar@example.com',  points: 3},
  { name: "EREC-11", assignee: 'bruno@example.com', points: 5 },
  { name: "EREC-12", assignee: 'cesar@example.com',  points: 3},
  { name: "EREC-13", assignee: 'genericman@example.com', points: 2},
  { name: "EREC-14", assignee: 'johndough@example.com',  points: 1}
]
p Pivot::Tracker.pivoted?(items, "cesar@example.com")