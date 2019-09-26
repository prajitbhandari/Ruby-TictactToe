class Result 
    def result(player,board,grid_size)
        puts 
        puts  "Player #{player} wins"
        for i in 1..grid_size*grid_size do
            board.pop(); 	
        end
        exit
    end
end
