class Dog < ApplicationRecord
    has_many :employees, dependent: :destroy


    def self.most_popular
        Employee.select('dog_id, count(dog_id) as frequency').order('frequency desc').group('dog_id').map(&:dog)
    end
end
