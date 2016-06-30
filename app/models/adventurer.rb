class Adventurer < ActiveRecord::Base
  belongs_to :users
  has_one :race
  has_one :classe
end
