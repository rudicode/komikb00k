class PagesController < ApplicationController

  def new
    @page = Page.new
    @book = Book.find(params[:book_id])
  end

  def create
    @book = Book.find(params[:book_id])
    @page = @book.pages.create(page_params)
    redirect_to book_page_path(@book, @page)
  end

  def show
    @page = Page.find(params[:id])
  end

  private

  def page_params
    params.require(:page).permit(:title,:caption,:image_url)
  end

end
