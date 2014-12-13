require 'test_helper'

class DosDontsControllerTest < ActionController::TestCase
  setup do
    @dos_dont = dos_donts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dos_donts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dos_dont" do
    assert_difference('DosDont.count') do
      post :create, dos_dont: { category: @dos_dont.category, content: @dos_dont.content, title: @dos_dont.title }
    end

    assert_redirected_to dos_dont_path(assigns(:dos_dont))
  end

  test "should show dos_dont" do
    get :show, id: @dos_dont
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dos_dont
    assert_response :success
  end

  test "should update dos_dont" do
    patch :update, id: @dos_dont, dos_dont: { category: @dos_dont.category, content: @dos_dont.content, title: @dos_dont.title }
    assert_redirected_to dos_dont_path(assigns(:dos_dont))
  end

  test "should destroy dos_dont" do
    assert_difference('DosDont.count', -1) do
      delete :destroy, id: @dos_dont
    end

    assert_redirected_to dos_donts_path
  end
end
