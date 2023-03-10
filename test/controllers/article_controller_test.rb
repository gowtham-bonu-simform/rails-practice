# frozen_string_literal: true

require 'test_helper'

class ArticleControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get article_index_url
    assert_response :success
  end

  test 'should get show' do
    get article_show_url
    assert_response :success
  end
end
