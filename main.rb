class Board 
   

    def initialize
        @current_player="X"
    end

    def setCurrentPlayer= cp
        @current_player=cp
    end
    
    def getCurrentPlayer
        return @current_player
    end 

    def show 
        puts "Welcome to Tic Tac Toe Game"
        puts "You are Player X"
        puts "Opponent Player is 0"
        puts "Enter the size of the grid"
        grid_size=(gets.chomp).to_i
        puts "The grid size is #{grid_size}"
        puts

        for x in 0...grid_size do
            for y in 0...grid_size do
                print x,y
                if (y != grid_size-1) 
                    print "  |   "
                end
            end
       
            if (x != grid_size-1)
                print "\n"
                for i in 0...(grid_size + (grid_size * 3)) do
                    print "="
                end
                print "\n"
            else 
                print "\n"
            end
        end
        puts 
        gameCheck(grid_size)
            
    end

    def gameCheck(grid_size)      
        
        board=[];
        for i in 0...grid_size do
            board.push(["",""])
        end          
        a=1
        while(a<=grid_size*grid_size)
            puts
            if(a%2!=0)
                puts "Player X turn"
                 self.setCurrentPlayer="X"
            else 
                puts "Player 0 turn"
                self.setCurrentPlayer="0"
            end
            puts "Enter the mark at available Array index [][]"
            row= (gets.chomp).to_i
            col= (gets.chomp).to_i
            puts "Player selected #{row}"+" "+"#{col} index" 
            puts "Current Player selected is  "+self.getCurrentPlayer
            board[row][col]=self.getCurrentPlayer

            for x in 0...grid_size do
                for y in 0...grid_size do
                    print board[x][y]
                    if (y != grid_size-1) 
                        print "  |   "
                    end
                end
        
                if (x != grid_size-1)
                    print "\n"
                    for i in 0...(grid_size + (grid_size * 3)) do
                        print "="
                    end
                    print "\n"
                else 
                    print "\n"
                end
            end
            a=a+1
        end  # while loop              
    end 
end

 b=Board.new
 b.show


        