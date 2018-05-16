class Admin::CategoriesController < Admin::ApplicationController
  before_action :login_required, only: [:index]
  def index
    @categories = Category.all
  end
end
