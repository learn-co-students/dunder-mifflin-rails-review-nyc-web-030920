class Dog < ApplicationRecord
    has_many :employees

    def ee_count
        self.employees.count
    end
    
end
