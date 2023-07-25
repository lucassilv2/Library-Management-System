class AuthorsController < ApplicationController
  def create
    author = Author.new(author_params)
    if author.save
      render json: author, status: :created
    else
      render json: author.errors, status: :unprocessable_entity
    end
  end

  def destroy
    author = Author.find(params[:id])
    if author.books.empty?
      author.destroy
      render json: {}, status: :no_content
    else
      render json: { error: "Author has books" }, status: :unprocessable_entity
    end
  end

  def update
    author = Author.find(params[:id])
    if author.update(author_params)
      render json: author, status: :ok
    else
      render json: author.errors, status: :unprocessable_entity
    end
  end

  def get
    author = Author.find(params[:id])
    render json: author, status: :ok
  end

  def get_books
    author = Author.find(params[:id])
    render json: author.books, status: :ok
  end

  def associate_book
    author = Author.find(params[:id])
    book = Book.find(params[:book_id])
    author.books << book
    render json: author, status: :ok
  end

  def disassociate_book
    author = Author.find(params[:id])
    book = Book.find(params[:book_id])
    author.books.delete(book)
    render json: author, status: :ok
  end

  def list
    authors = Author.all
    render json: authors, status: :ok
  end

  private

  def author_params
    params.require(:author).permit(:name, :birth_date, :country_of_origin)
  end
end
