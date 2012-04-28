class Admin::ThemesController < ApplicationController
  
  before_filter :authenticate_user!
  
  layout 'admin'

  def index
    @templates = Admin::Component.template.by_agency(@current_agency.id)
    @components = Admin::Component.by_agency(@current_agency.id)
  end
end
