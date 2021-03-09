class UsersController < ApplicationController
  def show
    @q = current_user.books.ransack(params[:q])
    @book_all = current_user.books
    #@books = Kaminari.paginate_array(current_user.books).page(params[:page]).per(6)
    @books = @q.result(distinct: true).page(params[:page]).per(6)
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
