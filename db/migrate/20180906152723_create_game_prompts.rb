class CreateGamePrompts < ActiveRecord::Migration[5.2]
  def change
    create_table :game_prompts do |t|
      t.integer :game_id
      t.integer :prompt_id

      t.timestamps
    end
  end
end
