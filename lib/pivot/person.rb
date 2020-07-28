require_relative './item.rb'
module Pivot
  
  class Person
    include Pivot
    attr_reader :email, :first_name, :last_name
    attr_accessor :items

    def initialize(email: '', first_name: '', last_name: '',items: [])
      @email = email
      @first_name = first_name
      @last_name = last_name
      @items = items
    end
 
    def add_item(item)
      item.singleton_class.module_eval { attr_accessor :assignee }
      item.assignee = @email
      items << item
    end

  end

end
