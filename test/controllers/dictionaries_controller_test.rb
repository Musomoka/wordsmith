require 'test_helper'

class DictionariesControllerTest < ActionDispatch::IntegrationTest
 test "should get index" do
          get root_url
          assert_response :success
          assert_select "title", "Dictionaries | #{@base_title}"
        end

  # test "the truth" do
  #   assert true
  # end
end
