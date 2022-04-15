json.extract! book, :id, :title, :cover, :noisbn, :writer, :description, :publisher, :year, :stock, :price, :selling_price, :ppn, :discount, :created_at, :updated_at
json.url book_url(book, format: :json)
json.cover url_for(book.cover)
