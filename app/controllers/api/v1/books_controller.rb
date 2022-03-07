class Api::V1::BooksController < ApplicationController
  def search
    render json: BookSerializer.books(LibraryFacade.new(book_params))
  end

  private

  def book_params
    params.permit(:location, :quantity)
  end 
end