  class Admin::ProductsController < Admin::ApplicationController
    def index
      @categories = Category.all
      if params[:category_id] != nil
        @products = Product.find_by_products(params[:category_id]).page(params[:page]).per(12)
      else
        @products = Product.find_by_products(1).page(params[:page]).per(12)
      end
    end

    def destroy
      @products = Product.find_by id: params[:product_id]
      if @products.destroy
        flash[:notice] = [t("admin.products.notice_delete"), "success"]
        if params[:category_id] != nil
          @products = Product.find_by_products(params[:category_id]).page(params[:page]).per(12)
        else
          @products = Product.find_by_products(1).page(params[:page]).per(12)
        end
        params[:id] = ""
      end
    end
  end
