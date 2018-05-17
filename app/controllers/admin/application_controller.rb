class Admin::ApplicationController < ApplicationController
  before_action :login_required
  layout "admin_application"
end
