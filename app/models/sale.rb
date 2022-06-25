class Sale < ApplicationRecord
  include Visible

  belongs_to :book
  belongs_to :cashier

  validates :quantity, presence: true, numericality: { only_integer: true }
  validates :total, presence: true, numericality: { only_integer: true }
  validates :date, presence: true

  after_save :decreaseStock

  private 
    def decreaseStock
      bookID = self.book_id
      bookStock = Book.find(bookID).stock
      saleQuantity = Sale.find(id).quantity
      saleTotal = Sale.find(id).total

      Book.find(bookID).update(stock: bookStock - saleQuantity)
    end
end
