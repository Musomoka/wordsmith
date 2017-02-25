require 'test_helper'

  class DictionaryControllerTest < ActionDispatch::IntegrationTest
   
        def setup
          @base_title = "www.wordsmith.com"
        end
        
        test "should get index" do
          get root_url
          assert_response :success
          assert_select "title", "Home | #{@base_title}"
        end
  end