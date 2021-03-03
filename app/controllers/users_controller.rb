class UsersController < ApplicationController
  def show
    @books = current_user.books
  end

  def create
    @book = current_user.books.build(books_params)
    if @book.save
      redirect_to "/#{current_user.name}"
    else
      redirect_to root_url
    end
  end

  private
    def books_params
      params.permit(:title,:categoly,:pages,:src)
    end
end
