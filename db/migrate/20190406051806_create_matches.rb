class CreateMatches < ActiveRecord::Migration[5.2]
  def change
    create_table :matches do |t|
      t.string :league
      t.string :home
      t.decimal :home_odds
      t.string :away
      t.decimal :away_odds
      t.date :date
      t.time :time

      t.timestamps
    end
  end
end
