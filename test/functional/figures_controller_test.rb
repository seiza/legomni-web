require 'test_helper'

class FiguresControllerTest < ActionController::TestCase
  setup do
    @figure = figures(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:figures)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create figure" do
    assert_difference('Figure.count') do
      post :create, figure: { figure_code: @figure.figure_code, creativity: @figure.creativity, description: @figure.description, name: @figure.name, index: @figure.index, series_code: @figure.series_code, slogan: @figure.slogan, speed: @figure.speed, strength: @figure.strength, url: @figure.url }
    end

    assert_redirected_to figure_path(assigns(:figure))
  end

  test "should show figure" do
    get :show, id: @figure
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @figure
    assert_response :success
  end

  test "should update figure" do
    put :update, id: @figure, figure: { creativity: @figure.creativity, description: @figure.description, name: @figure.name, index: @figure.index, series_code: @figure.series_code, slogan: @figure.slogan, speed: @figure.speed, strength: @figure.strength, url: @figure.url }
    assert_redirected_to figure_path(assigns(:figure))
  end

  test "should destroy figure" do
    assert_difference('Figure.count', -1) do
      delete :destroy, id: @figure
    end

    assert_redirected_to figures_path
  end
end
