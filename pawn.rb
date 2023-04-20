require_relative "piece.rb"

class Pawn < Piece
    attr_reader :first_move
    def initialize(color,board,pos)
        super(color,board,pos)
        @first_move = true
    end

    def symbol
        "♙"
    end

    def forward_steps
        moves = []
        x,y = self.pos
        if self.color == :White && @first_move
            moves << [(x-2),y]
        end
        if self.color == :Black && @first_move
            moves << [(x+2),y]
        end
        self.color == :White ? moves << [(x-1),y] : moves << [(x+1),y]
    end

    def capture
        capture_return = []
        x,y = self.pos
        if self.color == :White
            if board.rows[x-1][y+1].color == :Black
                capture_return << [x-1,y+1]
            elsif board.rows[x-1][y-1].color == :Black
                capture_return << [x-1,y-1]
            end
        else
            if board.rows[x+1][y+1].color == :White
                capture_return << [x+1,y+1]
            elsif board.rows[x+1][y-1].color == :White
                capture_return << [x+1,y-1]
            end
        end
        return capture_return
    end

    def moves
        moves = forward_steps.concat(capture)
    end
    # private
end

# self.color == white ? moves << [-1,0] : moves << [1,0]
# self.first_move && self.color == white ? moves << [-2,0] : moves << [2,0]




# white  [-1,0]   attack [-1,-1] [-1,1]  1st [-2,0]
# blk [1,0]       attack [1,-1] [1,1]   1st [2,0]
