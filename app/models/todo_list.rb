class TodoList < ActiveRecord::Base
  has_many :todos
  attr_accessible :name
end
