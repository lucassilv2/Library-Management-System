class BooksController < ApplicationController

  def create
    book = Book.new(book_params)
    if book.save
      render json: book, status: :created
    else
      render json: book.errors, status: :unprocessable_entity
    end
  end

  def destroy
    book = Book.find(params[:id])
    if book.loans.map { |loan| loan.return_date >= Time.now }.all?
      book.authors.clear
      book.destroy
      render json: {}, status: :no_content
    else
      render json: { error: "Book has loans" }, status: :unprocessable_entity
    end
  end

  def update
    book = Book.find(params[:id])
    if book.update(book_params)
      render json: book, status: :ok
    else
      render json: book.errors, status: :unprocessable_entity
    end
  end

  def get
    book = Book.find(params[:id])
    render json: book, status: :ok
  end

  def list
    books = Book.all
    render json: books, status: :ok
  end

  def get_loans
    book = Book.find(params[:id])
    render json: book.loans, status: :ok
  end

  def get_authors
    book = Book.find(params[:id])
    render json: book.authors, status: :ok
  end

  def associate_author
    book = Book.find(params[:id])
    author = Author.find(params[:author_id])
    book.authors << author
    render json: book, status: :ok
  end

  private

  def book_params
    params.require(:book).permit(:title, :ISBN, :publisher, :num_copies)
  end

end
