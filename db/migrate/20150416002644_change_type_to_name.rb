class ChangeTypeToName < ActiveRecord::Migration
  def change
    add_column :categories, :name, :string
    remove_column :categories, :type, :text
  end
end
