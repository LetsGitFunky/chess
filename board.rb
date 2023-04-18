require_relative "piece.rb"

class Board
    attr_reader :rows
    def initialize
        @rows = Array.new(8) { Array.new(8) }
        @rows[0][0] = Piece.new("TestPiece")
        @rows[3][0] = Piece.new("SecondTestPiece")
    end

    def [](pos)
        r,c  = pos
        @rows[r][c]
    end

    def []=(pos, val)
        r,c  = pos
        @rows[r][c] = val
    end

    def print
        @rows.each{|r| p r}
    end

    def move_piece(start_pos, end_pos)
        #check valid position
        if valid_pos?(end_pos) && self[start_pos].is_a?(Piece)
            self[end_pos] = self[start_pos]
            #nil will become NullPiece
            self[start_pos] = nil

            #need to account for if end pos is occupied by same color
            #if end pos is opposite color, attack?
        else
            raise "Not valid move"
        end

    end
    def valid_pos?(pos)
        #check if position is in the board boundaries
        r,c = pos
        r.between?(0,7) && c.between?(0,7)
        #check if position is occupied by same color piece
    end
end

# @rows[0]
# @rows[1] all pawns
# @rows[6] all pawns
# @rows[7]

# rooks = [0][0]; [0][7]; [7][0]; [7][7]
# knights = [0][1]; [0][6]; [1][7]; [6][7]
# bishops = [0][2]; [0][5], [2][7]; [5][7]

b = Board.new
b.move_piece([0,0],[3,0])
b.print
 
