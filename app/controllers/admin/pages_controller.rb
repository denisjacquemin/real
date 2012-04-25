class Admin::PagesController < ApplicationController

  before_filter :authenticate_user!
  
  layout 'admin'

  # GET /pages/new
  # GET /pages/new.json
  def new
    @pages = Admin::Page.by_agency(@current_agency.id)
    @templates = Admin::Template.by_agency(@current_agency.id)
    @page = Admin::Page.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @page }
    end
  end

  # GET /pages/1/edit
  def edit
    @pages = Admin::Page.by_agency(@current_agency.id)
    @templates = Admin::Template.by_agency(@current_agency.id)
    @page = Admin::Page.find(params[:id])
  end

  # POST /pages
  # POST /pages.json
  def create
    @page = Admin::Page.new(params[:admin_page])
    @page.agency_id = @current_agency.id
    
    respond_to do |format|
      if @page.save
        format.html { redirect_to @page, notice: 'Page was successfully created.' }
        format.json { render json: @page, status: :created, location: @page }
      else
        format.html { render action: "new" }
        format.json { render json: @page.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /pages/1
  # PUT /pages/1.json
  def update
    @page = Admin::Page.find(params[:id])

    respond_to do |format|
      if @page.update_attributes(params[:admin_page])
        format.html { redirect_to edit_admin_page_path(@page), notice: 'Page was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @page.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pages/1
  # DELETE /pages/1.json
  def destroy
    @page = Admin::Page.find(params[:id])
    @page.destroy

    respond_to do |format|
      format.html { redirect_to pages_url }
      format.json { head :no_content }
    end
  end
end
