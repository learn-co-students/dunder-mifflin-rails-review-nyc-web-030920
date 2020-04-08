class Dog < ApplicationRecord
    has_many :employees

  def self.most_owners
    self.all.sort_by do |dog| 
      dog.employees.count
    end.reverse
  end
end
