class Coin < ActiveRecord::Base
  validates :name, presence: true
end
