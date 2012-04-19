class SitesController < ApplicationController
  
  before_filter :current_agency
   
  def current_agency
    @current_agency = Admin::Agency.find_by_domain(request.host)
  end


  # GET /pages/1
  # GET /pages/1.json
  def show
    @page = Admin::Page.by_permalink(params[:permalink], @current_agency.id)[0]
    raise ActiveRecord::RecordNotFound, 'Page not found' if @page.nil?
    
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @page }
    end
  end
end
