class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.text :type

      t.timestamps null: false
    end
  end
end
