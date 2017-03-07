require 'test_helper'

class LanguagesControllerTest < ActionDispatch::IntegrationTest
  

  setup do
    @language = languages(:one)
  end

  test "should get language  index" do
    get languages_url
    assert_response :success
  end

  test "should get new" do
    get new_language_url
    assert_response :success
  end

  
  test "should create language" do
    assert_difference('Language.count')
    assert_redirected_to language_url(@language)
  
 
  
  end


  test "should show language" do
    get language_url(@language)
    assert_response :success
  end

  test "should get language  edit" do
    get edit_language_url(@language)
    assert_response :success
  end

  test "should update language" do
    patch language_url(@language), params: { language: { name: 'english update', country: 'england update', description: ' update Spoken by people from britain and uk island.' } }
  assert_redirected_to language_url(@language)
  assert_equal 'Language was successfully updated.', flash[:notice]
  end

  test "should destroy language" do
    assert_difference('Language.count', -1) do
      delete language_url
    end

    assert_redirected_to languages_url
  end
end
