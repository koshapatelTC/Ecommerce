class Subcategory < ApplicationRecord
  belongs_to :Category
  has_one_attached :image
  validates :name, presence: true
  after_create_commit :log_sub_category_saved_to_db

  private
  def log_sub_category_saved_to_db
    puts 'SubCategory was saved to database'
  end
end
