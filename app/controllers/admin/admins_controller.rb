class Admin::AdminsController < ApplicationController
  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      redirect_to admin_categories_path, :notice => ["Đăng nhập thành công!", "success"]
    else
      redirect_to admin_root_path, :notice => ["Đăng nhập sai!", "error"]
    end
  end
end
