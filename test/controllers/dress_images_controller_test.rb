require 'test_helper'

class DressImagesControllerTest < ActionController::TestCase
  setup do
    @dress_image = dress_images(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dress_images)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dress_image" do
    assert_difference('DressImage.count') do
      post :create, dress_image: { dress_id: @dress_image.dress_id, image: @dress_image.image }
    end

    assert_redirected_to dress_image_path(assigns(:dress_image))
  end

  test "should show dress_image" do
    get :show, id: @dress_image
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dress_image
    assert_response :success
  end

  test "should update dress_image" do
    patch :update, id: @dress_image, dress_image: { dress_id: @dress_image.dress_id, image: @dress_image.image }
    assert_redirected_to dress_image_path(assigns(:dress_image))
  end

  test "should destroy dress_image" do
    assert_difference('DressImage.count', -1) do
      delete :destroy, id: @dress_image
    end

    assert_redirected_to dress_images_path
  end
end
