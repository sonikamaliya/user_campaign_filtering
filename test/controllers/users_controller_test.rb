require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get users_index_url
    assert_response :success
  end

  test 'should get new' do
    get users_new_url
    assert_response :success
  end

  test 'should get create' do
    get users_create_url
    assert_response :success
  end

  test 'should get uodate' do
    get users_uodate_url
    assert_response :success
  end

  test 'should get delete' do
    get users_delete_url
    assert_response :success
  end
end
