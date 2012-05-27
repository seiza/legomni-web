require 'test_helper'

class UserFiguresControllerTest < ActionController::TestCase
  setup do
    @user_figure = user_figures(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_figures)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_figure" do
    assert_difference('UserFigure.count') do
      post :create, user_figure: { count: @user_figure.count, figure_id: @user_figure.figure_id, first_at: @user_figure.first_at, user_id: @user_figure.user_id, wanted: @user_figure.wanted }
    end

    assert_redirected_to user_figure_path(assigns(:user_figure))
  end

  test "should show user_figure" do
    get :show, id: @user_figure
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_figure
    assert_response :success
  end

  test "should update user_figure" do
    put :update, id: @user_figure, user_figure: { count: @user_figure.count, figure_id: @user_figure.figure_id, first_at: @user_figure.first_at, user_id: @user_figure.user_id, wanted: @user_figure.wanted }
    assert_redirected_to user_figure_path(assigns(:user_figure))
  end

  test "should destroy user_figure" do
    assert_difference('UserFigure.count', -1) do
      delete :destroy, id: @user_figure
    end

    assert_redirected_to user_figures_path
  end
end
