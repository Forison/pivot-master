require_relative './item.rb'
require_relative './logger.rb'

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
      logger = Logger.new($stdout)
      item.singleton_class.module_eval { attr_accessor :assignee }
      item.assignee = @email
      items << item
      yield logger.info "item added" if block_given?
    end

  end

end