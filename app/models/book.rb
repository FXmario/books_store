class Book < ApplicationRecord
  has_one_attached :cover

  validates :title, presence: true 
  validates :noisbn, presence: true, numericality: { only_integer: true }
  validates :writer, presence: true
  validates :description, presence: true 
  validates :publisher, presence: true 
  validates :year, presence: true, numericality: { only_integer: true }
  validates :stock, presence: true, numericality: { only_integer: true }
  validates :price, presence: true, numericality: { only_integer: true }
  validates :selling_price, presence: true, numericality: { only_integer: true }
  validates :ppn, presence: true, numericality: { only_float: true }
  validates :discount, numericality: { only_float: true }
  validates :cover, content_type: { in: %w[image/jpeg image/png image/gif], message: "Must be a valid image format" }, size: { less_than: 5.megabytes, message: "Should be less than 5MB" }

  def display_cover
    cover.variant resize_to_limit: [300, 300]
  end

end
