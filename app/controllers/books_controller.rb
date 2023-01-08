class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def show
    book = Book.find(params[:id])
    book.show
    redirect_to '/books/show'
  end

  def edit
    book = Book.find(params[:id])
    book.edit
    redirect_to '/books/edit'
  end

  def delete
  end

  def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to '/books'
  end


end