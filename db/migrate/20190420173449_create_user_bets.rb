class CreateUserBets < ActiveRecord::Migration[5.2]
  def change
    create_table :user_bets do |t|
      t.string :name
      t.decimal :bet
      t.references :match, foreign_key: true

      t.timestamps
    end
  end
end
