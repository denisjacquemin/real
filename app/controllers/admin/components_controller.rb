class Admin::ComponentsController < ApplicationController

  before_filter :authenticate_user!

  layout 'admin'

  # GET /admin/components/new
  # GET /admin/components/new.json
  def new
    @components = Admin::Component.by_agency(@current_agency.id)
    @templates = Admin::Component.template.by_agency(@current_agency.id)
    @component = Admin::Component.new
    @component.component_type_id = params[:type]

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @admin_component }
    end
  end

  # GET /admin/components/1/edit
  def edit
    @components = Admin::Component.by_agency(@current_agency.id)
    @templates = Admin::Component.template.by_agency(@current_agency.id)
    @component = Admin::Component.find(params[:id])
  end

  # POST /admin/components
  # POST /admin/components.json
  def create
    @component = Admin::Component.new(params[:admin_component])
    @component.agency_id = @current_agency.id

    respond_to do |format|
      if @component.save
        format.html { redirect_to edit_admin_component_path(@component), notice: 'Component was successfully created.' }
        format.json { render json: @component, status: :created, location: @component }
      else
        format.html { render action: "new" }
        format.json { render json: @component.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /admin/components/1
  # PUT /admin/components/1.json
  def update
    @component = Admin::Component.find(params[:id])

    respond_to do |format|
      if @component.update_attributes(params[:admin_component])
        format.html { redirect_to edit_admin_component_path(@component), notice: 'Component was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @component.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/components/1
  # DELETE /admin/components/1.json
  def destroy
    @admin_component = Admin::Component.find(params[:id])
    @admin_component.destroy

    respond_to do |format|
      format.html { redirect_to admin_components_url }
      format.json { head :no_content }
    end
  end
end
