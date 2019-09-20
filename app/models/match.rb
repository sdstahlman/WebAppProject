class Match < ApplicationRecord
    has_many :user_bets, dependent: :destroy
    validates :league, presence: true, length: {minimum: 3}
    validates :home, presence: true, length: {minimum: 3}
    validates :away, presence: true, length: {minimum: 3}
    validates :home_odds, presence: true, numericality: { greater_than: 0, less_than: 1 }
    validates :away_odds, presence: true, numericality: { greater_than: 0, less_than: 1 }
    validates :date, presence: true
    validates :time, presence: true
    
    validate :date_cannot_be_in_the_past
    
    def date_cannot_be_in_the_past
        if date.present? && date < Date.today
            errors.add(:date, "can't be in the past")
        end
    end
end
