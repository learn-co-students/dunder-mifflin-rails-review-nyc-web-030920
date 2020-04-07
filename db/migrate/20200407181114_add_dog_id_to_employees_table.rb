class AddDogIdToEmployeesTable < ActiveRecord::Migration[5.1]
  def change
    add_column :employees, :dog_id, :integer
    remove_column :employees, :dog
  end
end
