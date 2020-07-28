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
    def self.total_points(item, arg = nil)
      count = 0
      if arg.nil?
        tally = {}
        item.each do | hash |
          tally[hash[:assignee]] = hash[:points]
        end
        count = tally.values.reduce(:+)
      else
        item.each { |hash| count += hash[:points] if hash[:assignee]==arg[:assignee] }
      end
      count
    end

    def self.unique_assignees(item)
      all_emails = []
      item.each { | hash | all_emails << hash[:assignee] }
      all_emails.uniq
    end

  end
end