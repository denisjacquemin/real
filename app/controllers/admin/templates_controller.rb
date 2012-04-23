class Admin::TemplatesController < ApplicationController
  
  before_filter :authenticate_user!
  
  layout 'admin'

  # GET /admin/templates/new
  # GET /admin/templates/new.json
  def new
    @admin_template = Admin::Template.new
    @pages = Admin::Page.by_agency(@current_agency.id)
    @templates = Admin::Template.by_agency(@current_agency.id)

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @admin_template }
    end
  end

  # GET /admin/templates/1/edit
  def edit
    @template = Admin::Template.find(params[:id])
    @pages = Admin::Page.by_agency(@current_agency.id)
    @templates = Admin::Template.by_agency(@current_agency.id)
  end

  # POST /admin/templates
  # POST /admin/templates.json
  def create
    @admin_template = Admin::Template.new(params[:admin_template])
    @admin_template.agency_id = @current_agency.id

    respond_to do |format|
      if @admin_template.save
        format.html { redirect_to @admin_template, notice: 'Template was successfully created.' }
        format.json { render json: @admin_template, status: :created, location: @admin_template }
      else
        format.html { render action: "new" }
        format.json { render json: @admin_template.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /admin/templates/1
  # PUT /admin/templates/1.json
  def update
    @admin_template = Admin::Template.find(params[:id])

    respond_to do |format|
      if @admin_template.update_attributes(params[:admin_template])
        format.html { redirect_to @admin_template, notice: 'Template was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @admin_template.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/templates/1
  # DELETE /admin/templates/1.json
  def destroy
    @admin_template = Admin::Template.find(params[:id])
    @admin_template.destroy

    respond_to do |format|
      format.html { redirect_to admin_templates_url }
      format.json { head :no_content }
    end
  end
end
