class Todo < ActiveRecord::Base
  belongs_to :todo_list
  attr_accessible :name
end
