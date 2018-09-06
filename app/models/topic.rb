class Topic < ApplicationRecord

  has_many :prompts
  has_many :games

end
