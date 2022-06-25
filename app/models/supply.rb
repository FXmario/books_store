class Supply < ApplicationRecord
  include Visible

  belongs_to :book
  belongs_to :distributor

  validates :amount, presence: true, numericality: { only_integer: true }

  after_save :increaseBook

  private 
    def increaseBook
      bookID = self.book_id
      bookStock = Book.find(bookID).stock
      total = Supply.find(self.id).amount

      Book.find(bookID).update(stock: bookStock + total)
    end
end
