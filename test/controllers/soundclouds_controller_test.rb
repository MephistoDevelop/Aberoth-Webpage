# frozen_string_literal: true

require 'test_helper'

class SoundcloudsControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get soundclouds_index_url
    assert_response :success
  end
end
