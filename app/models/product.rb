class Product < ActiveRecord::Base
  scope :gem, -> { where('category IS NOT NULL')}
  validates :name, presence: true
end
