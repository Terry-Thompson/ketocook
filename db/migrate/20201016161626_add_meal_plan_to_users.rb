class AddMealPlanToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :meal_plan, :text, :default => "" 
  end
end
