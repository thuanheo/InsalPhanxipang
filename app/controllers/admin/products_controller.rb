  class Admin::ProductsController < Admin::ApplicationController
    def index
      @categories = Category.all
      if params[:id] != nil
        @products = Product.find_by_products(params[:id]).page(params[:page]).per(12)
      else
        @products = Product.find_by_products(1).page(params[:page]).per(12)
      end
    end
  end
