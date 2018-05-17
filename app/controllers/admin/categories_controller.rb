class Admin::CategoriesController < Admin::ApplicationController
  def index
    @categories = Category.all.page(params[:page]).per(5)
  end
end
