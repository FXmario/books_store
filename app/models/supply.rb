class Supply < ApplicationRecord
  scope :recent, -> { order(id: 'desc' ) }

  belongs_to :book
  belongs_to :distributor

  validates :amount, presence: true, numericality: { only_integer: true }

  after_save :increase_book

  private 
    def increase_book
      bookID = self.book_id
      bookStock = Book.find(bookID).stock
      total = Supply.find(self.id).amount

      Book.find(bookID).update(stock: bookStock + total)
    end
end
