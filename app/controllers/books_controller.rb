class BooksController < ApplicationController
  before_action :authenticate_author!
  before_action :set_book, only: [:update, :show, :edit, :destroy]
  def index
    @books = current_author.books.order(:id)
  end
  
  def show
  end
  
  def new
    @book = current_author.books.build
    
  end
  
  def edit
    
  end

  def create
    @book = current_author.books.build(book_params)
    if @book.save
      redirect_to book_path(@book)
    else
      render :new
    end
  end

  def update
   
    if @book.update(book_params)
      redirect_to book_path(@book)
    else
      render :edit
    end
  end
  
  def destroy
    
    @boo.destroy
    redirect_to books_path
  end

  private
  def book_params
    params.require(:book). permit(:author, :published_id)
  end
  
  private
  def set_book
    @book = current_author.books.find(params[:id])
  end
end

