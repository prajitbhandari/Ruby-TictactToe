class Game
    def leftDiagonal(board,grid_size)
        lcount=1;
        for i in 0...grid_size-1 do
            for j in 0...grid_size-1 do
                if(i== j)
                    if((board[i][j]==board[i+1][j+1]))
                        lcount=lcount+1;
                        if(lcount==grid_size)
                            Result.new.result(board[i][j],board,grid_size);
                            return true;
                            break;
                        end	
                    end
                end		
            end												
        end
    end

    def rightDiagonal(board,grid_size)
        rcount=1;
        for i in 0...grid_size-1 do
            for j in 0..grid_size-1  do
                if(i+j==grid_size-1)
                    if(board[i][j]!="")
                        if((board[i][j]==board[i+1][j-1]))
                            rcount=rcount+1;
                            if(rcount==grid_size)
                                Result.new.result(board[i][j],board,grid_size);
                                return true;
                                break;
                            end	
                        end
                    end
                end		         
            end
        end
    end

    def checkRow(board,grid_size)
        xcount=1;
        ycount=1;
        for i in 0..grid_size-1 do
            for j in 0...grid_size-1 do
                if((board[i][j]=="X" && board[i][j+1]=="X"))      
                    xcount=xcount+1;
                    puts xcount
                    if(xcount==grid_size)
                        Result.new.result(board[i][j],board,grid_size);
                        return true;
                        break;
                    end 
                elsif((board[i][j]=="O" && board[i][j+1]=="O"))  
                    ycount=ycount+1;
                    puts ycount
                    if(ycount==grid_size)
                        Result.new.result(board[i][j],board,grid_size);
                        return true;
                        break;
                    end
                end
    
            end
            xcount=1;
            ycount=1;
    
        end
    end
    
    def checkColumn(board,grid_size)
        xcount=1;
        ycount=1;
        for i in 0..grid_size-1 do
            for j in 0...grid_size-1 do
                if((board[j][i]=="X" && board[j+1][i]=="X"))    
                    xcount=xcount+1;
                    if(xcount==grid_size)
                        Result.new.result(board[j][i],board,grid_size);
                        return true;
                        break;
                    end
                elsif((board[j][i]=="O" && board[j+1][i]=="O"))  
                    ycount=ycount+1;
                    if(ycount==grid_size)
                        Result.new.result(board[j][i],board,grid_size);
                        return true;
                        break;
                    end																								
                end
            end
            xcount=1;
            ycount=1;												
    
        end
    
    end

    game=Game.new
    def checkDraw(board,counter,grid_size)
        if(counter==grid_size*grid_size)

            if(game.leftDiagonal(board,grid_size)!=true ||
                game.rightDiagonal(board,grid_size)!=true ||
                game.checkRow(board,grid_size)!=true ||
                game.checkColumn(board,grid_size)!=true
                )
                puts 
                puts "Game is Tied";
            end
        end
    
    end

end
 