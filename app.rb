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
        res = [1,3,5]

        if @@round == 9
            puts "Game Over! Draw"
            exit
        elsif @@round <9
            for i in res
                if @@b1[i] =='x'&& @@b2[i]=='x'&& @@b3[i] == 'x'
                    puts "Game Over! Player X have WON!"
                    exit
                elsif @@b1[i] =='o'&& @@b2[i]=='o'&& @@b3[i] == 'o'
                    puts "Game Over! Player O have WON!"
                    exit
                end
                puts i
            end


        elsif @@b1[1] == 'o' && @@b1[3]=='o'&& @@b1[5]=='o';
            puts "Game Over! Player O have WON!"
            exit
        elsif @@b2[1] == 'o'&& @@b2[3]=='o'&& @@b2[5]=='o';
            puts "Game Over! Player O have WON!"
            exit
        elsif @@b3[1] == 'o'&& @@b3[3]=='o'&& @@b3[5]=='o';
            puts "Game Over! Player O have WON!"
            exit

        elsif @@b1[1] == 'x'&& @@b1[3]=='x'&& @@b1[5]=='x';
            puts "Game Over! Player X have WON!"
            exit
        elsif @@b2[1] == 'x'&& @@b2[3]=='x'&& @@b2[5]=='x';
            puts "Game Over! Player X have WON!"
            exit
        elsif @@b3[1] == 'x'&& @@b3[3]=='x'&& @@b3[5]=='x';
            puts "Game Over! Player X have WON!"
            exit


        elsif @@b1[1]=='x'&& @@b2[3]=='x'&& @@b3[5]=='x';
            puts "Game Over! Player X have WON!"
            exit
        elsif @@b1[5]=='x'&& @@b2[3]=='x'&& @@b3[1]=='x';
            puts "Game Over! Player X have WON!"
            exit
        else 
            puts "hello"
        end
    end

=begin
    def check_for_win()
        res = [1,3,5]
        if round == '9'
            print  "Game Over! DRAW!"
        elsif for i in res
            if @@b1[i] =='x'&& @@b2[i]=='x'&& @@b3[i] == 'x'
                puts "Game Over! Player X have WON!"
            elsif @@b1[i] =='o'&& @@b2[i]=='o'&& @@b3[i] == 'o'
                puts "Game Over! Player O have WON!"

            elsif @@b1[1] == 'o' && @@b1[3]=='o'&& @@b1[5]=='o';
                puts "Game Over! Player O have WON!"
            elsif @@b2[1] == 'o'&& @@b2[3]=='o'&& @@b2[5]=='o';
                puts "Game Over! Player O have WON!"
            elsif @@b3[1] == 'o'&& @@b3[3]=='o'&& @@b3[5]=='o';
                puts "Game Over! Player O have WON!"

            elsif @@b1[1] == 'x'&& @@b1[3]=='x'&& @@b1[5]=='x';
                puts "Game Over! Player X have WON!"
            elsif @@b2[1] == 'x'&& @@b2[3]=='x'&& @@b2[5]=='x';
                puts "Game Over! Player X have WON!"
            elsif @@b3[1] == 'x'&& @@b3[3]=='x'&& @@b3[5]=='x';
                puts "Game Over! Player X have WON!"

            elsif @@b1[1]=='x'&& @@b2[3]=='x'&& @@b3[5]=='x';
                puts "Game Over! Player X have WON!"
            elsif @@b1[5]=='x'&& @@b2[3]=='x'&& @@b3[1]=='x';
                puts "Game Over! Player X have WON!"

            elsif @@b1[1]=='o'&& @@b2[3]=='o'&& @@b3[5]=='o';
                puts "Game Over! Player O have WON!"
            elsif @@b1[5]=='o'&& @@b2[3]=='o' && @@b3[1]=='o';
                puts "Game Over! Player O have WON!"
            end
        end
    end
=end
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
            check_for_win()
            @@round = @@round + 1
        end
    end
end

start_game = Game.new()
start_game.start_game()
