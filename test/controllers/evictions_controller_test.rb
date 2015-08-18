require 'test_helper'

class EvictionsControllerTest < ActionController::TestCase
  setup do
    @eviction = evictions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:evictions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create eviction" do
    assert_difference('Eviction.count') do
      post :create, eviction: { address: @eviction.address, case: @eviction.case, city: @eviction.city, defendant: @eviction.defendant, ejected: @eviction.ejected, h_s_v: @eviction.h_s_v, phone: @eviction.phone, plantiff: @eviction.plantiff, scheduled: @eviction.scheduled, state: @eviction.state, zip: @eviction.zip }
    end

    assert_redirected_to eviction_path(assigns(:eviction))
  end

  test "should show eviction" do
    get :show, id: @eviction
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @eviction
    assert_response :success
  end

  test "should update eviction" do
    patch :update, id: @eviction, eviction: { address: @eviction.address, case: @eviction.case, city: @eviction.city, defendant: @eviction.defendant, ejected: @eviction.ejected, h_s_v: @eviction.h_s_v, phone: @eviction.phone, plantiff: @eviction.plantiff, scheduled: @eviction.scheduled, state: @eviction.state, zip: @eviction.zip }
    assert_redirected_to eviction_path(assigns(:eviction))
  end

  test "should destroy eviction" do
    assert_difference('Eviction.count', -1) do
      delete :destroy, id: @eviction
    end

    assert_redirected_to evictions_path
  end
end
