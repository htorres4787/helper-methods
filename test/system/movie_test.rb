require "test_helper"

class MovieTest < ActionDispatch::IntegrationTest
  # TODO: try adding a test that checks to make sure the URL /movies has an <h1>element on it
  test "the page has a h1 element" do
    get "/movies"
    assert_response :success
    assert_select "h1", "List of all movies"
  end

  # TODO: try adding a test to make sure the URL /movies has <a> link with 'Add a new movie'
  test "the page has a a element with text 'Add a new movie'" do
    get "/movies"
    assert_response :success
    assert_select "a", "Add a new movie"
  end
end
