class GameSerializer < ActiveModel::Serializer
  attributes :id, :players, :topic, :prompts
end
