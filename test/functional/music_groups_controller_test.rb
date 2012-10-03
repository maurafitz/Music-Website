require 'test_helper'

class MusicGroupsControllerTest < ActionController::TestCase
  setup do
    @music_group = music_groups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:music_groups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create music_group" do
    assert_difference('MusicGroup.count') do
      post :create, music_group: { date_formed: @music_group.date_formed, description: @music_group.description, location_city: @music_group.location_city, location_state: @music_group.location_state, name: @music_group.name, profile_photo_id: @music_group.profile_photo_id }
    end

    assert_redirected_to music_group_path(assigns(:music_group))
  end

  test "should show music_group" do
    get :show, id: @music_group
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @music_group
    assert_response :success
  end

  test "should update music_group" do
    put :update, id: @music_group, music_group: { date_formed: @music_group.date_formed, description: @music_group.description, location_city: @music_group.location_city, location_state: @music_group.location_state, name: @music_group.name, profile_photo_id: @music_group.profile_photo_id }
    assert_redirected_to music_group_path(assigns(:music_group))
  end

  test "should destroy music_group" do
    assert_difference('MusicGroup.count', -1) do
      delete :destroy, id: @music_group
    end

    assert_redirected_to music_groups_path
  end
end
