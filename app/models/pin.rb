class Pin < ActiveRecord::Base
  belongs_to :user, through: :board
  belongs_to :board
end
