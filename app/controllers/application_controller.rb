class ApplicationController < ActionController::Base
  protect_from_forgery
  
  before_filter :current_agency

  private

  def current_agency
    @current_agency = Admin::Agency.find_by_domain(request.host)
  end

end
