class Admin::ApplicationController < ApplicationController
  layout "admin_application"
  def login_required
    if logged_in?
      return true
    end
    redirect_to admin_root_path, :notice => ["bạn chưa đăng nhập", "error"]
    return false
  end
end
