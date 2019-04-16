class Category < ApplicationRecord
  validates :name, presence: true
  after_create_commit :log_category_saved_to_db
  has_many :subcategories
  private
  def log_category_saved_to_db
    puts 'Category was saved to database'
  end
end
