class Pawn < Piece
    PAWN_DIRS = [1,0],[-1,0]
    # symbol method? initialize? getter?
    def symbol
        "♙"
    end


    private
    def move_dirs

    end
end

# white  [-1,0]   attack [-1,-1] [-1,1]  1st [-2,0]
# blk [1,0]       attack [1,-1] [1,1]   1st [2,0]


attack []
