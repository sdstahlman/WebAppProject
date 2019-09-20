class UserBetsController < ApplicationController
    def create
        @match = Match.find(params[:match_id])
        if @user_bet = @match.user_bets.create(user_bet_params)
            redirect_to match_path(@match)
        else
            render 'matches/show'
        end
        

        if @user_bet["bet"] != nil && @user_bet["bet"] >= 5 && @user_bet["bet"] <= current_user.balance
            current_user.balance -= @user_bet["bet"] # Subracts the bet amount from the user's total balance when the bet is created
            current_user.save! # Saves the user's information (balance)
        end

    end
    
    def destroy
        
        
        @match = Match.find(params[:match_id])
        @bet = @match.user_bets.find(params[:id])
        
        current_user.balance += @bet.bet # Adds bet amount back to the user's balance when the bet entry is deleted
        current_user.save! # Saves the user's information (balance)

        @bet.destroy
        redirect_to match_path(@match)
        
        
    end
    
    private
        def user_bet_params
            params.require(:user_bet).permit(:name, :bet, :side)
        end
end
