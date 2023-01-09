class BooksController < ApplicationController

  def new
   @Book = Book.new
  end

  def create
    book = Book.new(book_params)
    book.save
    redirect_to '/books'
  end


  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
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

    
  private
  
  def book_params
    params.require(:book).permit(:title, :body)
  end


end

