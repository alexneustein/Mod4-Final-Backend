json.extract! game_prompt, :id, :game_id, :prompt_id, :created_at, :updated_at
json.url game_prompt_url(game_prompt, format: :json)
