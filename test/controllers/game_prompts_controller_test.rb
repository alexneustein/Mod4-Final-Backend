require 'test_helper'

class GamePromptsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @game_prompt = game_prompts(:one)
  end

  test "should get index" do
    get game_prompts_url, as: :json
    assert_response :success
  end

  test "should create game_prompt" do
    assert_difference('GamePrompt.count') do
      post game_prompts_url, params: { game_prompt: { game_id: @game_prompt.game_id, prompt_id: @game_prompt.prompt_id } }, as: :json
    end

    assert_response 201
  end

  test "should show game_prompt" do
    get game_prompt_url(@game_prompt), as: :json
    assert_response :success
  end

  test "should update game_prompt" do
    patch game_prompt_url(@game_prompt), params: { game_prompt: { game_id: @game_prompt.game_id, prompt_id: @game_prompt.prompt_id } }, as: :json
    assert_response 200
  end

  test "should destroy game_prompt" do
    assert_difference('GamePrompt.count', -1) do
      delete game_prompt_url(@game_prompt), as: :json
    end

    assert_response 204
  end
end
