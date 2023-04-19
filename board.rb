require_relative "piece.rb"

class Board
    attr_reader :rows
    def initialize
        @rows = Array.new(8) { Array.new(8) }
    end

    def populate_board
        @rows[1].each_with_index do |pawn, i|
            @rows[1][i] = Pawn.new(:Black, self, [1,i] )
        end
        @rows[6].each_with_index do |pawn, i|
            @rows[6][i] = Pawn.new(:White, self, [6,i] )
        end
        @rows[0][0] = Rook.new(:Black, self, [0,0])
        @rows[0][1] = Knight.new(:Black, self, [0,1])
        @rows[0][2] = Bishop.new(:Black, self, [0,2])
        @rows[0][3] = Queen.new(:Black, self, [0,3])
        @rows[0][4] = King.new(:Black, self, [0,4])
        @rows[0][5] = Bishop.new(:Black, self, [0,5])
        @rows[0][6] = Knight.new(:Black, self, [0,6])
        @rows[0][7] = Rook.new(:Black, self, [0,7])

        @rows[7][0] = Rook.new(:White, self, [7,0])
        @rows[7][1] = Knight.new(:White, self, [7,1])
        @rows[7][2] = Bishop.new(:White, self, [7,2])
        @rows[7][3] = Queen.new(:White, self, [7,3])
        @rows[7][4] = King.new(:White, self, [7,4])
        @rows[7][5] = Bishop.new(:White, self, [7,5])
        @rows[7][6] = Knight.new(:White, self, [7,6])
        @rows[7][7] = Rook.new(:White, self, [7,7])
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
        print_arr = []
        @rows.each do |r|
            r.each do |space|
                print_arr << space.symbol if !space.nil?
            end
        end
        puts print_arr.join(" ")
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

# b = Board.new
# b.move_piece([0,0],[3,0])
# b.print
