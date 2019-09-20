class UserBet < ApplicationRecord
    belongs_to :match
    validates :name, presence: true
    validates :bet, presence: true, numericality: { greater_than: 5 }
end
