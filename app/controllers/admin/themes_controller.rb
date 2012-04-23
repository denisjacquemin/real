class Admin::ThemesController < ApplicationController
  
  before_filter :authenticate_user!
  
  layout 'admin'

  def index
    @pages = Admin::Page.by_agency(@current_agency.id)
    @templates = Admin::Template.by_agency(@current_agency.id)
  end
end
