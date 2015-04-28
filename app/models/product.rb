class Product < ActiveRecord::Base
  belongs_to :category
  validates :name, presence: true

  # include_root_in_json = false
end
