class Board

    @@b1 = "| | | |"
    @@b2 = "| | | |"
    @@b3 = "| | | |"

    def board()
    puts @@b1
    puts @@b2
    puts @@b3
    end
    def change_board(current_player, row, column)
        case row
        when 1 
            then case column 
            when 1
                then @@b1[1] = current_player
            when 2
                then @@b1[3] = current_player
            when 3
                then @@b1[5] = current_player
            end
        when 2
            then case column 
            when 1
                then @@b2[1] = current_player
            when 2
                then @@b2[3] = current_player
            when 3
                then @@b2[5] = current_player
            end
        when 3 
            then case column 
            when 1
                then @@b3[1] = current_player
            when 2
                then @@b3[3] = current_player
            when 3
                then @@b3[5] = current_player
            end
                
        end
    end
end


class Player < Board
    @column
    @row
    def ask_for_input()
        puts "enter a row:"
        @row = gets.to_i
        puts "enter a column:"
        @column = gets.to_i
    end
    def current_player(x_o)
        @current_player = x_o
    end    
end
    

class Game < Player
    @@current_player = 'x'
    @@winner = false
    @@round = 0
    def check_for_win()
        if round == '9'
            print  "Game Over! DRAW!"
        elsif @@b1[1],b2
        end
    end
    def start_game()
        board()
        while @@winner == false
            ask_for_input()
            change_board(@@current_player,@row, @column)
            board()
            if @@current_player == 'x'
                @@current_player = 'o'
            else 
                @@current_player = 'x'
            end
        end
    end
end

start_game = Game.new()
start_game.start_game()


#board isplay and change score
#player ask for input and ask board class to display input
# assign current player,
#control the flow of the game
# record score and announce the result