class Admin::CategoriesController < Admin::ApplicationController
  before_action :login_required
  def index
    @categories = Category.all
  end
end
