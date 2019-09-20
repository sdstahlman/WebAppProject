class AddSideToUserBets < ActiveRecord::Migration[5.2]
  def change
    add_column :user_bets, :side, :string
  end
end
