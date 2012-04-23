require 'test_helper'

class Admin::TemplatesControllerTest < ActionController::TestCase
  setup do
    @admin_template = admin_templates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_templates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_template" do
    assert_difference('Admin::Template.count') do
      post :create, admin_template: { agency_id: @admin_template.agency_id, content: @admin_template.content, title: @admin_template.title }
    end

    assert_redirected_to admin_template_path(assigns(:admin_template))
  end

  test "should show admin_template" do
    get :show, id: @admin_template
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_template
    assert_response :success
  end

  test "should update admin_template" do
    put :update, id: @admin_template, admin_template: { agency_id: @admin_template.agency_id, content: @admin_template.content, title: @admin_template.title }
    assert_redirected_to admin_template_path(assigns(:admin_template))
  end

  test "should destroy admin_template" do
    assert_difference('Admin::Template.count', -1) do
      delete :destroy, id: @admin_template
    end

    assert_redirected_to admin_templates_path
  end
end
