require "test_helper"

class AttractionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @attraction = attractions(:one)
  end

  test "should get index" do
    get attractions_url, as: :json
    assert_response :success
  end

  test "should create attraction" do
    assert_difference('Attraction.count') do
      post attractions_url, params: { attraction: { attraction_name: @attraction.attraction_name, channel_id: @attraction.channel_id, description: @attraction.description, kind_id: @attraction.kind_id, medium_id: @attraction.medium_id, transmission_date: @attraction.transmission_date } }, as: :json
    end

    assert_response 201
  end

  test "should show attraction" do
    get attraction_url(@attraction), as: :json
    assert_response :success
  end

  test "should update attraction" do
    patch attraction_url(@attraction), params: { attraction: { attraction_name: @attraction.attraction_name, channel_id: @attraction.channel_id, description: @attraction.description, kind_id: @attraction.kind_id, medium_id: @attraction.medium_id, transmission_date: @attraction.transmission_date } }, as: :json
    assert_response 200
  end

  test "should destroy attraction" do
    assert_difference('Attraction.count', -1) do
      delete attraction_url(@attraction), as: :json
    end

    assert_response 204
  end
end
