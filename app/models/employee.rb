class Employee < ApplicationRecord
    belongs_to :dog
    validates :first_name, :last_name, :alias, :title, :office, :dog_id, presence: true
    validates :title, :alias, uniqueness:{case_sensitive: false}
    def name
        self.first_name + " " + self.last_name
    end
end
