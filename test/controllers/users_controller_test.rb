# frozen_string_literal: true

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

  test 'should get destroy' do
    get users_destroy_url
    assert_response :success
  end
end
